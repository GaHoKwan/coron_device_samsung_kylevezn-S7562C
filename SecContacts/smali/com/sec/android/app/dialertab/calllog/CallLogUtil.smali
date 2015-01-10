.class public Lcom/sec/android/app/dialertab/calllog/CallLogUtil;
.super Ljava/lang/Object;
.source "CallLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;
    }
.end annotation


# static fields
.field static BIN_DEFAULT_DIR:Ljava/lang/String;

.field static BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field private static final DBG:Z

.field private static KnownCityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static LANGUAGE_CHINA:I

.field static LANGUAGE_ENGLISH:I

.field static LANGUAGE_KOREA:I

.field static VERSION_DEFAULT_DIR:Ljava/lang/String;

.field static VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field public static bIsShowingDlg:Z

.field public static blockNumberFullErrorDlg:Landroid/app/AlertDialog;

.field public static blockNumberSettingDlg:Landroid/app/AlertDialog;

.field static headerSize:I

.field public static final mBlcokNumberResult:[Z

.field public static final mBlcoknumbersetting:[Z

.field public static mDateFormat:Ljava/lang/String;

.field public static final mOriginalBlcokNumberSetting:[Z

.field static mobileSize:I

.field static ois:Ljava/io/RandomAccessFile;

.field static provinceSize:I

.field private static systemTime:Landroid/text/format/Time;

.field static telSize:I

.field static titleSeekCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 96
    const-string v2, "ro.debuggable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    .line 98
    const-string v0, "MM-dd-yyyy"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    .line 111
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    .line 112
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    .line 113
    new-array v0, v3, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    .line 126
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->bIsShowingDlg:Z

    .line 1699
    const/16 v0, 0x83

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    .line 1700
    const/16 v0, 0x60

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    .line 1701
    const/16 v0, 0x81

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    .line 1702
    sput v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    .line 1703
    const/16 v0, 0xc

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->titleSeekCount:I

    .line 1704
    sput v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    .line 1705
    sput v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    .line 1706
    sput v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_ENGLISH:I

    .line 1707
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    .line 1709
    const-string v0, "/system/etc/HomeLocationDB.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 1710
    const-string v0, "/system/etc/HomeLocationVersion.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 1711
    const-string v0, "/data/data/com.android.phone/HomeLocationDB.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    .line 1712
    const-string v0, "/data/data/com.android.phone/HomeLocationVersion.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    return-void

    .line 111
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 112
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 113
    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1807
    return-void
.end method

.method public static AddToContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2211
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    const-string v0, "sip"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2219
    :goto_0
    const-string v1, "dcm_jcontacts_package_name"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2220
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    .line 2224
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2225
    return-void

    .line 2214
    :cond_0
    const-string v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2222
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2264
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    const-string v0, "sip"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2272
    :goto_0
    const-string v1, "dcm_jcontacts_package_name"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2273
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    .line 2277
    :goto_1
    if-eqz p2, :cond_0

    .line 2279
    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2280
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2281
    const-string v3, "name"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2282
    const-string v3, "data2"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2283
    const-string v1, "data3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2286
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2287
    return-void

    .line 2267
    :cond_1
    const-string v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2275
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 2229
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2230
    const-string v0, "sip"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2237
    :goto_0
    const-string v1, "dcm_jcontacts_package_name"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    .line 2242
    :goto_1
    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    if-nez p4, :cond_4

    .line 2243
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2253
    :cond_0
    :goto_2
    if-eqz p5, :cond_1

    .line 2254
    const-string v1, "cnam"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2255
    const-string v1, "postal"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2256
    const-string v1, "postal_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2259
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2260
    return-void

    .line 2232
    :cond_2
    const-string v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2240
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1

    .line 2245
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2246
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2248
    :cond_5
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2249
    const-string v1, "data3"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public static addToKnownCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1817
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1818
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    .line 1820
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getKnownCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1822
    const-string v0, "CallLogUtil"

    const-string v1, "addToKnownCity : already is stored."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :goto_0
    return-void

    .line 1826
    :cond_1
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogUtil$1;)V

    .line 1827
    iput-object p0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->number:Ljava/lang/String;

    .line 1828
    if-nez p1, :cond_2

    .line 1829
    const-string v1, ""

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    .line 1833
    :goto_1
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1831
    :cond_2
    iput-object p1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    goto :goto_1
.end method

.method public static blockContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 331
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 334
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 338
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 339
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 340
    .local v8, nRejectDBsize:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 342
    const/4 v7, 0x0

    .line 343
    .local v7, max_rejectDB_size:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 346
    if-lt v8, v7, :cond_1

    .line 350
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const v0, 0x7f0d0328

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v11

    .line 381
    .end local v7           #max_rejectDB_size:I
    .end local v8           #nRejectDBsize:I
    :goto_0
    return v0

    .line 355
    .restart local v7       #max_rejectDB_size:I
    .restart local v8       #nRejectDBsize:I
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v10, values:Landroid/content/ContentValues;
    if-nez p1, :cond_2

    move v0, v11

    .line 358
    goto :goto_0

    .line 361
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 362
    .local v9, rejectNum:Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    :cond_3
    const-string v0, "CallLogUtil"

    const-string v1, "invalid number"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const v0, 0x7f0d0435

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v11

    .line 365
    goto :goto_0

    .line 367
    :cond_4
    const-string v0, "reject_number"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "reject_checked"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string v0, "reject_match"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 376
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 377
    const v0, 0x7f0d0325

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .end local v7           #max_rejectDB_size:I
    .end local v8           #nRejectDBsize:I
    .end local v9           #rejectNum:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_5
    move v0, v12

    .line 381
    goto :goto_0
.end method

.method public static blockMessageContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 628
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, rejectNum:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "filter_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string v2, "filter"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "enable"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    const-string v2, "criteria"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://mms-sms/spam-filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 641
    return v5
.end method

.method public static blockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 486
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 489
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 493
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 495
    .local v8, nRejectDBsize:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 497
    const/4 v7, 0x0

    .line 498
    .local v7, max_rejectDB_size:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 501
    if-lt v8, v7, :cond_1

    .line 505
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const v0, 0x7f0d0328

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v11

    .line 526
    .end local v7           #max_rejectDB_size:I
    .end local v8           #nRejectDBsize:I
    :goto_0
    return v0

    .line 510
    .restart local v7       #max_rejectDB_size:I
    .restart local v8       #nRejectDBsize:I
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 512
    .local v9, rejectNum:Ljava/lang/String;
    const-string v0, "reject_number"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "reject_checked"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v0, "reject_match"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 521
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 522
    const v0, 0x7f0d0325

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .end local v7           #max_rejectDB_size:I
    .end local v8           #nRejectDBsize:I
    .end local v9           #rejectNum:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    move v0, v12

    .line 526
    goto :goto_0
.end method

.method public static checkDualSim()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 2499
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 2500
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 2502
    const-string v2, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDualSim - SimState1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SimState2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    if-ne v0, v5, :cond_0

    if-ne v1, v5, :cond_0

    .line 2506
    const-string v0, "CallLogUtil"

    const-string v1, "checkDualSim - both of sim cards are enabled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v0, 0x1

    .line 2511
    :goto_0
    return v0

    .line 2510
    :cond_0
    const-string v0, "CallLogUtil"

    const-string v1, "checkDualSim - no sim card or only 1 sim card are inerted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1510
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1512
    .local v8, where:Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1514
    const-string v0, "filter"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1515
    const-string v0, " LIKE "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1516
    const-string v0, "\'%"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1517
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1523
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1524
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1525
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1526
    const-string v0, " AND enable="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1527
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1528
    const-string v0, " AND criteria="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1529
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1530
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1534
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1538
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1539
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1590
    :goto_1
    return v0

    .line 1519
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1520
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1521
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1543
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1546
    :cond_2
    const-string v0, "filter"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1548
    .local v7, rejectNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1549
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMessageblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_3
    invoke-static {v7, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1552
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1553
    goto :goto_1

    .line 1555
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1558
    goto :goto_1

    .line 1561
    .end local v7           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1563
    goto :goto_1

    .line 1565
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1566
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1567
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1568
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1569
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1570
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1571
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1575
    .restart local v2       #projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1579
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1580
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1581
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1582
    goto/16 :goto_1

    .line 1584
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1585
    goto/16 :goto_1

    .line 1588
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkMessageblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1590
    goto/16 :goto_1
.end method

.method public static checkMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1596
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1598
    .local v8, where:Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1600
    const-string v0, "filter"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    const-string v0, " LIKE "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    const-string v0, "\'%"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1603
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1609
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1610
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1611
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1612
    const-string v0, " AND enable="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1613
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1614
    const-string v0, " AND criteria="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1615
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1616
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1620
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1624
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1625
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1677
    :goto_1
    return v0

    .line 1605
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1606
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1607
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1629
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1632
    :cond_2
    const-string v0, "filter"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1634
    .local v7, rejectNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1635
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMessageunblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_3
    invoke-static {v7, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1638
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1639
    goto :goto_1

    .line 1641
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1643
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1644
    goto :goto_1

    .line 1647
    .end local v7           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkMessageunblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1649
    goto :goto_1

    .line 1651
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1652
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1653
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1654
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1655
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1656
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1657
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1661
    .restart local v2       #projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1665
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1666
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1667
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1668
    goto/16 :goto_1

    .line 1670
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1671
    goto/16 :goto_1

    .line 1674
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkMessageunblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1677
    goto/16 :goto_1
.end method

.method public static checkNoSimMode()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2516
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 2517
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 2519
    const-string v3, "CallLogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkNoSimMode - SimState1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SimState2 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_2

    .line 2525
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkVideoCallblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1323
    const/4 v7, 0x0

    .line 1324
    .local v7, nReject_match:I
    const/4 v9, 0x1

    .line 1325
    .local v9, reject_checked:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1327
    .local v10, where:Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1329
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1330
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1332
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1338
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1341
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1342
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1343
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1347
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1351
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1352
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1353
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1403
    :goto_1
    return v0

    .line 1334
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1335
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1336
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1356
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1359
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1361
    .local v8, rejectNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1362
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVideoCallblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1365
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1366
    goto :goto_1

    .line 1368
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1370
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1371
    goto :goto_1

    .line 1374
    .end local v8           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1376
    goto :goto_1

    .line 1378
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1379
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1380
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1382
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1383
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1384
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1388
    .restart local v2       #projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1392
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1393
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1394
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1395
    goto/16 :goto_1

    .line 1397
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1398
    goto/16 :goto_1

    .line 1401
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1403
    goto/16 :goto_1
.end method

.method public static checkVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1409
    const/4 v7, 0x0

    .line 1410
    .local v7, nReject_match:I
    const/4 v9, 0x0

    .line 1411
    .local v9, reject_checked:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1413
    .local v10, where:Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1415
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1416
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1417
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1418
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1424
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1425
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1426
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1427
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1428
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1429
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1433
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1437
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1438
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1489
    :goto_1
    return v0

    .line 1420
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1421
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1422
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1442
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1445
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1447
    .local v8, rejectNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1448
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVideoCallblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1452
    goto :goto_1

    .line 1454
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1457
    goto :goto_1

    .line 1460
    .end local v8           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1462
    goto :goto_1

    .line 1464
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1465
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1467
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1468
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1469
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1470
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1474
    .restart local v2       #projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1478
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1479
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1481
    goto/16 :goto_1

    .line 1483
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1484
    goto/16 :goto_1

    .line 1487
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1489
    goto/16 :goto_1
.end method

.method public static checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1136
    const/4 v7, 0x0

    .line 1137
    .local v7, nReject_match:I
    const/4 v9, 0x1

    .line 1138
    .local v9, reject_checked:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1140
    .local v10, where:Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1142
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1143
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1144
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1145
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1152
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1153
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1154
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1156
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1160
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1164
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1165
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1166
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1216
    :goto_1
    return v0

    .line 1147
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1148
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1149
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1169
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1172
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1174
    .local v8, rejectNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1175
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVoiceCallblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1179
    goto :goto_1

    .line 1181
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1184
    goto :goto_1

    .line 1187
    .end local v8           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1189
    goto :goto_1

    .line 1191
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1192
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1194
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1195
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1197
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1201
    .restart local v2       #projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1205
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1206
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1208
    goto/16 :goto_1

    .line 1210
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1211
    goto/16 :goto_1

    .line 1214
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1216
    goto/16 :goto_1
.end method

.method public static checkVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1222
    const/4 v7, 0x0

    .line 1223
    .local v7, nReject_match:I
    const/4 v9, 0x0

    .line 1224
    .local v9, reject_checked:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1226
    .local v10, where:Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1228
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1230
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1231
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1238
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1239
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1240
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1241
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1242
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1246
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1250
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1251
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1302
    :goto_1
    return v0

    .line 1233
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1235
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1255
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1258
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1260
    .local v8, rejectNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1261
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVoiceCallunblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1265
    goto :goto_1

    .line 1267
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1270
    goto :goto_1

    .line 1273
    .end local v8           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceunCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1275
    goto :goto_1

    .line 1277
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1280
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1281
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1283
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1287
    .restart local v2       #projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1291
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1292
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1294
    goto/16 :goto_1

    .line 1296
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1297
    goto/16 :goto_1

    .line 1300
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceCallunblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1302
    goto/16 :goto_1
.end method

.method public static closeLocationBinFile()V
    .locals 2

    .prologue
    .line 1855
    const-string v0, "CallLogUtil"

    const-string v1, "closeLocationFile"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :try_start_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1860
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1861
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    .line 1864
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1866
    const-string v0, "CallLogUtil"

    const-string v1, "clear cached city list"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1868
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    :cond_1
    :goto_0
    return-void

    .line 1870
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2407
    const-string v0, "blacklist"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    return-void
.end method

.method private static configNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2416
    const-string v0, "CallLogUtil"

    const-string v1, "configNum:  empty"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    :goto_0
    return-void

    .line 2419
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2420
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2421
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2422
    const-string v1, "list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2423
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2411
    const-string v0, "whitelist"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    return-void
.end method

.method public static createContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 286
    .local v0, insertIntent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "sip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void

    .line 289
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createContactWithCnap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2192
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2193
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2196
    if-eqz p2, :cond_0

    .line 2198
    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2199
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2200
    const-string v3, "name"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2201
    const-string v3, "data2"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2202
    const-string v1, "data3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2205
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2206
    return-void
.end method

.method public static createContactWithCnap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2164
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2165
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2168
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 2169
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2180
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 2181
    const-string v1, "cnam"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2182
    const-string v1, "postal"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    const-string v1, "postal_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2186
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2187
    return-void

    .line 2172
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2173
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2175
    :cond_3
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2176
    const-string v1, "data3"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static editCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public static existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 2427
    .line 2429
    const-string v0, "com.sec.android.app.firewall"

    .line 2432
    packed-switch p2, :pswitch_data_0

    move-object v0, v2

    .line 2447
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.sec.android.app.firewall/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "numbers=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2451
    if-eqz v1, :cond_0

    .line 2452
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v6

    .line 2455
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2460
    :goto_2
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existInVIPModeList - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    return v0

    .line 2434
    :pswitch_0
    const-string v0, "black_msg_num"

    goto :goto_0

    .line 2437
    :pswitch_1
    const-string v0, "black_call_num"

    goto :goto_0

    .line 2440
    :pswitch_2
    const-string v0, "white_msg_num"

    goto :goto_0

    .line 2443
    :pswitch_3
    const-string v0, "white_call_num"

    goto :goto_0

    .line 2457
    :cond_0
    const-string v0, "CallLogUtil"

    const-string v1, "existInVIPModeList - cursor is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_2

    :cond_1
    move v0, v7

    goto :goto_1

    .line 2432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x30

    const/16 v7, 0x2f

    const/16 v6, 0xa

    .line 2307
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2308
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2310
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2311
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d02cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2363
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2313
    :cond_0
    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d02ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2316
    :cond_1
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2317
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2318
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 2319
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2321
    const-string v4, "MM-dd-yyyy"

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2322
    if-ge v3, v6, :cond_2

    .line 2323
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2325
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2326
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2327
    if-ge v0, v6, :cond_3

    .line 2328
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2330
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2331
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2333
    :cond_4
    const-string v4, "dd-MM-yyyy"

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2335
    if-ge v0, v6, :cond_5

    .line 2336
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2338
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2339
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2341
    if-ge v3, v6, :cond_6

    .line 2342
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2344
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2345
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2349
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2350
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2351
    if-ge v3, v6, :cond_8

    .line 2352
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2354
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2355
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2356
    if-ge v0, v6, :cond_9

    .line 2357
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2359
    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "millis"
    .parameter "flags"
    .parameter "timezone"

    .prologue
    .line 2371
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    .line 2372
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 1047
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    const-string v2, ""

    .line 1060
    :goto_0
    return-object v2

    .line 1051
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1052
    .local v0, sEditable:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    .line 1054
    .local v1, sFormattingType:I
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1055
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1057
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1058
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1060
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1767
    .line 1770
    const/16 v1, 0x80

    new-array v4, v1, [B

    move v1, v0

    .line 1772
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1774
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v4, v1

    .line 1772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    move v3, v0

    .line 1776
    :goto_1
    if-ge v2, p2, :cond_1

    .line 1778
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, -0x1

    if-ge v2, v1, :cond_2

    aget-byte v1, v4, v2

    if-nez v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v4, v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1780
    :goto_2
    if-eqz v1, :cond_3

    .line 1788
    :cond_1
    new-array v1, v3, [B

    .line 1789
    :goto_3
    if-ge v0, v3, :cond_4

    .line 1791
    aget-byte v2, v4, v0

    aput-byte v2, v1, v0

    .line 1789
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v1, v0

    .line 1778
    goto :goto_2

    .line 1785
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1776
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1797
    :cond_4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    :goto_4
    return-object v0

    .line 1799
    :catch_0
    move-exception v0

    .line 1801
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1803
    const-string v0, ""

    goto :goto_4
.end method

.method private static getKnownCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1838
    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1850
    :goto_0
    return-object v0

    .line 1841
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1842
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1843
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;

    .line 1844
    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1846
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKnownCity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1850
    goto :goto_0
.end method

.method public static getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1878
    const-string v2, "CallLogUtil"

    const-string v3, " getNumberProvinceAndCity for"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string v2, ""

    .line 1881
    const-string v2, ""

    .line 1882
    const/4 v2, 0x2

    new-array v6, v2, [B

    .line 1883
    const/4 v2, 0x4

    new-array v7, v2, [B

    .line 1884
    const/16 v2, 0x20

    new-array v8, v2, [B

    .line 1885
    const/4 v4, 0x0

    .line 1897
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_ENGLISH:I

    .line 1898
    const-wide/16 v9, 0x0

    .line 1899
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number_region_activation_preference"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1902
    if-nez v2, :cond_1

    .line 1903
    const-string v3, "CallLogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LiJian number_region_activation_preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const/4 v2, 0x0

    .line 2156
    :cond_0
    :goto_0
    return-object v2

    .line 1909
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getKnownCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1910
    if-nez v2, :cond_0

    .line 1919
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1920
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "zh_HK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1922
    :cond_2
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    .line 1934
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1935
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x30

    if-ne v5, v11, :cond_a

    .line 1937
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x33

    if-ge v5, v11, :cond_8

    .line 1938
    const/4 v5, 0x3

    if-lt v3, v5, :cond_7

    .line 1939
    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1948
    :goto_2
    const/4 v5, 0x0

    .line 1957
    :goto_3
    :try_start_0
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    if-nez v11, :cond_d

    .line 1958
    const-string v11, "CallLogUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "try to open: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1961
    new-instance v11, Ljava/io/RandomAccessFile;

    sget-object v12, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v13, "r"

    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    .line 1969
    :goto_4
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v11, v7, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1970
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    .line 1971
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-virtual {v11, v8, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1972
    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-16LE"

    invoke-direct {v11, v8, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1974
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-virtual {v11, v8, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1975
    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-16LE"

    invoke-direct {v11, v8, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1977
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v8, v7, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1978
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v11

    .line 1979
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v8, v7, v13, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1980
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v13

    .line 1981
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v8, v7, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1982
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v15

    .line 1983
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v17, 0x0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v7, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    .line 1984
    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v17

    .line 1985
    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v7, :cond_3

    .line 1986
    const-string v7, "CallLogUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v0, v15

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_3
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    .line 2011
    sget-object v19, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    sget v20, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->titleSeekCount:I

    mul-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v7, v7, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2015
    const-string v7, "CallLogUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "byte count "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v19, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    sget v7, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    int-to-long v7, v7

    mul-long/2addr v7, v11

    long-to-int v7, v7

    new-array v7, v7, [B

    .line 2017
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v19, 0x0

    sget v20, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v11, v11, v20

    long-to-int v11, v11

    move/from16 v0, v19

    invoke-virtual {v8, v7, v0, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2020
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2021
    if-nez v5, :cond_12

    .line 2022
    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    int-to-long v5, v5

    mul-long/2addr v5, v13

    long-to-int v5, v5

    new-array v5, v5, [B

    .line 2023
    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v11, 0x0

    sget v12, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    int-to-long v15, v12

    mul-long/2addr v15, v13

    long-to-int v12, v15

    invoke-virtual {v6, v5, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2026
    long-to-int v6, v13

    invoke-static {v5, v8, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->teleBinarySearch([BII)I

    move-result v6

    .line 2028
    const/4 v8, -0x1

    if-ne v6, v8, :cond_e

    .line 2030
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v2, :cond_4

    .line 2031
    const-string v2, "CallLogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incomingCallNumPrefix= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_4
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2033
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1925
    :cond_5
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1926
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    goto/16 :goto_1

    .line 1930
    :cond_6
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_ENGLISH:I

    goto/16 :goto_1

    .line 1941
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1943
    :cond_8
    const/4 v5, 0x4

    if-lt v3, v5, :cond_9

    .line 1944
    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1946
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1950
    :cond_a
    const/4 v5, 0x7

    if-lt v3, v5, :cond_b

    .line 1951
    const/4 v3, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1954
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 1953
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1963
    :cond_c
    :try_start_1
    new-instance v11, Ljava/io/RandomAccessFile;

    sget-object v12, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v13, "r"

    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 2134
    :catch_0
    move-exception v2

    .line 2135
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1965
    :cond_d
    :try_start_3
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1966
    const-string v11, "CallLogUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "already open: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 2136
    :catch_1
    move-exception v2

    .line 2137
    :try_start_4
    const-string v2, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2036
    :cond_e
    :try_start_5
    sget v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v3, v6

    aget-byte v3, v5, v3

    .line 2038
    if-gez v3, :cond_f

    .line 2039
    const-string v2, "CallLogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buffer1= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2041
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2043
    :cond_f
    sget v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    if-ne v2, v8, :cond_10

    .line 2044
    if-eqz v3, :cond_1f

    .line 2045
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    const/16 v3, 0x20

    invoke-static {v7, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2048
    :goto_5
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x20

    invoke-static {v5, v2, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .line 2144
    :goto_6
    const-string v4, "CallLogUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strProvince: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "strCity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2149
    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    .line 2150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->addToKnownCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2050
    :cond_10
    :try_start_6
    sget v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    if-ne v2, v8, :cond_11

    .line 2051
    if-eqz v3, :cond_1e

    .line 2052
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    invoke-static {v7, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2056
    :goto_7
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x40

    const/16 v4, 0x20

    invoke-static {v5, v2, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 2059
    :cond_11
    if-eqz v3, :cond_1d

    .line 2060
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    invoke-static {v7, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2063
    :goto_8
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    const/16 v4, 0x40

    invoke-static {v5, v2, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 2068
    :cond_12
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    .line 2069
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    int-to-long v0, v5

    move-wide/from16 v19, v0

    mul-long v13, v13, v19

    add-long/2addr v11, v13

    invoke-virtual {v3, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2071
    sget v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    int-to-long v11, v3

    mul-long/2addr v11, v15

    long-to-int v3, v11

    new-array v5, v3, [B

    .line 2072
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v11, 0x0

    sget v12, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    int-to-long v12, v12

    mul-long/2addr v12, v15

    long-to-int v12, v12

    invoke-virtual {v3, v5, v11, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2076
    sget v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    int-to-long v11, v3

    mul-long v11, v11, v17

    long-to-int v3, v11

    new-array v3, v3, [B

    .line 2077
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    sget v13, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    int-to-long v13, v13

    mul-long v13, v13, v17

    long-to-int v13, v13

    invoke-virtual {v11, v3, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2079
    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2080
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2081
    move-wide/from16 v0, v17

    long-to-int v12, v0

    invoke-static {v3, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileHeaderSearch([BII)I

    move-result v3

    .line 2083
    if-gez v3, :cond_13

    .line 2085
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2086
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2088
    :cond_13
    const/16 v11, 0x4e20

    new-array v11, v11, [B

    .line 2090
    sget-object v12, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    .line 2091
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    mul-int/lit16 v3, v3, 0x2710

    mul-int/lit8 v3, v3, 0x2

    int-to-long v15, v3

    add-long/2addr v12, v15

    invoke-virtual {v14, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2093
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    const/16 v13, 0x4e20

    invoke-virtual {v3, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2094
    rem-int/lit16 v3, v8, 0x2710

    .line 2095
    const/4 v8, 0x0

    mul-int/lit8 v12, v3, 0x2

    aget-byte v12, v11, v12

    aput-byte v12, v6, v8

    .line 2096
    const/4 v8, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v11, v3

    aput-byte v3, v6, v8

    .line 2097
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedShort([B)I

    move-result v6

    .line 2098
    if-gtz v6, :cond_14

    .line 2100
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2101
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2104
    :cond_14
    sget v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v8, v6, -0x1

    mul-int/2addr v3, v8

    aget-byte v3, v5, v3

    .line 2106
    if-gez v3, :cond_15

    .line 2108
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2109
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2111
    :cond_15
    sget v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    if-ne v2, v8, :cond_16

    .line 2112
    if-eqz v3, :cond_1c

    .line 2113
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    const/16 v3, 0x20

    invoke-static {v7, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2116
    :goto_9
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v4, v6, -0x1

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x20

    invoke-static {v5, v2, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 2118
    :cond_16
    sget v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    if-ne v2, v8, :cond_17

    .line 2119
    if-eqz v3, :cond_1b

    .line 2120
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    invoke-static {v7, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2123
    :goto_a
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v4, v6, -0x1

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x40

    const/16 v4, 0x20

    invoke-static {v5, v2, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 2126
    :cond_17
    if-eqz v3, :cond_1a

    .line 2127
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    invoke-static {v7, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    .line 2130
    :goto_b
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v4, v6, -0x1

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    const/16 v4, 0x40

    invoke-static {v5, v2, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    goto/16 :goto_6

    .line 2138
    :catchall_0
    move-exception v2

    throw v2

    .line 2152
    :cond_18
    if-eqz v2, :cond_19

    .line 2153
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->addToKnownCity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2156
    :cond_19
    const-string v2, ""

    goto/16 :goto_0

    :cond_1a
    move-object v3, v4

    goto :goto_b

    :cond_1b
    move-object v3, v4

    goto :goto_a

    :cond_1c
    move-object v3, v4

    goto :goto_9

    :cond_1d
    move-object v3, v4

    goto/16 :goto_8

    :cond_1e
    move-object v3, v4

    goto/16 :goto_7

    :cond_1f
    move-object v3, v4

    goto/16 :goto_5
.end method

.method public static getTimeDisplayScheme(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 2393
    .line 2394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_display_scheme"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2395
    return v0
.end method

.method public static haveVOIPCalls(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1013
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 1016
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "logtype=800"

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1020
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1022
    .local v6, callCount:I
    if-eqz v7, :cond_1

    .line 1023
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1024
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1026
    if-lez v6, :cond_0

    move v0, v8

    .line 1031
    :goto_0
    return v0

    :cond_0
    move v0, v9

    .line 1029
    goto :goto_0

    :cond_1
    move v0, v9

    .line 1031
    goto :goto_0
.end method

.method public static isAutoDial(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xb

    .line 2554
    .line 2555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2557
    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCDMANetworkReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2530
    const/4 v1, 0x0

    .line 2531
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 2532
    if-eqz v2, :cond_0

    if-eq v2, v0, :cond_0

    .line 2537
    :goto_0
    return v0

    .line 2535
    :cond_0
    const-string v0, "CallLogUtil"

    const-string v2, "isCDMANetworkReady() failed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public static isGSMNetworkReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2541
    const/4 v1, 0x0

    .line 2542
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 2543
    if-eqz v2, :cond_0

    if-eq v2, v0, :cond_0

    .line 2548
    :goto_0
    return v0

    .line 2546
    :cond_0
    const-string v0, "CallLogUtil"

    const-string v2, "isGSMNetworkReady() failed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public static isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 2379
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2380
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2383
    :goto_0
    return v0

    .line 2380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2383
    :cond_2
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static make133CallbackCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .local v0, callIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    const-string v1, "ctc_133callbackcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    return-void
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 135
    move-object v1, p1

    .line 137
    .local v1, numberString:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .local v0, callIntent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    const-string v2, "feature_assistdialing"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "origin"

    const-string v3, "from_dialer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void

    .line 141
    .end local v0           #callIntent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #callIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static makeCallForResult(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "number"
    .parameter "isDirectCall"

    .prologue
    const/4 v4, 0x0

    .line 154
    move-object v1, p1

    .line 156
    .local v1, numberString:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .local v0, callIntent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    const-string v2, "feature_assistdialing"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string v2, "origin"

    const-string v3, "from_dialer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :cond_0
    if-eqz p2, :cond_1

    .line 168
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    const-string v3, "CallLogUtil"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "ctc_roamingcall"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const-string v2, "directcall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    :cond_1
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    return-void

    .line 160
    .end local v0           #callIntent:Landroid/content/Intent;
    .restart local p0
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #callIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static makeIntlRoamingCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .local v0, callIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    const-string v1, "ctc_roamingcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method public static makeSms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    .line 943
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 944
    .local v1, isMMSAvailable:Z
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 945
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    const-string v4, ","

    const-string v5, "P"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const-string v6, "W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 947
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 951
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 949
    :cond_0
    const v2, 0x7f0d0311

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static mobileHeaderSearch([BII)I
    .locals 5
    .parameter "header"
    .parameter "iNum"
    .parameter "count"

    .prologue
    .line 1750
    const/4 v2, 0x0

    .line 1751
    .local v2, i:I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 1752
    .local v1, buffer2:[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 1754
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    mul-int/2addr v4, v2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1755
    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1756
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedShort([B)I

    move-result v0

    .line 1757
    .local v0, areaCode:I
    if-ne v0, p1, :cond_0

    .line 1762
    .end local v0           #areaCode:I
    .end local v2           #i:I
    :goto_1
    return v2

    .line 1752
    .restart local v0       #areaCode:I
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1762
    .end local v0           #areaCode:I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const v10, 0x7f0d0359

    const v9, 0x7f0d02f8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 736
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, rejectNumer:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    :cond_0
    const-string v3, "CallLogUtil"

    const-string v4, "invalid number"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const v3, 0x7f0d0435

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 940
    :goto_0
    return-void

    .line 742
    :cond_1
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aput-boolean v7, v5, v8

    aput-boolean v7, v4, v7

    aput-boolean v7, v3, v6

    .line 744
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "separate_call_reject"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 747
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v6

    aput-boolean v5, v3, v6

    .line 748
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVideoCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v7

    aput-boolean v5, v3, v7

    .line 749
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v8

    aput-boolean v5, v3, v8

    .line 751
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    const v3, 0x7f0d03c0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v6

    const v3, 0x7f0d03c1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v7

    const v3, 0x7f0d03c2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v8

    .line 757
    .local v1, mEntries:[Ljava/lang/CharSequence;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$1;

    invoke-direct {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$1;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$2;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    :goto_1
    const v3, 0x7f0d03be

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 877
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 878
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;

    invoke-direct {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;-><init>()V

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;

    invoke-direct {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    .line 899
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 939
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 818
    .end local v1           #mEntries:[Ljava/lang/CharSequence;
    :cond_2
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v6

    aput-boolean v5, v3, v6

    .line 819
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v7

    aput-boolean v5, v3, v7

    .line 821
    new-array v1, v8, [Ljava/lang/CharSequence;

    const v3, 0x7f0d03bf

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v6

    const v3, 0x7f0d03c2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v7

    .line 826
    .restart local v1       #mEntries:[Ljava/lang/CharSequence;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$3;

    invoke-direct {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$3;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 894
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public static randomThumbnail(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 1078
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1080
    .local v1, mRandomizer:Ljava/util/Random;
    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 1087
    .local v0, fallbacks:[I
    const/4 v2, 0x0

    .line 1088
    .local v2, randomNum:I
    if-nez p0, :cond_0

    .line 1089
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1092
    :goto_0
    aget v3, v0, v2

    return v3

    .line 1091
    :cond_0
    rem-int/lit8 v2, p0, 0x5

    goto :goto_0

    .line 1080
    nop

    :array_0
    .array-data 0x4
        0x64t 0x3t 0x2t 0x7ft
        0x65t 0x3t 0x2t 0x7ft
        0x66t 0x3t 0x2t 0x7ft
        0x67t 0x3t 0x2t 0x7ft
        0x68t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public static readUnsignedInt([B)J
    .locals 11
    .parameter "bytes"

    .prologue
    .line 1715
    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 1716
    .local v0, b0:J
    const/4 v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 1717
    .local v2, b1:J
    const/4 v8, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 1718
    .local v4, b2:J
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 1719
    .local v6, b3:J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public static readUnsignedShort([B)I
    .locals 3
    .parameter "bytes"

    .prologue
    .line 1724
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 1725
    .local v0, b0:I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    .line 1726
    .local v1, b1:I
    or-int v2, v0, v1

    return v2
.end method

.method public static sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "number"

    .prologue
    const v5, 0x7f0d02f6

    const v7, 0x7f0d0125

    const/4 v6, 0x1

    .line 954
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v3

    .line 955
    .local v3, isMMSAvailable:Z
    if-eqz v3, :cond_3

    .line 956
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 957
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 958
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 961
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 963
    .local v1, infoBuffer:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 964
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 971
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const-string v4, "sms_body"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 985
    .end local v1           #infoBuffer:Ljava/lang/StringBuffer;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 966
    .restart local v1       #infoBuffer:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 967
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 968
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 977
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 979
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 980
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 983
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #infoBuffer:Ljava/lang/StringBuffer;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const v4, 0x7f0d0311

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static setSystemTime()V
    .locals 3

    .prologue
    .line 2291
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2292
    return-void
.end method

.method static teleBinarySearch([BII)I
    .locals 6
    .parameter "telephoneCityProvince"
    .parameter "iNum"
    .parameter "count"

    .prologue
    .line 1732
    const/4 v2, 0x0

    .line 1733
    .local v2, i:I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 1735
    .local v1, buffer2:[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 1737
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1738
    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1739
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedShort([B)I

    move-result v0

    .line 1740
    .local v0, areaCode:I
    if-ne v0, p1, :cond_0

    .line 1745
    .end local v0           #areaCode:I
    .end local v2           #i:I
    :goto_1
    return v2

    .line 1735
    .restart local v0       #areaCode:I
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1745
    .end local v0           #areaCode:I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static unblockContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .parameter "context"
    .parameter "number"

    .prologue
    .line 385
    const/4 v9, 0x0

    .line 386
    .local v9, nReject_match:I
    const/4 v13, 0x1

    .line 387
    .local v13, reject_checked:I
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 388
    .local v11, rejectNum:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v15, where:Ljava/lang/StringBuilder;
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 391
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_0

    .line 392
    const-string v1, "CallLogUtil"

    const-string v2, "unblockContact"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 395
    const-string v1, "reject_number"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, " LIKE "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "\'%"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :goto_0
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, " AND reject_checked="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reject_number"

    aput-object v2, v3, v1

    .line 413
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 417
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_a

    .line 418
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 419
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_1

    .line 420
    const-string v1, "CallLogUtil"

    const-string v2, "unblockContact - Cursor c count is zero"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 478
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 479
    const v1, 0x7f0d0327

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 481
    :cond_3
    return-void

    .line 400
    :cond_4
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 423
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_5
    const/4 v8, 0x0

    .line 424
    .local v8, i:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v10, numsBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 429
    :cond_6
    const-string v1, "reject_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 430
    .local v12, rejectNumber:Ljava/lang/String;
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_7

    .line 431
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockContact : rejectNumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "number"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 434
    add-int/lit8 v8, v8, 0x1

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, " , "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 439
    const-string v1, "-1"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 443
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_9

    .line 444
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_9
    if-lez v8, :cond_2

    .line 447
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v14, unblockWhere:Ljava/lang/StringBuilder;
    const-string v1, "reject_number"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, " IN ( "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v1, " )"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v1, " AND reject_match="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, " AND reject_checked="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 463
    .end local v8           #i:I
    .end local v10           #numsBuilder:Ljava/lang/StringBuilder;
    .end local v12           #rejectNumber:Ljava/lang/String;
    .end local v14           #unblockWhere:Ljava/lang/StringBuilder;
    :cond_a
    const-string v1, "CallLogUtil"

    const-string v2, "unblockContact - Cursor c is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 467
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_b
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static unblockMessageContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "number"

    .prologue
    .line 645
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 647
    .local v9, rejectNum:Ljava/lang/String;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 648
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v13, where:Ljava/lang/StringBuilder;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "CallLogUtil"

    const-string v1, "unblockMessageContact"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 654
    const-string v0, "filter"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v0, " LIKE "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v0, "\'%"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string v0, " AND filter_type="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    const-string v0, " AND enable="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    const-string v0, " AND criteria="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "filter"

    aput-object v1, v2, v0

    .line 675
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 679
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_9

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 681
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_1

    .line 682
    const-string v0, "CallLogUtil"

    const-string v1, "unblockMessageContact - Cursor c count is zero"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 732
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #where:Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void

    .line 659
    .restart local v13       #where:Ljava/lang/StringBuilder;
    :cond_3
    const-string v0, "filter="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v0, "\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v13, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 685
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_4
    const/4 v7, 0x0

    .line 686
    .local v7, i:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .local v8, numsBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 691
    :cond_5
    const-string v0, "filter"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 693
    .local v10, rejectNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_6

    .line 694
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unblockMessageContact : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_6
    invoke-static {v10, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 697
    add-int/lit8 v7, v7, 0x1

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v0, " , "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 702
    const-string v0, "-1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 706
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_8

    .line 707
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unblockMessageContact"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_8
    if-lez v7, :cond_2

    .line 710
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v12, unblockWhere:Ljava/lang/StringBuilder;
    const-string v0, "filter"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v0, " IN ( "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v0, " )"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v0, " AND filter_type=0"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v0, " AND enable=1"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v0, " AND criteria=0"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 725
    .end local v7           #i:I
    .end local v8           #numsBuilder:Ljava/lang/StringBuilder;
    .end local v10           #rejectNumber:Ljava/lang/String;
    .end local v12           #unblockWhere:Ljava/lang/StringBuilder;
    :cond_9
    const-string v0, "CallLogUtil"

    const-string v1, "unblockMessageContact - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 728
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #where:Ljava/lang/StringBuilder;
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 729
    .local v11, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-virtual {v0, v1, v11, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static unblockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .parameter "context"
    .parameter "number"

    .prologue
    .line 530
    const/4 v9, 0x0

    .line 531
    .local v9, nReject_match:I
    const/4 v13, 0x1

    .line 532
    .local v13, reject_checked:I
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, rejectNum:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v15, where:Ljava/lang/StringBuilder;
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 536
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_0

    .line 537
    const-string v1, "CallLogUtil"

    const-string v2, "unblockVideoCallContact"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 540
    const-string v1, "reject_number"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, " LIKE "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, "\'%"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_0
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, " AND reject_checked="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reject_number"

    aput-object v2, v3, v1

    .line 558
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 562
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_a

    .line 563
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 564
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_1

    .line 565
    const-string v1, "CallLogUtil"

    const-string v2, "unblockVideoCallContact - Cursor c count is zero"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 622
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 623
    const v1, 0x7f0d0327

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 625
    :cond_3
    return-void

    .line 545
    :cond_4
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 568
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_5
    const/4 v8, 0x0

    .line 569
    .local v8, i:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v10, numsBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 574
    :cond_6
    const-string v1, "reject_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 575
    .local v12, rejectNumber:Ljava/lang/String;
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_7

    .line 576
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockVideoCallContact : rejectNumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "number"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 579
    add-int/lit8 v8, v8, 0x1

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, " , "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 584
    const-string v1, "-1"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 588
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_9

    .line 589
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockVideoCallContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_9
    if-lez v8, :cond_2

    .line 592
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .local v14, unblockWhere:Ljava/lang/StringBuilder;
    const-string v1, "reject_number"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, " IN ( "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, " )"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, " AND reject_match="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, " AND reject_checked="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 608
    .end local v8           #i:I
    .end local v10           #numsBuilder:Ljava/lang/StringBuilder;
    .end local v12           #rejectNumber:Ljava/lang/String;
    .end local v14           #unblockWhere:Ljava/lang/StringBuilder;
    :cond_a
    const-string v1, "CallLogUtil"

    const-string v2, "unblockVideoCallContact - Cursor c is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 611
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_b
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static updateContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 298
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "sip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :goto_0
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v1, "hidecreatelabel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    return-void

    .line 301
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static updateMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    .line 1683
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1685
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, rejectNum:Ljava/lang/String;
    const-string v3, "enable"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1689
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    const-string v3, " = ?AND filter_type = 0  AND enable = 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms-sms/spam-filter"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1695
    return v8
.end method

.method public static updateVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    .line 1495
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1497
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, rejectNum:Ljava/lang/String;
    const-string v3, "reject_checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "reject_number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const-string v3, " = ? AND reject_match = 0 AND reject_checked = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1506
    return v8
.end method

.method public static updateVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    .line 1308
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1310
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, rejectNum:Ljava/lang/String;
    const-string v3, "reject_checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1314
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "reject_number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    const-string v3, " = ? AND reject_match = 0 AND reject_checked = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1319
    return v8
.end method

.method public static viewContact(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "contactID"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, bufId:Ljava/lang/StringBuffer;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 316
    return-void
.end method
