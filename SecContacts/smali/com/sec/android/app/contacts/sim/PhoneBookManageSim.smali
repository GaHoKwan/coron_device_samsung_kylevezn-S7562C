.class public Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
.super Ljava/lang/Object;
.source "PhoneBookManageSim.java"


# static fields
.field public static final ADN2_URI:Landroid/net/Uri;

.field static final ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

.field public static final ADN_URI:Landroid/net/Uri;

.field static final DATA_PROJECTION:[Ljava/lang/String;

.field static final DATA_PROJECTION2:[Ljava/lang/String;

.field static final DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

.field public static final DATA_URI:Landroid/net/Uri;

.field public static final RAWCONTACT_URI:Landroid/net/Uri;

.field static final REGISTERINFO_PROJECTION:[Ljava/lang/String;

.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

.field private static isDualStandbyFirstCheck:[Z

.field public static isFirstCheck:Z

.field public static isFirstCheck2:Z

.field public static mAnrFieldCount:I

.field private static mAnrLength:[I

.field private static mAnrLength2:[I

.field private static mAnrMaxIndex:[I

.field private static mAnrMaxIndex2:[I

.field private static mAnrUsedIndex:[I

.field private static mAnrUsedIndex2:[I

.field private static mContext:Landroid/content/Context;

.field private static mCurrentSimState:I

.field private static mCurrentSimState2:I

.field private static mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

.field private static mDualStandbyCurrentSimState:[I

.field private static mDualStandbyEmailLength:[I

.field private static mDualStandbyEmailMaxIndex:[I

.field private static mDualStandbyEmailUsedIndex:[I

.field private static mDualStandbyMaxCount:[I

.field private static mDualStandbyNameLength:[I

.field private static mDualStandbyNumberLength:[I

.field private static mDualStandbySimType:[Ljava/lang/String;

.field private static mDualStandbyUsedCount:[I

.field private static mEmailLength:I

.field private static mEmailLength2:I

.field private static mEmailMaxIndex:I

.field private static mEmailMaxIndex2:I

.field private static mEmailUsedIndex:I

.field private static mEmailUsedIndex2:I

.field private static mMaxCount:I

.field private static mMaxCount2:I

.field private static mNameLength:I

.field private static mNameLength2:I

.field private static mNumberLength:I

.field private static mNumberLength2:I

.field private static mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private static mSim2Type:Ljava/lang/String;

.field private static mSimInfoChanged:Z

.field private static mSimType:Ljava/lang/String;

.field private static mTelMan:Landroid/telephony/TelephonyManager;

.field private static mUsedCount:I

.field private static mUsedCount2:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private final ANRNUMBER:Ljava/lang/String;

.field private final ANRNUMBER_A:Ljava/lang/String;

.field private final ANRNUMBER_B:Ljava/lang/String;

.field private final ANRNUMBER_C:Ljava/lang/String;

.field public final COPY_SUCCESS:I

.field private final EMAIL:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field public final NULL_CONTACT_ERROR:I

.field public final NULL_CURSOR_ERROR:I

.field private final NUMBER:Ljava/lang/String;

.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field public final WRITE_SIM_ERROR:I

.field private mIconChanged:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 87
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    .line 88
    const-string v0, "content://com.android.contacts/data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://com.android.contacts/raw_contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->RAWCONTACT_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    .line 110
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CARD_ID"

    aput-object v1, v0, v6

    const-string v1, "CARD_NAME"

    aput-object v1, v0, v5

    const-string v1, "ICON_INDEX"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->REGISTERINFO_PROJECTION:[Ljava/lang/String;

    .line 123
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isDualStandbyFirstCheck:[Z

    .line 125
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    const/4 v1, 0x0

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbySimType:[Ljava/lang/String;

    .line 127
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyCurrentSimState:[I

    .line 129
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyMaxCount:[I

    .line 130
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyUsedCount:[I

    .line 131
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyNameLength:[I

    .line 132
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyNumberLength:[I

    .line 133
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyEmailLength:[I

    .line 134
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyEmailMaxIndex:[I

    .line 135
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyEmailUsedIndex:[I

    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_primary"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    .line 146
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "name_raw_contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_primary"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const-string v1, "data2"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION2:[Ljava/lang/String;

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 180
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 182
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 184
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 188
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 190
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 191
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 192
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 193
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 194
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 195
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    .line 196
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 198
    new-array v0, v7, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    .line 199
    new-array v0, v7, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    .line 200
    new-array v0, v7, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    .line 208
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 210
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 212
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 213
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 214
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 215
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 216
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    .line 217
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    .line 218
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 221
    new-array v0, v7, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    .line 222
    new-array v0, v7, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    .line 223
    new-array v0, v7, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    .line 231
    sput-boolean v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    return-void

    .line 123
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 127
    nop

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 129
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 130
    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 131
    :array_4
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 132
    :array_5
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 133
    :array_6
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 134
    :array_7
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 135
    :array_8
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 198
    :array_9
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 199
    :array_a
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 200
    :array_b
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 221
    :array_c
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 222
    :array_d
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 223
    :array_e
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "tag"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NAME:Ljava/lang/String;

    .line 79
    const-string v0, "number"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NUMBER:Ljava/lang/String;

    .line 80
    const-string v0, "emails"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->EMAIL:Ljava/lang/String;

    .line 82
    const-string v0, "AnrNumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER:Ljava/lang/String;

    .line 83
    const-string v0, "AnrANumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER_A:Ljava/lang/String;

    .line 84
    const-string v0, "AnrBNumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER_B:Ljava/lang/String;

    .line 85
    const-string v0, "AnrCNumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER_C:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SIM_ZERO:I

    .line 99
    iput v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SIM_ONE:I

    .line 225
    iput v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->COPY_SUCCESS:I

    .line 226
    const/4 v0, -0x3

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NULL_CURSOR_ERROR:I

    .line 227
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NULL_CONTACT_ERROR:I

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->WRITE_SIM_ERROR:I

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    .line 242
    sput-object p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    .line 243
    return-void

    .line 230
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private chkChinese(C)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 804
    const/16 v0, 0x31bf

    if-gt p1, v0, :cond_0

    const/16 v0, 0x31a0

    if-ge p1, v0, :cond_3

    :cond_0
    const v0, 0x9fcf

    if-gt p1, v0, :cond_1

    const/16 v0, 0x4e00

    if-ge p1, v0, :cond_3

    :cond_1
    const v0, 0xfaff

    if-gt p1, v0, :cond_2

    const v0, 0xf900

    if-ge p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2fdf

    if-gt p1, v0, :cond_4

    const/16 v0, 0x2f00

    if-lt p1, v0, :cond_4

    .line 806
    :cond_3
    const/4 v0, 0x1

    .line 808
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chkKorean(C)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 795
    const v0, 0xd7a3

    if-gt p1, v0, :cond_0

    const v0, 0xac00

    if-ge p1, v0, :cond_4

    :cond_0
    const/16 v0, 0x11ff

    if-gt p1, v0, :cond_1

    const/16 v0, 0x1100

    if-ge p1, v0, :cond_4

    :cond_1
    const v0, 0xd7fb

    if-gt p1, v0, :cond_2

    const v0, 0xd7b0

    if-ge p1, v0, :cond_4

    :cond_2
    const v0, 0xa97c

    if-gt p1, v0, :cond_3

    const v0, 0xa960

    if-ge p1, v0, :cond_4

    :cond_3
    const/16 v0, 0x318e

    if-gt p1, v0, :cond_5

    const/16 v0, 0x3130

    if-lt p1, v0, :cond_5

    .line 798
    :cond_4
    const/4 v0, 0x1

    .line 800
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteItemByContactsId(J)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3043
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3044
    .local v0, uri:Landroid/net/Uri;
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3045
    const/4 v1, 0x1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .locals 1
    .parameter "context"

    .prologue
    .line 234
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 237
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    return-object v0
.end method

.method private isWifi()Z
    .locals 1

    .prologue
    .line 2012
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    const/4 v0, 0x1

    .line 2015
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SpecialCharOffset(Ljava/lang/String;)I
    .locals 13
    .parameter "text"

    .prologue
    const/4 v9, 0x0

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, charIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 730
    .local v5, sz:I
    const/4 v1, 0x0

    .local v1, count:I
    const/4 v4, 0x0

    .local v4, one_byte_turksh_char:I
    const/4 v7, 0x0

    .local v7, two_byte_turksh_char:I
    const/4 v6, 0x0

    .local v6, turksh_char_count:I
    const/4 v8, 0x3

    .line 731
    .local v8, ucs_header:I
    const/4 v3, 0x0

    .line 734
    .local v3, isEncodable:Z
    const/4 v10, 0x1

    :try_start_0
    invoke-static {p1, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    const/4 v3, 0x1

    .line 740
    :goto_0
    const-string v10, "PhoneBookManageSim"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpecialCharOffset, isEncodable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    if-nez v3, :cond_1

    .line 760
    :cond_0
    :goto_1
    return v9

    .line 736
    :catch_0
    move-exception v2

    .line 737
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v3, 0x0

    goto :goto_0

    .line 745
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_1
    :goto_2
    if-ge v0, v5, :cond_5

    .line 746
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xc7

    if-ne v10, v11, :cond_3

    .line 747
    add-int/lit8 v6, v6, 0x1

    .line 748
    add-int/lit8 v4, v4, 0x1

    .line 754
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 749
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x11e

    if-eq v10, v11, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x130

    if-ne v10, v11, :cond_2

    .line 750
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 751
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 756
    :cond_5
    const-string v10, "PhoneBookManageSim"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "turksh_char_count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-eqz v6, :cond_0

    .line 760
    sub-int v9, v8, v7

    goto :goto_1
.end method

.method public copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 35
    .parameter "contactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "isActionMove"

    .prologue
    .line 964
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v9

    .line 965
    .local v9, anrConfigValue:I
    const/16 v19, 0x0

    .local v19, dataCursor:Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 967
    .local v24, emailCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_2

    .line 969
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 970
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "emails"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "adn_index"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 978
    :goto_0
    const/16 v29, 0x0

    .line 979
    .local v29, name:Ljava/lang/String;
    const/16 v30, 0x0

    .line 980
    .local v30, number:Ljava/lang/String;
    const/16 v21, 0x0

    .line 983
    .local v21, email:Ljava/lang/String;
    const/4 v8, 0x0

    .line 984
    .local v8, adn_index:Ljava/lang/String;
    const/16 v25, 0x0

    .line 986
    .local v25, email_adn_index:Ljava/lang/String;
    const/4 v11, 0x0

    .line 987
    .local v11, anr_number1:Ljava/lang/String;
    const/4 v12, 0x0

    .line 988
    .local v12, anr_number2:Ljava/lang/String;
    const/4 v13, 0x0

    .line 989
    .local v13, anr_number3:Ljava/lang/String;
    const/4 v14, 0x0

    .line 990
    .local v14, anr_number4:Ljava/lang/String;
    const/4 v10, 0x0

    .line 991
    .local v10, anrNumberCount:I
    const/16 v23, 0x0

    .line 993
    .local v23, emailAddressArray:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_4

    .line 995
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 996
    move-wide/from16 v0, p1

    long-to-int v2, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 998
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 999
    const-string v2, "adn_index"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1003
    :cond_0
    if-eqz v24, :cond_d

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 1004
    :cond_1
    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1005
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1006
    if-eqz v8, :cond_1

    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1007
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1008
    if-eqz v21, :cond_3

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1009
    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 974
    .end local v8           #adn_index:Ljava/lang/String;
    .end local v10           #anrNumberCount:I
    .end local v11           #anr_number1:Ljava/lang/String;
    .end local v12           #anr_number2:Ljava/lang/String;
    .end local v13           #anr_number3:Ljava/lang/String;
    .end local v14           #anr_number4:Ljava/lang/String;
    .end local v21           #email:Ljava/lang/String;
    .end local v23           #emailAddressArray:[Ljava/lang/String;
    .end local v25           #email_adn_index:Ljava/lang/String;
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #number:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_0

    .line 1011
    .restart local v8       #adn_index:Ljava/lang/String;
    .restart local v10       #anrNumberCount:I
    .restart local v11       #anr_number1:Ljava/lang/String;
    .restart local v12       #anr_number2:Ljava/lang/String;
    .restart local v13       #anr_number3:Ljava/lang/String;
    .restart local v14       #anr_number4:Ljava/lang/String;
    .restart local v21       #email:Ljava/lang/String;
    .restart local v23       #emailAddressArray:[Ljava/lang/String;
    .restart local v25       #email_adn_index:Ljava/lang/String;
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #number:Ljava/lang/String;
    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    .line 1017
    :cond_4
    if-eqz v19, :cond_d

    .line 1018
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1019
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_d

    .line 1020
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1022
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1041
    :cond_5
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 1019
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1023
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1025
    if-nez v10, :cond_8

    .line 1026
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1036
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1027
    :cond_8
    const/4 v2, 0x1

    if-ne v10, v2, :cond_9

    if-lez v9, :cond_9

    .line 1028
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1029
    :cond_9
    const/4 v2, 0x2

    if-ne v10, v2, :cond_a

    const/4 v2, 0x3

    if-le v9, v2, :cond_a

    .line 1030
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 1031
    :cond_a
    const/4 v2, 0x3

    if-ne v10, v2, :cond_b

    const/4 v2, 0x3

    if-le v9, v2, :cond_b

    .line 1032
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 1033
    :cond_b
    const/4 v2, 0x4

    if-ne v10, v2, :cond_7

    const/4 v2, 0x3

    if-le v9, v2, :cond_7

    .line 1034
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 1037
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1039
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    .line 1045
    .end local v26           #i:I
    :cond_d
    if-eqz v19, :cond_e

    .line 1046
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v24, :cond_f

    .line 1049
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_f
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1051
    const/4 v2, 0x0

    .line 1175
    :cond_10
    :goto_5
    return v2

    .line 1054
    :cond_11
    const/16 v32, 0x0

    .line 1056
    .local v32, results:[Landroid/content/ContentProviderResult;
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v18

    .line 1058
    .local v18, client:Landroid/content/ContentProviderClient;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v16, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 1062
    .local v31, rawContactIdIndex:I
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1064
    .local v17, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p3, :cond_15

    if-eqz p4, :cond_15

    .line 1065
    const-string v2, "account_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1066
    const-string v2, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1070
    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    if-eqz v29, :cond_12

    .line 1073
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1074
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1075
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1076
    const-string v2, "data2"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1077
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_12
    if-eqz v30, :cond_13

    .line 1080
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1081
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1082
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1083
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1084
    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1085
    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1086
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v23, :cond_16

    .line 1091
    move-object/from16 v15, v23

    .local v15, arr$:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v28, v0

    .local v28, len$:I
    const/16 v27, 0x0

    .local v27, i$:I
    :goto_7
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_17

    aget-object v22, v15, v27

    .line 1092
    .local v22, emailAddress:Ljava/lang/String;
    if-eqz v22, :cond_14

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 1093
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1094
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1095
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1096
    const-string v2, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1097
    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1098
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_14
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 1068
    .end local v15           #arr$:[Ljava/lang/String;
    .end local v22           #emailAddress:Ljava/lang/String;
    .end local v27           #i$:I
    .end local v28           #len$:I
    :cond_15
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_6

    .line 1102
    :cond_16
    if-eqz v21, :cond_17

    .line 1103
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1104
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1105
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1106
    const-string v2, "data2"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1107
    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1108
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_17
    if-eqz v11, :cond_18

    .line 1112
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1113
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1114
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1115
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1116
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1117
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1118
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    :cond_18
    if-eqz v12, :cond_19

    .line 1121
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1122
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1123
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1124
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1125
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1126
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1127
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_19
    if-eqz v13, :cond_1a

    .line 1130
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1131
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1132
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1133
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1134
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1135
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1136
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_1a
    if-eqz v14, :cond_1b

    .line 1139
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1140
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1141
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1142
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1143
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1144
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1145
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_1b
    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v32

    .line 1157
    if-eqz v18, :cond_1c

    .line 1158
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    .line 1161
    :cond_1c
    const-wide/16 v33, -0x1

    .line 1163
    .local v33, retId:J
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v32, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v33

    .line 1167
    :goto_8
    const-wide/16 v2, 0x0

    cmp-long v2, v33, v2

    if-gez v2, :cond_1e

    .line 1168
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1150
    .end local v33           #retId:J
    :catch_0
    move-exception v20

    .line 1151
    .local v20, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1152
    const/4 v2, 0x0

    .line 1157
    if-eqz v18, :cond_10

    .line 1158
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    .line 1153
    .end local v20           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v20

    .line 1154
    .local v20, e:Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1155
    const/4 v2, 0x0

    .line 1157
    if-eqz v18, :cond_10

    .line 1158
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    .line 1157
    .end local v20           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_1d

    .line 1158
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1d
    throw v2

    .line 1164
    .restart local v33       #retId:J
    :catch_2
    move-exception v20

    .line 1165
    .local v20, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 1171
    .end local v20           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1e
    if-eqz p5, :cond_1f

    .line 1172
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 1175
    :cond_1f
    const/4 v2, 0x1

    goto/16 :goto_5
.end method

.method public copyToSim(JLjava/lang/String;I)I
    .locals 33
    .parameter "contactId"
    .parameter "destAccountType"
    .parameter "cursorPosition"

    .prologue
    .line 406
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v11

    .line 407
    .local v11, anrConfigValue:I
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION2:[Ljava/lang/String;

    const-string v5, "account_type=\'vnd.sec.contact.phone\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 411
    .local v16, dataCursor:Landroid/database/Cursor;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v32, values:Landroid/content/ContentValues;
    const-string v24, ""

    .line 414
    .local v24, name:Ljava/lang/String;
    const-string v25, ""

    .line 415
    .local v25, number:Ljava/lang/String;
    const-string v12, ""

    .line 416
    .local v12, anr_number:Ljava/lang/String;
    const-string v8, ""

    .line 417
    .local v8, anrA_number:Ljava/lang/String;
    const-string v9, ""

    .line 418
    .local v9, anrB_number:Ljava/lang/String;
    const-string v10, ""

    .line 419
    .local v10, anrC_number:Ljava/lang/String;
    const-string v18, ""

    .line 421
    .local v18, email:Ljava/lang/String;
    const/16 v26, 0x0

    .line 422
    .local v26, phoneNumberCount:I
    const/16 v27, 0x0

    .line 423
    .local v27, phoneNumberCountAll:I
    const/16 v28, 0x0

    .line 425
    .local v28, phoneSaveNumberCount:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v23

    .line 426
    .local v23, isAnrFull:Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v20

    .line 427
    .local v20, isAnrAFull:Z
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v21

    .line 428
    .local v21, isAnrBFull:Z
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v22

    .line 430
    .local v22, isAnrCFull:Z
    const-string v2, "PhoneBookManageSim"

    const-string v3, " ------------ copyToSIM "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 433
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_13

    .line 434
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 465
    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 433
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 439
    move/from16 v0, v27

    move/from16 v1, p4

    if-lt v0, v1, :cond_3

    .line 440
    if-nez v26, :cond_4

    .line 441
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 456
    :cond_2
    :goto_2
    add-int/lit8 v26, v26, 0x1

    .line 458
    :cond_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 442
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    if-nez v23, :cond_5

    if-lez v11, :cond_5

    .line 443
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 444
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_6

    if-eqz v20, :cond_7

    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    if-nez v20, :cond_8

    :cond_7
    const/4 v2, 0x3

    if-le v11, v2, :cond_8

    .line 446
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 447
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_9

    if-eqz v21, :cond_b

    :cond_9
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_a

    if-eqz v21, :cond_b

    :cond_a
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_c

    if-nez v21, :cond_c

    :cond_b
    const/4 v2, 0x3

    if-le v11, v2, :cond_c

    .line 450
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 451
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_d

    if-eqz v22, :cond_10

    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_e

    if-eqz v22, :cond_10

    :cond_e
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_f

    if-eqz v22, :cond_10

    :cond_f
    const/4 v2, 0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_2

    if-nez v22, :cond_2

    :cond_10
    const/4 v2, 0x3

    if-le v11, v2, :cond_2

    .line 455
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 459
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    const-string v2, "1"

    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    :cond_12
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 467
    :cond_13
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 469
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 470
    const/4 v2, -0x2

    .line 570
    :cond_14
    :goto_3
    return v2

    .line 472
    :cond_15
    if-eqz v24, :cond_17

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    if-le v2, v3, :cond_16

    .line 474
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 476
    :cond_16
    const-string v2, "tag"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_17
    if-eqz v25, :cond_19

    .line 480
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 481
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v2, v3, :cond_18

    .line 482
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 484
    :cond_18
    add-int/lit8 v28, v28, 0x1

    .line 485
    const-string v2, "number"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_19
    if-lez v11, :cond_21

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 489
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 490
    if-eqz v12, :cond_1b

    .line 491
    invoke-static {v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 492
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v2, v3, :cond_1a

    .line 493
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 495
    :cond_1a
    add-int/lit8 v28, v28, 0x1

    .line 496
    const-string v2, "AnrNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_1b
    const/4 v2, 0x3

    if-le v11, v2, :cond_21

    .line 500
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 501
    if-eqz v8, :cond_1d

    .line 502
    invoke-static {v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 503
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v2, v3, :cond_1c

    .line 504
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 506
    :cond_1c
    add-int/lit8 v28, v28, 0x1

    .line 507
    const-string v2, "AnrANumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_1d
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 511
    if-eqz v9, :cond_1f

    .line 512
    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 513
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v2, v3, :cond_1e

    .line 514
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 516
    :cond_1e
    add-int/lit8 v28, v28, 0x1

    .line 517
    const-string v2, "AnrBNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_1f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 521
    if-eqz v10, :cond_21

    .line 522
    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 523
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v2, v3, :cond_20

    .line 524
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 526
    :cond_20
    add-int/lit8 v28, v28, 0x1

    .line 527
    const-string v2, "AnrCNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_21
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v2

    if-nez v2, :cond_23

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    if-le v2, v3, :cond_22

    .line 536
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 538
    :cond_22
    const-string v2, "emails"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_23
    const/16 v29, 0x0

    .line 544
    .local v29, results:[Landroid/content/ContentProviderResult;
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v15

    .line 546
    .local v15, client:Landroid/content/ContentProviderClient;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v13, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 548
    .local v14, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 549
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :try_start_0
    invoke-virtual {v15, v13}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v29

    .line 559
    if-eqz v15, :cond_24

    .line 560
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    .line 564
    :cond_24
    const/4 v2, 0x0

    aget-object v2, v29, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    .line 565
    .local v30, retId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v30, v2

    if-gez v2, :cond_26

    .line 566
    const/4 v2, -0x1

    goto/16 :goto_3

    .line 552
    .end local v30           #retId:J
    :catch_0
    move-exception v17

    .line 554
    .local v17, e:Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 559
    if-eqz v15, :cond_14

    .line 560
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_3

    .line 555
    .end local v17           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v17

    .line 556
    .local v17, e:Landroid/content/OperationApplicationException;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    const/4 v2, -0x1

    .line 559
    if-eqz v15, :cond_14

    .line 560
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_3

    .line 559
    .end local v17           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_25

    .line 560
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    :cond_25
    throw v2

    .restart local v30       #retId:J
    :cond_26
    move/from16 v2, v28

    .line 570
    goto/16 :goto_3
.end method

.method public copyToSim(JLjava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .parameter "contactId"
    .parameter "srcAccountType"
    .parameter "desAccountType"
    .parameter "isActionMove"

    .prologue
    .line 700
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0, p1, p2, p5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JZ)I

    move-result v0

    .line 705
    :goto_0
    return v0

    .line 702
    :cond_0
    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {p0, p1, p2, p5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim2(JZ)I

    move-result v0

    goto :goto_0

    .line 705
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public copyToSim(JZ)I
    .locals 31
    .parameter "contactId"
    .parameter "isActionMove"

    .prologue
    .line 247
    const-wide/16 v10, -0x1

    .line 248
    .local v10, RAW_ID_FOR_NAME:J
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v12

    .line 249
    .local v12, anrConfigValue:I
    sget-object v29, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 250
    .local v29, uri:Landroid/net/Uri;
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v29

    .line 252
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v29

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 255
    .local v17, dataCursor:Landroid/database/Cursor;
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id =\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, v29

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 258
    .local v9, NamedataCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 260
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 261
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 265
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_0
    :goto_0
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v30, values:Landroid/content/ContentValues;
    const-string v24, ""

    .line 272
    .local v24, name:Ljava/lang/String;
    const-string v25, ""

    .line 273
    .local v25, number:Ljava/lang/String;
    const-string v19, ""

    .line 274
    .local v19, email:Ljava/lang/String;
    const-string v13, ""

    .line 275
    .local v13, anr_number:Ljava/lang/String;
    const/16 v21, 0x1

    .line 276
    .local v21, isFirst:Z
    const/16 v22, 0x1

    .line 277
    .local v22, isFirstName:Z
    const/16 v23, 0x1

    .line 279
    .local v23, isSecond:Z
    if-nez v17, :cond_2

    .line 280
    const-string v3, "PhoneBookManageSim"

    const-string v4, "copyToSim : dataCursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v3, -0x3

    .line 401
    :cond_1
    :goto_1
    return v3

    .line 262
    .end local v13           #anr_number:Ljava/lang/String;
    .end local v19           #email:Ljava/lang/String;
    .end local v21           #isFirst:Z
    .end local v22           #isFirstName:Z
    .end local v23           #isSecond:Z
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #number:Ljava/lang/String;
    .end local v30           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v18

    .line 263
    .local v18, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 284
    .restart local v13       #anr_number:Ljava/lang/String;
    .restart local v19       #email:Ljava/lang/String;
    .restart local v21       #isFirst:Z
    .restart local v22       #isFirstName:Z
    .restart local v23       #isSecond:Z
    .restart local v24       #name:Ljava/lang/String;
    .restart local v25       #number:Ljava/lang/String;
    .restart local v30       #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_9

    .line 286
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 288
    if-eqz v22, :cond_4

    .line 290
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 292
    const/16 v22, 0x0

    .line 316
    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 285
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 293
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_3

    .line 294
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_3

    .line 295
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    .line 298
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 300
    if-eqz v21, :cond_6

    .line 301
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 302
    const/16 v21, 0x0

    goto :goto_3

    .line 303
    :cond_6
    if-eqz v23, :cond_7

    if-lez v12, :cond_7

    .line 304
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 305
    const/16 v23, 0x0

    goto :goto_3

    .line 307
    :cond_7
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 308
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto :goto_3

    .line 311
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 314
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 318
    :cond_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 320
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 321
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 323
    :cond_a
    if-eqz v24, :cond_c

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    if-le v3, v4, :cond_b

    .line 325
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 327
    :cond_b
    const-string v3, "tag"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_c
    if-eqz v25, :cond_e

    .line 332
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 333
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v3, v4, :cond_d

    .line 334
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 337
    :cond_d
    const-string v3, "number"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_e
    if-lez v12, :cond_10

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 341
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 342
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lez v3, :cond_10

    .line 343
    if-eqz v13, :cond_10

    .line 345
    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 346
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v3, v4, :cond_f

    .line 347
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 350
    :cond_f
    const-string v3, "AnrNumber"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_10
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v3

    if-nez v3, :cond_12

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    if-le v3, v4, :cond_11

    .line 359
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 361
    :cond_11
    const-string v3, "emails"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_12
    const/16 v26, 0x0

    .line 367
    .local v26, results:[Landroid/content/ContentProviderResult;
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v16

    .line 369
    .local v16, client:Landroid/content/ContentProviderClient;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v14, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 371
    .local v15, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 372
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v26

    .line 382
    if-eqz v16, :cond_13

    .line 383
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    .line 387
    :cond_13
    if-eqz v26, :cond_15

    move-object/from16 v0, v26

    array-length v3, v0

    if-lez v3, :cond_15

    .line 388
    const/4 v3, 0x0

    aget-object v3, v26, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v27

    .line 389
    .local v27, retId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-gez v3, :cond_16

    .line 390
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 375
    .end local v27           #retId:J
    :catch_1
    move-exception v18

    .line 377
    .local v18, e:Landroid/os/RemoteException;
    const/4 v3, -0x1

    .line 382
    if-eqz v16, :cond_1

    .line 383
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 378
    .end local v18           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v18

    .line 379
    .local v18, e:Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    const/4 v3, -0x1

    .line 382
    if-eqz v16, :cond_1

    .line 383
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 382
    .end local v18           #e:Landroid/content/OperationApplicationException;
    :catchall_1
    move-exception v3

    if-eqz v16, :cond_14

    .line 383
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    :cond_14
    throw v3

    .line 393
    :cond_15
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 397
    .restart local v27       #retId:J
    :cond_16
    if-eqz p3, :cond_17

    .line 398
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 401
    :cond_17
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public copyToSim2(JI)I
    .locals 23
    .parameter
    .parameter

    .prologue
    .line 2866
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v13

    .line 2867
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_type=\'vnd.sec.contact.phone\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2871
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2873
    const-string v11, ""

    .line 2874
    const-string v10, ""

    .line 2875
    const-string v9, ""

    .line 2876
    const-string v8, ""

    .line 2877
    const-string v7, ""

    .line 2878
    const-string v6, ""

    .line 2879
    const-string v5, ""

    .line 2881
    const/4 v4, 0x0

    .line 2882
    const/4 v3, 0x0

    .line 2883
    const/4 v12, 0x0

    .line 2885
    const/4 v2, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v16

    .line 2886
    const/4 v2, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v17

    .line 2887
    const/4 v2, 0x2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v18

    .line 2888
    const/4 v2, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v19

    .line 2890
    const-string v2, "PhoneBookManageSim2"

    const-string v20, " ------------ copyToSIM "

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2893
    const/4 v2, 0x0

    move/from16 v22, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move/from16 v11, v22

    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_12

    .line 2894
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "vnd.android.cursor.item/name"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 2896
    const/4 v10, 0x3

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2924
    :cond_0
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 2893
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2897
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 2899
    move/from16 v0, p3

    if-lt v2, v0, :cond_3

    .line 2900
    if-nez v3, :cond_4

    .line 2901
    const/4 v9, 0x3

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2916
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 2918
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2902
    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_5

    if-nez v16, :cond_5

    if-lez v13, :cond_5

    .line 2903
    const/4 v8, 0x3

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 2904
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_6

    if-eqz v17, :cond_7

    :cond_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_8

    if-nez v17, :cond_8

    :cond_7
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v13, v0, :cond_8

    .line 2906
    const/4 v7, 0x3

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 2907
    :cond_8
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_9

    if-eqz v18, :cond_b

    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_a

    if-eqz v18, :cond_b

    :cond_a
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v3, v0, :cond_c

    if-nez v18, :cond_c

    :cond_b
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v13, v0, :cond_c

    .line 2910
    const/4 v6, 0x3

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 2911
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_d

    if-eqz v19, :cond_10

    :cond_d
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_e

    if-eqz v19, :cond_10

    :cond_e
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v3, v0, :cond_f

    if-eqz v19, :cond_10

    :cond_f
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v3, v0, :cond_2

    if-nez v19, :cond_2

    :cond_10
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v13, v0, :cond_2

    .line 2915
    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2919
    :cond_11
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2921
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2922
    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 2926
    :cond_12
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2928
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2929
    const/4 v2, -0x2

    .line 3029
    :cond_13
    :goto_3
    return v2

    .line 2931
    :cond_14
    if-eqz v10, :cond_16

    .line 2932
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    if-le v2, v3, :cond_15

    .line 2933
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2935
    :cond_15
    const-string v2, "tag"

    invoke-virtual {v15, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    :cond_16
    if-eqz v9, :cond_25

    .line 2939
    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2940
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sget v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v3, v9, :cond_17

    .line 2941
    const/4 v3, 0x0

    sget v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2943
    :cond_17
    const/4 v3, 0x1

    .line 2944
    const-string v9, "number"

    invoke-virtual {v15, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    :goto_4
    if-lez v13, :cond_24

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const-string v9, "2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2948
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2949
    if-eqz v8, :cond_19

    .line 2950
    invoke-static {v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2951
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sget v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v8, v9, :cond_18

    .line 2952
    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2954
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 2955
    const-string v8, "AnrNumber"

    invoke-virtual {v15, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    :cond_19
    const/4 v2, 0x3

    if-le v13, v2, :cond_24

    .line 2959
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2960
    if-eqz v7, :cond_1b

    .line 2961
    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2962
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v7, v8, :cond_1a

    .line 2963
    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2965
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    .line 2966
    const-string v7, "AnrANumber"

    invoke-virtual {v15, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    move v2, v3

    .line 2969
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2970
    if-eqz v6, :cond_1d

    .line 2971
    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2972
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v6, v7, :cond_1c

    .line 2973
    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2975
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 2976
    const-string v6, "AnrBNumber"

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    :cond_1d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2980
    if-eqz v5, :cond_1f

    .line 2981
    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2982
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v5, v6, :cond_1e

    .line 2983
    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2985
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 2986
    const-string v5, "AnrCNumber"

    invoke-virtual {v15, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    :cond_1f
    :goto_5
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2993
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v3

    if-nez v3, :cond_21

    .line 2994
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    if-le v3, v5, :cond_20

    .line 2995
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2997
    :cond_20
    const-string v3, "emails"

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    :cond_21
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 3005
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3006
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 3007
    invoke-virtual {v5, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 3008
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3010
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 3018
    if-eqz v3, :cond_22

    .line 3019
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 3023
    :cond_22
    const/4 v3, 0x0

    aget-object v3, v4, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 3024
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_13

    .line 3025
    const/4 v2, -0x1

    goto/16 :goto_3

    .line 3011
    :catch_0
    move-exception v2

    .line 3013
    const/4 v2, -0x1

    .line 3018
    if-eqz v3, :cond_13

    .line 3019
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_3

    .line 3014
    :catch_1
    move-exception v2

    .line 3015
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3016
    const/4 v2, -0x1

    .line 3018
    if-eqz v3, :cond_13

    .line 3019
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_3

    .line 3018
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_23

    .line 3019
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    :cond_23
    throw v2

    :cond_24
    move v2, v3

    goto/16 :goto_5

    :cond_25
    move v3, v12

    goto/16 :goto_4
.end method

.method public copyToSim2(JZ)I
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 2021
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v7

    .line 2022
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "data"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2026
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2028
    const-string v6, ""

    .line 2029
    const-string v5, ""

    .line 2030
    const-string v4, ""

    .line 2031
    const-string v3, ""

    .line 2032
    const/4 v2, 0x1

    .line 2033
    const/4 v1, 0x1

    .line 2036
    if-nez v8, :cond_1

    .line 2037
    const-string v0, "PhoneBookManageSim"

    const-string v1, "copyToSim2 : dataCursor is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const/4 v0, -0x3

    .line 2149
    :cond_0
    :goto_0
    return v0

    .line 2041
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2042
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v12

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 2043
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2045
    const/4 v5, 0x3

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2064
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2042
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2046
    :cond_3
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2048
    if-eqz v1, :cond_4

    .line 2049
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2050
    const/4 v1, 0x0

    goto :goto_2

    .line 2051
    :cond_4
    if-eqz v0, :cond_5

    if-lez v7, :cond_5

    .line 2052
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2053
    const/4 v0, 0x0

    goto :goto_2

    .line 2055
    :cond_5
    const/4 v10, 0x2

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 2056
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2059
    :cond_6
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2061
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2062
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 2066
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2068
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2069
    const/4 v0, -0x2

    goto/16 :goto_0

    .line 2071
    :cond_8
    if-eqz v5, :cond_a

    .line 2072
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    if-le v0, v1, :cond_9

    .line 2073
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2075
    :cond_9
    const-string v0, "tag"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    :cond_a
    if-eqz v3, :cond_c

    .line 2080
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2081
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v1, v3, :cond_b

    .line 2082
    const/4 v1, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2085
    :cond_b
    const-string v1, "number"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    :cond_c
    if-lez v7, :cond_e

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2089
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2090
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_e

    .line 2091
    if-eqz v4, :cond_e

    .line 2093
    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2094
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v1, v3, :cond_d

    .line 2095
    const/4 v1, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2098
    :cond_d
    const-string v1, "AnrNumber"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :cond_e
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2106
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    if-le v0, v1, :cond_f

    .line 2107
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2109
    :cond_f
    const-string v0, "emails"

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    :cond_10
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 2117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2119
    invoke-virtual {v2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2120
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2130
    if-eqz v1, :cond_11

    .line 2131
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 2135
    :cond_11
    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    .line 2136
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2137
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 2138
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 2123
    :catch_0
    move-exception v0

    .line 2125
    const/4 v0, -0x1

    .line 2130
    if-eqz v1, :cond_0

    .line 2131
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 2126
    :catch_1
    move-exception v0

    .line 2127
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2128
    const/4 v0, -0x1

    .line 2130
    if-eqz v1, :cond_0

    .line 2131
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 2130
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_12

    .line 2131
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_12
    throw v0

    .line 2141
    :cond_13
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 2145
    :cond_14
    if-eqz p3, :cond_15

    .line 2146
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 2149
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getAnrFieldCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3049
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v1

    .line 3050
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3051
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 3054
    :cond_0
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3070
    :goto_0
    return v0

    .line 3058
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v2, :cond_2

    .line 3059
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 3060
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 3063
    :cond_2
    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 3064
    :goto_1
    if-ge v0, v1, :cond_4

    .line 3065
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3066
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 3064
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3069
    :cond_4
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnrFieldCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    goto :goto_0
.end method

.method public getAnrFieldCount(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2731
    if-nez p1, :cond_1

    .line 2732
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getAnrFieldCount()I

    move-result v0

    .line 2756
    :cond_0
    :goto_0
    return v0

    .line 2735
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v1

    .line 2736
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 2737
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2740
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2744
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v2, :cond_3

    .line 2745
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2746
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2749
    :cond_3
    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 2750
    :goto_1
    if-ge v0, v1, :cond_5

    .line 2751
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2752
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 2750
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2755
    :cond_5
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnrFieldCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    goto :goto_0
.end method

.method public getByteArrayText(Ljava/lang/String;)[B
    .locals 13
    .parameter "text"

    .prologue
    const/4 v11, 0x0

    .line 812
    new-array v1, v11, [B

    .line 813
    .local v1, byteArrayText:[B
    new-array v2, v11, [B

    .line 814
    .local v2, byteArrayTextTemp:[B
    const/4 v8, 0x0

    .line 815
    .local v8, isEncodable:Z
    const/4 v7, 0x0

    .line 816
    .local v7, isChineseOrKorean:Z
    const/4 v0, 0x0

    .line 821
    .local v0, additionalByte:I
    const/4 v11, 0x1

    :try_start_0
    invoke-static {p1, v11}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    const/4 v8, 0x1

    .line 829
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 830
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->chkKorean(C)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->chkChinese(C)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 831
    :cond_0
    const/4 v7, 0x1

    .line 867
    :cond_1
    if-eqz v8, :cond_3

    .line 868
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 928
    :goto_2
    return-object v1

    .line 824
    .end local v6           #i:I
    :catch_0
    move-exception v5

    .line 825
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v8, 0x0

    goto :goto_0

    .line 829
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v6       #i:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 870
    :cond_3
    const/4 v6, 0x0

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 872
    .local v3, charCount:I
    const v10, 0xffff

    .local v10, min:C
    const/4 v9, 0x0

    .line 874
    .local v9, max:C
    :goto_3
    if-ge v6, v3, :cond_8

    .line 875
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isGSMCharacters(C)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 876
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isTwoByteGsmDefaultCharacters(C)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 877
    add-int/lit8 v0, v0, 0x1

    .line 879
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 880
    goto :goto_3

    .line 882
    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ge v11, v10, :cond_6

    .line 883
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 885
    :cond_6
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v9, :cond_7

    .line 886
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 888
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 892
    :cond_8
    :try_start_1
    const-string v11, "ISO-10646-UCS-2"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 894
    if-eqz v7, :cond_a

    .line 895
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableKsc5601Encoding"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 897
    const-string v11, "KSC5601"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 899
    :cond_9
    array-length v11, v2

    new-array v1, v11, [B

    goto :goto_2

    .line 900
    :cond_a
    const v11, 0x8000

    if-ge v9, v11, :cond_b

    shr-int/lit8 v11, v10, 0x7

    shr-int/lit8 v12, v9, 0x7

    if-ne v11, v12, :cond_b

    .line 902
    array-length v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v0

    new-array v1, v11, [B

    goto :goto_2

    .line 903
    :cond_b
    sub-int v11, v9, v10

    const/16 v12, 0x7f

    if-gt v11, v12, :cond_c

    .line 905
    array-length v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v0

    new-array v1, v11, [B

    goto/16 :goto_2

    .line 908
    :cond_c
    array-length v11, v2

    add-int/lit8 v11, v11, -0x1

    new-array v1, v11, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 910
    :catch_1
    move-exception v4

    .line 912
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public getDBNumberCount(J)I
    .locals 9
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    .line 711
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "data"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type=\'vnd.sec.contact.phone\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 714
    .local v6, dataCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 715
    .local v7, dbCount:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 716
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 717
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    add-int/lit8 v7, v7, 0x1

    .line 720
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 716
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 722
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 723
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ------------ getDBNumberCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v7
.end method

.method public getEmailLength()I
    .locals 1

    .prologue
    .line 1940
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 1941
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1942
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1944
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    return v0
.end method

.method public getEmailLength(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 2453
    if-nez p1, :cond_0

    .line 2454
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v0

    .line 2461
    :goto_0
    return v0

    .line 2457
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    .line 2458
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2459
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2461
    :cond_1
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    goto :goto_0
.end method

.method public getEmailLength(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1951
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v0

    .line 1956
    :goto_0
    return v0

    .line 1954
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1956
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(I)I

    move-result v0

    goto :goto_0
.end method

.method public getEnableCount()I
    .locals 2

    .prologue
    .line 1523
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1524
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEnableCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 1528
    if-nez p1, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount()I

    move-result v0

    .line 1533
    :goto_0
    return v0

    .line 1532
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 1533
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getEnableCount(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1539
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount()I

    move-result v0

    .line 1544
    :goto_0
    return v0

    .line 1542
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1544
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public getMaxCount()I
    .locals 1

    .prologue
    .line 1776
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 1777
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1778
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 1779
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1781
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    return v0
.end method

.method public getMaxCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, 0x1

    .line 2400
    if-nez p1, :cond_0

    .line 2401
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount()I

    move-result v0

    .line 2409
    :goto_0
    return v0

    .line 2404
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    .line 2405
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2406
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2407
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2409
    :cond_1
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    goto :goto_0
.end method

.method public getMaxCount(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1787
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount()I

    move-result v0

    .line 1792
    :goto_0
    return v0

    .line 1790
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1792
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public getNameLength()I
    .locals 1

    .prologue
    .line 1863
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 1864
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1865
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1867
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    return v0
.end method

.method public getNameLength(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 2427
    if-nez p1, :cond_0

    .line 2428
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v0

    .line 2435
    :goto_0
    return v0

    .line 2431
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    .line 2432
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2433
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2435
    :cond_1
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    goto :goto_0
.end method

.method public getNameLength(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1873
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v0

    .line 1878
    :goto_0
    return v0

    .line 1876
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1878
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(I)I

    move-result v0

    goto :goto_0
.end method

.method public getNumberLength()I
    .locals 1

    .prologue
    .line 1901
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 1902
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1903
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1905
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    return v0
.end method

.method public getNumberLength(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 2440
    if-nez p1, :cond_0

    .line 2441
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v0

    .line 2448
    :goto_0
    return v0

    .line 2444
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    .line 2445
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2446
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2448
    :cond_1
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    goto :goto_0
.end method

.method public getNumberLength(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1912
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v0

    .line 1917
    :goto_0
    return v0

    .line 1915
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1917
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 3328
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 3329
    .local v0, returnValue:[Ljava/lang/String;
    return-object v0
.end method

.method public getSimContactDetailIcon(I)I
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f020618

    const v2, 0x7f020376

    const/4 v1, 0x0

    .line 2651
    .line 2654
    if-nez p1, :cond_1

    .line 2655
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2656
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2669
    :goto_0
    const-string v4, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimContactDetailIcon SIM ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_sim_icon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    const-string v1, "V2"

    const-string v4, "V2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2672
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 2725
    :goto_1
    return v0

    .line 2659
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_1"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2662
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 2665
    :catch_0
    move-exception v0

    .line 2667
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 2676
    goto :goto_1

    .line 2678
    :pswitch_1
    const v0, 0x7f020377

    .line 2679
    goto :goto_1

    .line 2681
    :pswitch_2
    const v0, 0x7f020378

    .line 2682
    goto :goto_1

    .line 2684
    :pswitch_3
    const v0, 0x7f020380

    .line 2685
    goto :goto_1

    .line 2687
    :pswitch_4
    const v0, 0x7f02037e

    .line 2688
    goto :goto_1

    .line 2690
    :pswitch_5
    const v0, 0x7f02037d

    .line 2691
    goto :goto_1

    .line 2693
    :pswitch_6
    const v0, 0x7f02037c

    .line 2694
    goto :goto_1

    .line 2696
    :pswitch_7
    const v0, 0x7f02037f

    .line 2697
    goto :goto_1

    .line 2699
    :pswitch_8
    const v0, 0x7f02037b

    .line 2700
    goto :goto_1

    .line 2707
    :cond_2
    packed-switch v0, :pswitch_data_1

    move v0, v3

    .line 2719
    goto :goto_1

    :pswitch_9
    move v0, v3

    .line 2710
    goto :goto_1

    .line 2711
    :pswitch_a
    const v0, 0x7f02061b

    .line 2712
    goto :goto_1

    .line 2713
    :pswitch_b
    const v0, 0x7f020634

    .line 2714
    goto :goto_1

    .line 2715
    :pswitch_c
    const v0, 0x7f020640

    .line 2716
    goto :goto_1

    .line 2717
    :pswitch_d
    const v0, 0x7f02062b

    .line 2718
    goto :goto_1

    .line 2672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2707
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getSimIcon(I)I
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f02061a

    const v3, 0x7f020618

    const/4 v1, 0x0

    .line 2507
    .line 2511
    if-nez p1, :cond_1

    .line 2512
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2528
    :goto_0
    const-string v4, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_sim_icon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const-string v1, "V2"

    const-string v4, "V2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2531
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 2574
    :goto_1
    return v0

    .line 2516
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_1"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2519
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 2523
    :catch_0
    move-exception v0

    .line 2525
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 2534
    goto :goto_1

    .line 2535
    :pswitch_1
    const v0, 0x7f02061d

    .line 2536
    goto :goto_1

    .line 2537
    :pswitch_2
    const v0, 0x7f020614

    .line 2538
    goto :goto_1

    .line 2539
    :pswitch_3
    const v0, 0x7f020649

    .line 2540
    goto :goto_1

    .line 2541
    :pswitch_4
    const v0, 0x7f02063f

    .line 2542
    goto :goto_1

    .line 2543
    :pswitch_5
    const v0, 0x7f02063d

    .line 2544
    goto :goto_1

    .line 2545
    :pswitch_6
    const v0, 0x7f02063b

    .line 2546
    goto :goto_1

    .line 2547
    :pswitch_7
    const v0, 0x7f020647

    .line 2548
    goto :goto_1

    .line 2549
    :pswitch_8
    const v0, 0x7f020633

    .line 2550
    goto :goto_1

    .line 2556
    :cond_2
    packed-switch v0, :pswitch_data_1

    move v0, v3

    .line 2568
    goto :goto_1

    :pswitch_9
    move v0, v3

    .line 2559
    goto :goto_1

    .line 2560
    :pswitch_a
    const v0, 0x7f02061b

    .line 2561
    goto :goto_1

    .line 2562
    :pswitch_b
    const v0, 0x7f020634

    .line 2563
    goto :goto_1

    .line 2564
    :pswitch_c
    const v0, 0x7f020640

    .line 2565
    goto :goto_1

    .line 2566
    :pswitch_d
    const v0, 0x7f02062b

    .line 2567
    goto :goto_1

    .line 2531
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2556
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getSimIcon(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 3350
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v0

    .line 3353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSimIconChanged()Z
    .locals 3

    .prologue
    .line 3386
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSimIconChanged called] mSimInfoChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    return v0
.end method

.method public getSimInfo()[Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3339
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_0

    .line 3340
    const/4 v1, 0x2

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    .line 3341
    .local v0, returnValue:[Z
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aput-boolean v2, v1, v2

    .line 3342
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aput-boolean v2, v1, v3

    .line 3345
    .end local v0           #returnValue:[Z
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    goto :goto_0

    .line 3340
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 2477
    .line 2479
    if-nez p1, :cond_4

    .line 2480
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2482
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2484
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2485
    :cond_0
    const-string v0, "SIM 2"

    .line 2501
    :cond_1
    :goto_0
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContactDS SIM NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    return-object v0

    .line 2487
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_1"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2489
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2490
    :cond_3
    const-string v0, "SIM 1"

    goto :goto_0

    .line 2494
    :cond_4
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_name_2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2497
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2498
    :cond_5
    const-string v0, "SIM 2"

    goto :goto_0
.end method

.method public getSimName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "accountType"

    .prologue
    .line 3377
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    .line 3380
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimPopupIcon(I)I
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f02061a

    const v3, 0x7f020618

    const/4 v1, 0x0

    .line 2579
    .line 2583
    if-nez p1, :cond_1

    .line 2584
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2600
    :goto_0
    const-string v4, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_sim_icon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    const-string v1, "V2"

    const-string v4, "V2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2603
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 2646
    :goto_1
    return v0

    .line 2588
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_1"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2591
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_icon_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 2595
    :catch_0
    move-exception v0

    .line 2597
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 2606
    goto :goto_1

    .line 2607
    :pswitch_1
    const v0, 0x7f02061d

    .line 2608
    goto :goto_1

    .line 2609
    :pswitch_2
    const v0, 0x7f020614

    .line 2610
    goto :goto_1

    .line 2611
    :pswitch_3
    const v0, 0x7f020649

    .line 2612
    goto :goto_1

    .line 2613
    :pswitch_4
    const v0, 0x7f02063f

    .line 2614
    goto :goto_1

    .line 2615
    :pswitch_5
    const v0, 0x7f02063d

    .line 2616
    goto :goto_1

    .line 2617
    :pswitch_6
    const v0, 0x7f02063b

    .line 2618
    goto :goto_1

    .line 2619
    :pswitch_7
    const v0, 0x7f020647

    .line 2620
    goto :goto_1

    .line 2621
    :pswitch_8
    const v0, 0x7f020633

    .line 2622
    goto :goto_1

    .line 2628
    :cond_2
    packed-switch v0, :pswitch_data_1

    move v0, v3

    .line 2640
    goto :goto_1

    :pswitch_9
    move v0, v3

    .line 2631
    goto :goto_1

    .line 2632
    :pswitch_a
    const v0, 0x7f02061b

    .line 2633
    goto :goto_1

    .line 2634
    :pswitch_b
    const v0, 0x7f020634

    .line 2635
    goto :goto_1

    .line 2636
    :pswitch_c
    const v0, 0x7f020640

    .line 2637
    goto :goto_1

    .line 2638
    :pswitch_d
    const v0, 0x7f02062b

    .line 2639
    goto :goto_1

    .line 2603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2628
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getSimPopupIcon(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 3359
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimPopupIcon(I)I

    move-result v0

    .line 3362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimPopupIcon(I)I

    move-result v0

    goto :goto_0
.end method

.method getSimStatus(Ljava/lang/String;)V
    .locals 12
    .parameter "mSimType"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1347
    const-string v5, "1"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "3"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1369
    const-string v5, "2"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1370
    const-string v5, "PhoneBookManageSim"

    const-string v6, "getSimStatus Start : 3G"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    new-instance v4, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    .line 1372
    .local v4, usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1374
    .local v0, anrConfigValue:I
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1376
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 1377
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 1384
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 1385
    invoke-virtual {v4, v7, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 1387
    invoke-virtual {v4, v7, v9}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 1389
    invoke-virtual {v4, v7, v8}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 1391
    invoke-virtual {v4, v8, v8}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 1394
    invoke-virtual {v4, v11, v8}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 1396
    invoke-virtual {v4, v11, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    .line 1398
    invoke-virtual {v4, v11, v9}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 1400
    if-lez v0, :cond_1

    .line 1401
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    invoke-virtual {v4, v9, v8}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v10

    .line 1403
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    invoke-virtual {v4, v9, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v10

    .line 1405
    if-le v0, v9, :cond_1

    .line 1406
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v6, 0x8

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v7

    .line 1408
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v6, 0x8

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v7

    .line 1411
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    .line 1413
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    .line 1416
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v9

    .line 1418
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v9

    .line 1424
    .end local v0           #anrConfigValue:I
    .end local v4           #usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :cond_1
    :goto_1
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_2

    .line 1425
    invoke-static {v10}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 1427
    :cond_2
    sget v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 1430
    const-string v5, "PhoneBookManageSim"

    const-string v6, "Failed to get strogae info. Sim is initializing"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    sput-boolean v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1433
    :cond_3
    const-string v5, "PhoneBookManageSim"

    const-string v6, "getSimStatus End"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return-void

    .line 1348
    :cond_4
    const-string v5, "PhoneBookManageSim"

    const-string v6, "getSimStatus Start : 2G"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 1351
    .local v3, recordInfo:[I
    :try_start_1
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1353
    .restart local v2       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_5

    .line 1354
    const/16 v5, 0x6f3a

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 1363
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_5
    :goto_2
    if-eqz v3, :cond_1

    .line 1364
    aget v5, v3, v10

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 1365
    aget v5, v3, v7

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 1366
    aget v5, v3, v9

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 1367
    aget v5, v3, v11

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    goto :goto_1

    .line 1356
    :catch_0
    move-exception v1

    .line 1357
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "RemoteException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1358
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1359
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "SecurityException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1360
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 1361
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "NullPointerException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1379
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #recordInfo:[I
    .restart local v0       #anrConfigValue:I
    .restart local v4       #usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :catch_3
    move-exception v1

    .line 1380
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "RemoteException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1381
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 1382
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "SecurityException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1349
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method getSimStatus(Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2231
    if-nez p2, :cond_0

    .line 2232
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2316
    :goto_0
    return-void

    .line 2236
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2237
    :cond_1
    const-string v0, "PhoneBookManageSim2"

    const-string v1, "getSimStatus Start : 2G"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 2241
    :try_start_0
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 2242
    const/16 v2, 0x6f3a

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/plugin/dsds/PlugInDsdsService;->getAdnLikesInfo(II)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2247
    :goto_1
    if-eqz v0, :cond_2

    .line 2248
    aget v1, v0, v8

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 2249
    aget v1, v0, v4

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 2250
    aget v1, v0, v6

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 2251
    aget v0, v0, v7

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 2305
    :cond_2
    :goto_2
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    if-nez v0, :cond_3

    .line 2306
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    .line 2308
    :cond_3
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v0, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 2311
    const-string v0, "PhoneBookManageSim2"

    const-string v1, "Failed to get strogae info. Sim2 is initializing"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDsdsService.getSimState(PlugInDsdsService.SIM_SLOT_2) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v2, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getSimState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TelephonyManager.SIM_STATE_READY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    sput-boolean v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2315
    :cond_4
    const-string v0, "PhoneBookManageSim2"

    const-string v1, "getSimStatus End"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2243
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 2253
    :cond_5
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2254
    const-string v0, "PhoneBookManageSim2"

    const-string v1, "getSimStatus Start : 3G"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v2

    .line 2257
    const/4 v1, 0x0

    .line 2259
    :try_start_1
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 2260
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/plugin/dsds/PlugInDsdsService;->getUsimPBCapaInfo(I)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2265
    :goto_3
    if-eqz v0, :cond_2

    .line 2266
    invoke-virtual {v0, v4, v4}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 2268
    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 2270
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 2272
    invoke-virtual {v0, v5, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 2275
    invoke-virtual {v0, v7, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    .line 2277
    invoke-virtual {v0, v7, v4}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    .line 2279
    invoke-virtual {v0, v7, v6}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 2281
    if-lez v2, :cond_2

    .line 2282
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v1, v8

    .line 2284
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    aput v3, v1, v8

    .line 2286
    if-le v2, v6, :cond_2

    .line 2287
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    aput v2, v1, v4

    .line 2289
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    aput v2, v1, v4

    .line 2292
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    aput v2, v1, v5

    .line 2294
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    aput v2, v1, v5

    .line 2297
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    aput v2, v1, v6

    .line 2299
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v1, v6

    goto/16 :goto_2

    .line 2261
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 2238
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getSimType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1979
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 1980
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    return-object v0
.end method

.method public getSimType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2466
    if-nez p1, :cond_0

    .line 2467
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    .line 2471
    :goto_0
    return-object v0

    .line 2470
    :cond_0
    const-string v0, "ril.ICC_TYPE_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2471
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1987
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    .line 1992
    :goto_0
    return-object v0

    .line 1990
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1992
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 3300
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public getUsedCount()I
    .locals 1

    .prologue
    .line 1817
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 1818
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1819
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1821
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    return v0
.end method

.method public getUsedCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    .line 2414
    if-nez p1, :cond_0

    .line 2415
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount()I

    move-result v0

    .line 2422
    :goto_0
    return v0

    .line 2418
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_1

    .line 2419
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2420
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2422
    :cond_1
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    goto :goto_0
.end method

.method public getUsedCount(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1827
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount()I

    move-result v0

    .line 1832
    :goto_0
    return v0

    .line 1830
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1832
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 3274
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 2
    .parameter

    .prologue
    .line 2842
    if-nez p1, :cond_0

    .line 2843
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    .line 2847
    :goto_0
    return v0

    .line 2846
    :cond_0
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 2847
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->hasIccCard(I)Z

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 3280
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3281
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    .line 3285
    :goto_0
    return v0

    .line 3283
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3285
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnrFull(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 3092
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3093
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 3096
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 3155
    :goto_0
    return v0

    .line 3100
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_3

    .line 3101
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3102
    goto :goto_0

    .line 3104
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 3105
    goto :goto_0

    .line 3109
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 3110
    goto :goto_0

    .line 3113
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    .line 3115
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 3116
    if-eqz v3, :cond_5

    .line 3118
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3124
    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 3126
    if-nez p1, :cond_8

    .line 3128
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v2

    .line 3146
    :cond_6
    :goto_2
    const-string v0, "PhoneBookManageSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnrFull() : mAnrMaxIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAnrUsedIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :cond_7
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v0, v0, p1

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v3, v3, p1

    if-le v0, v3, :cond_b

    .line 3151
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrFull() : false max("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") used("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 3152
    goto/16 :goto_0

    .line 3131
    :cond_8
    if-ne p1, v1, :cond_9

    .line 3133
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v1

    goto/16 :goto_2

    .line 3136
    :cond_9
    if-ne p1, v6, :cond_a

    .line 3138
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v6

    goto/16 :goto_2

    .line 3141
    :cond_a
    if-ne p1, v5, :cond_6

    .line 3143
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v5

    goto/16 :goto_2

    .line 3154
    :cond_b
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3155
    goto/16 :goto_0

    .line 3121
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 3120
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method public isAnrFull(II)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 2774
    if-nez p2, :cond_0

    .line 2775
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v0

    .line 2838
    :goto_0
    return v0

    .line 2778
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2779
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 2782
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2783
    goto :goto_0

    .line 2786
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_4

    .line 2787
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 2788
    goto :goto_0

    .line 2790
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 2791
    goto :goto_0

    .line 2795
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(II)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2796
    goto :goto_0

    .line 2799
    :cond_5
    const/4 v3, 0x0

    .line 2801
    :try_start_0
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 2802
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getUsimPBCapaInfo(I)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2807
    :goto_1
    if-eqz v0, :cond_7

    .line 2809
    if-nez p1, :cond_8

    .line 2811
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    invoke-virtual {v0, v5, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v2

    .line 2829
    :cond_6
    :goto_2
    const-string v0, "PhoneBookManageSim2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnrFull() : mAnrMaxIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAnrUsedIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_7
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v0, v0, p1

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v3, v3, p1

    if-le v0, v3, :cond_b

    .line 2834
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrFull() : false max("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") used("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2835
    goto/16 :goto_0

    .line 2803
    :catch_0
    move-exception v0

    move-object v0, v3

    goto/16 :goto_1

    .line 2814
    :cond_8
    if-ne p1, v1, :cond_9

    .line 2816
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v1

    goto/16 :goto_2

    .line 2819
    :cond_9
    if-ne p1, v6, :cond_a

    .line 2821
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v6

    goto/16 :goto_2

    .line 2824
    :cond_a
    if-ne p1, v5, :cond_6

    .line 2826
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    aput v0, v3, v5

    goto/16 :goto_2

    .line 2837
    :cond_b
    const-string v0, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnrFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2838
    goto/16 :goto_0
.end method

.method public isAnrFull(ILjava/lang/String;)Z
    .locals 1
    .parameter "anrIndex"
    .parameter "accountType"

    .prologue
    .line 3270
    const/4 v0, 0x1

    return v0
.end method

.method public isAnrSupported(I)Z
    .locals 3
    .parameter

    .prologue
    .line 3074
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    .line 3075
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnrSupported = mAnrMaxIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    const/4 v0, 0x1

    .line 3078
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrSupported(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2761
    if-nez p2, :cond_0

    .line 2762
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v0

    .line 2769
    :goto_0
    return v0

    .line 2765
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    .line 2766
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnrSupported = mAnrMaxIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    const/4 v0, 0x1

    goto :goto_0

    .line 2769
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrSupported2(I)Z
    .locals 3
    .parameter

    .prologue
    .line 3083
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    .line 3084
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnrSupported2 = mAnrMaxIndex2["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const/4 v0, 0x1

    .line 3088
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailFull()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1684
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    .line 1685
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 1710
    :goto_0
    return v0

    .line 1688
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 1689
    goto :goto_0

    .line 1695
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1696
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1700
    .local v6, emailCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1701
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 1702
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1705
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    if-le v0, v2, :cond_3

    .line 1706
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1707
    goto :goto_0

    .line 1709
    :cond_3
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1710
    goto/16 :goto_0
.end method

.method public isEmailFull(I)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2363
    if-nez p1, :cond_0

    .line 2364
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v0

    .line 2394
    :goto_0
    return v0

    .line 2367
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_2

    .line 2368
    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 2369
    goto :goto_0

    .line 2371
    :cond_1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 2372
    goto :goto_0

    .line 2378
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "emails"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2379
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim2"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2384
    if-eqz v0, :cond_3

    .line 2385
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 2386
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2389
    :cond_3
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    if-le v0, v1, :cond_4

    .line 2390
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmailFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2391
    goto :goto_0

    .line 2393
    :cond_4
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmailFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 2394
    goto/16 :goto_0
.end method

.method public isEmailFull(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1716
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1717
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v0

    .line 1721
    :goto_0
    return v0

    .line 1719
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1721
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isGSMCharacters(C)Z
    .locals 3
    .parameter "mChar"

    .prologue
    .line 764
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGSMCharacters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5f

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x60

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7e

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xa3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xec

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x394

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x393

    if-eq p1, v0, :cond_2

    const/16 v0, 0x39b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x398

    if-eq p1, v0, :cond_2

    const/16 v0, 0x39e

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xfc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20ac

    if-ne p1, v0, :cond_3

    .line 777
    :cond_2
    const/4 v0, 0x1

    .line 780
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimDBReady()Z
    .locals 4

    .prologue
    .line 1278
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSimDBReady(Landroid/content/Context;)Z

    move-result v0

    .line 1279
    .local v0, simDbReady:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1280
    const-string v1, "PhoneBookManageSim"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :goto_0
    return v0

    .line 1284
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 1286
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v1, :cond_1

    .line 1287
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1288
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1292
    :cond_1
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSimDBReady(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2205
    if-nez p1, :cond_0

    .line 2206
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    .line 2224
    :goto_0
    return v0

    .line 2209
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSim2DBReady(Landroid/content/Context;)Z

    move-result v0

    .line 2210
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 2211
    const-string v1, "PhoneBookManageSim2"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2215
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2216
    const-string v1, "ril.ICC_TYPE_1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2217
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v1, :cond_2

    .line 2218
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2219
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2223
    :cond_2
    const-string v1, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSimDBReady(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1299
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    .line 1304
    :goto_0
    return v0

    .line 1302
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isSimEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1195
    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 1196
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1198
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 1199
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimEnabled() return false < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_1
    :goto_0
    return v0

    .line 1203
    :cond_2
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1204
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1205
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 1208
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdnEditable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1209
    const-string v1, "PhoneBookManageSim"

    const-string v2, "Adn is not editable..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    :cond_4
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1217
    const-string v0, "PhoneBookManageSim"

    const-string v2, "isSimEnabled() return true"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1218
    goto :goto_0
.end method

.method public isSimEnabled(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2157
    if-nez p1, :cond_1

    .line 2158
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    .line 2199
    :cond_0
    :goto_0
    return v0

    .line 2176
    :cond_1
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 2177
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 2179
    :cond_2
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 2180
    const-string v1, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimEnabled() return false < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2184
    :cond_3
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 2188
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 2189
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2190
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 2193
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdn2Editable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2194
    const-string v1, "PhoneBookManageSim2"

    const-string v2, "Adn is not editable..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2198
    :cond_5
    const-string v0, "PhoneBookManageSim2"

    const-string v2, "isSimEnabled() return true"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2199
    goto :goto_0
.end method

.method public isSimEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1224
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    .line 1229
    :goto_0
    return v0

    .line 1227
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isSimFull()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1562
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : isFirstCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    .line 1564
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 1607
    :goto_0
    return v0

    .line 1567
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    .line 1568
    goto :goto_0

    .line 1573
    :cond_1
    const/4 v7, 0x0

    .line 1575
    .local v7, nameCursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1586
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1596
    :goto_1
    if-eqz v7, :cond_2

    .line 1597
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 1598
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1601
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    if-le v0, v1, :cond_4

    .line 1602
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1603
    goto :goto_0

    .line 1592
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    .line 1606
    :cond_4
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1607
    goto/16 :goto_0
.end method

.method public isSimFull(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 2320
    if-nez p1, :cond_0

    .line 2321
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    .line 2359
    :goto_0
    return v0

    .line 2324
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_2

    .line 2325
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 2326
    goto :goto_0

    .line 2328
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 2329
    goto :goto_0

    .line 2336
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2338
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "account_type = \'vnd.sec.contact.sim2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2347
    :goto_1
    if-eqz v0, :cond_3

    .line 2348
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 2349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2353
    :cond_3
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    if-le v0, v1, :cond_5

    .line 2354
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2355
    goto :goto_0

    .line 2343
    :cond_4
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/Constants;->ADN2_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2358
    :cond_5
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2359
    goto/16 :goto_0
.end method

.method public isSimFull(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 1613
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    .line 1618
    :goto_0
    return v0

    .line 1616
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1618
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isSimSupport()Z
    .locals 1

    .prologue
    .line 3035
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3036
    const/4 v0, 0x0

    .line 3038
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isSimDbSupport()Z

    move-result v0

    goto :goto_0
.end method

.method public isTwoByteGsmDefaultCharacters(C)Z
    .locals 3
    .parameter "mChar"

    .prologue
    .line 784
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTwoByteGsmDefaultCharacters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v0, 0x5e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20ac

    if-ne p1, v0, :cond_1

    .line 789
    :cond_0
    const/4 v0, 0x1

    .line 791
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUIMCard()Z
    .locals 1

    .prologue
    .line 3311
    const/4 v0, 0x0

    return v0
.end method

.method public resetSimInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3397
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    .line 3398
    .local v0, sim1Info:[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    .line 3400
    .local v1, sim2Info:[Ljava/lang/String;
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3401
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3404
    :cond_0
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3405
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3407
    :cond_1
    return-void
.end method

.method public setSimIconChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3391
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIconChanged flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    sput-boolean p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    .line 3393
    return-void
.end method

.method public setSimInfo()[Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3333
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 3334
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aput-boolean v2, v0, v2

    .line 3335
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    return-object v0
.end method

.method public trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "length"

    .prologue
    .line 946
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 947
    .local v3, tmpText:Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 948
    .local v2, returnText:Ljava/lang/String;
    const-string v0, ""

    .line 949
    .local v0, chkText:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 950
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-le p2, v4, :cond_0

    .line 951
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 952
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, p2, :cond_0

    .line 954
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 949
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    :cond_1
    return-object v2
.end method

.method trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "length"

    .prologue
    .line 932
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 933
    .local v2, tmpText:Ljava/lang/StringBuffer;
    const-string v1, ""

    .line 935
    .local v1, returnText:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 936
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-le p2, v3, :cond_0

    .line 937
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 938
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    :cond_1
    return-object v1
.end method
