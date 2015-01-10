.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$DialogSearchMenuBlockKeyListener;,
        Lcom/android/mms/ui/MessageUtils$CachedDate;,
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field public static final ACTION_RECEIVED_MMS:Ljava/lang/String; = "com.sec.mms.intent.action.MMS_RECEIVED"

.field public static final ACTION_RECEIVED_SMS:Ljava/lang/String; = "com.sec.mms.intent.action.SMS_RECEIVED"

.field public static final ANONYMOUS_MESSAGE_SENDER:Ljava/lang/String; = "Anonymous"

.field private static final AUTOREJECT_AUTHORITY:Ljava/lang/String; = "com.android.phone.callsettings"

.field private static final AUTOREJECT_CHECKED:Ljava/lang/String; = "reject_checked"

.field private static final AUTOREJECT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final AUTOREJECT_MATCH:Ljava/lang/String; = "reject_match"

.field private static final AUTOREJECT_MODE:Ljava/lang/String; = "autoreject_mode"

.field private static final AUTOREJECT_NUMBER:Ljava/lang/String; = "reject_number"

.field private static final AUTOREJECT_TABLE:Ljava/lang/String; = "reject_num"

.field private static final AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri; = null

.field private static final AUTOREJECT_VIDEOCALL_MODE:Ljava/lang/String; = "autoreject_videocall_mode"

.field private static final AUTOREJECT_VIDEOCALL_TABLE:Ljava/lang/String; = "reject_videocall_num"

.field public static final BLACK_CALL_NUM:I = 0x2

.field public static final BLACK_MESSAGE_NUM:I = 0x1

.field public static final CB_MESSAGE_SENDER:Ljava/lang/String; = "CBmessages"

.field public static final CMAS_MESSAGE_SENDER:Ljava/lang/String; = "#CMAS#CMASALL"

.field public static final CMAS_MESSAGE_SENDER_PREFIX:Ljava/lang/String; = "#CMAS#"

.field public static final CMAS_MESSAGE_SENDER_PRESIDENTIAL:Ljava/lang/String; = "#CMAS#Presidential"

.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final DAY_UNIT_CHINA:Ljava/lang/String; = "\u65e5"

.field private static final DAY_UNIT_JAPAN:Ljava/lang/String; = "\u65e5"

.field private static final DAY_UNIT_KOREA:Ljava/lang/String; = "\uc77c"

.field public static final EXTRA_CALL_DIRECTCALL:Ljava/lang/String; = "android.phone.extra.CALL_DIRECTCALL"

.field public static final EXTRA_RECEIVED_USERNAME:Ljava/lang/String; = "DisplayName"

.field public static final IMAGE_COMPRESSION_QUALITY:I = 0x50

.field public static final MINIMUM_IMAGE_COMPRESSION_QUALITY:I = 0x28

.field private static MIN_MATCH_CHINA:I = 0x0

.field public static final MYFILES_ACTION_PICK:Ljava/lang/String; = "com.sec.android.app.myfiles.PICK_DATA "

.field public static final MYFILES_PKG_NAME:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field private static final NUMERIC_CHARS_SUGAR:[C = null

.field private static final PART_13_CHARS_UNICODE:[C = null

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SMS_GROUP_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessageUtils"

.field private static final UNKNOWN_MODE:Ljava/lang/String; = "unknown_mode"

.field private static Usmtimesendfaid:Z = false

.field private static final VIDEO_CALL_INTENT_ACTION:Ljava/lang/String; = "com.android.phone.videocall"

.field public static final VZWPHONE:Ljava/util/regex/Pattern; = null

.field public static final WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri; = null

.field public static final WAP_PUSH_MESSAGE_SENDER:Ljava/lang/String; = "Pushmessage"

.field public static final WHITE_CALL_NUM:I = 0x4

.field public static final WHITE_MESSAGE_NUM:I = 0x3

.field private static final YEAR_UNIT_CHINA:Ljava/lang/String; = "\u5e74"

.field private static final YEAR_UNIT_JAPAN:Ljava/lang/String; = "\u5e74"

.field private static final YEAR_UNIT_KOREA:Ljava/lang/String; = "\ub144"

.field private static mBlockChecked:[Z

.field private static mBlockCheckedBefore:[Z

.field private static mCountryDetector:Landroid/location/CountryDetector;

.field private static mCountryISO:Ljava/lang/String;

.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mIsHeadsetPlugged:Z

.field public static mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

.field public static mStorageListener:Landroid/os/storage/StorageEventListener;

.field public static mStorageManager:Landroid/os/storage/StorageManager;

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static part13charsMap_UNICIDE:Ljava/util/HashMap;

.field private static sDateOrder:[C

.field private static sLocalNumber:Ljava/lang/String;

.field private static sNow:Ljava/util/Calendar;

.field private static sOldDateOrderValue:Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBlockContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 188
    new-instance v2, Lcom/android/mms/ui/MessageUtils$DialogSearchMenuBlockKeyListener;

    invoke-direct {v2, v6}, Lcom/android/mms/ui/MessageUtils$DialogSearchMenuBlockKeyListener;-><init>(Lcom/android/mms/ui/MessageUtils$1;)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 190
    sput-boolean v5, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    .line 232
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "wap-push-messages"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    .line 237
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "group"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 260
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 267
    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 271
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 275
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    const/16 v2, 0x4d

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    .line 293
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    .line 296
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 297
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v3, v3, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    .line 304
    const-string v2, "null"

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 307
    new-instance v2, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$1;-><init>()V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 311
    sput-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 312
    const-string v2, ""

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 313
    sput-boolean v5, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    .line 317
    new-array v2, v7, [Z

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    .line 318
    new-array v2, v7, [Z

    fill-array-data v2, :array_3

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    .line 320
    const/16 v2, 0xb

    sput v2, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    .line 333
    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    .line 337
    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    .line 342
    sput-boolean v5, Lcom/android/mms/ui/MessageUtils;->Usmtimesendfaid:Z

    .line 350
    const-string v2, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]*[0-9])"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->VZWPHONE:Ljava/util/regex/Pattern;

    .line 360
    sput-object v6, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    .line 361
    const-string v2, "KR"

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    .line 7648
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, " count(*) "

    aput-object v3, v2, v5

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void

    .line 267
    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x2et 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data

    .line 280
    :array_1
    .array-data 0x2
        0x60t 0x24t
        0x61t 0x24t
        0x62t 0x24t
        0x63t 0x24t
        0x64t 0x24t
        0x65t 0x24t
        0x66t 0x24t
        0x67t 0x24t
        0x68t 0x24t
        0x69t 0x24t
        0x6at 0x24t
        0x6bt 0x24t
        0x6ct 0x24t
        0x6dt 0x24t
        0x6et 0x24t
        0x6ft 0x24t
        0x70t 0x24t
        0x71t 0x24t
        0x72t 0x24t
        0x73t 0x24t
        0x60t 0x21t
        0x61t 0x21t
        0x62t 0x21t
        0x63t 0x21t
        0x64t 0x21t
        0x65t 0x21t
        0x66t 0x21t
        0x67t 0x21t
        0x68t 0x21t
        0x69t 0x21t
        0x6at 0x21t
        0x49t 0x33t
        0x14t 0x33t
        0x22t 0x33t
        0x4dt 0x33t
        0x18t 0x33t
        0x27t 0x33t
        0x3t 0x33t
        0x36t 0x33t
        0x51t 0x33t
        0x57t 0x33t
        0xdt 0x33t
        0x26t 0x33t
        0x23t 0x33t
        0x2bt 0x33t
        0x4at 0x33t
        0x3bt 0x33t
        0x9ct 0x33t
        0x9dt 0x33t
        0x9et 0x33t
        0x8et 0x33t
        0x8ft 0x33t
        0xc4t 0x33t
        0xa1t 0x33t
        0x6bt 0x21t
        0x7bt 0x33t
        0x1dt 0x30t
        0x1ft 0x30t
        0x16t 0x21t
        0xcdt 0x33t
        0x21t 0x21t
        0xa4t 0x32t
        0xa5t 0x32t
        0xa6t 0x32t
        0xa7t 0x32t
        0xa8t 0x32t
        0x31t 0x32t
        0x32t 0x32t
        0x39t 0x32t
        0x7et 0x33t
        0x7dt 0x33t
        0x7ct 0x33t
        0x2et 0x22t
        0x1ft 0x22t
        0xbft 0x22t
        0x56t 0x27t
        0x1et 0x26t
    .end array-data

    .line 317
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 318
    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method public static CheckAvailbleCallRejectList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 6784
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v9

    .line 6787
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

    .line 6791
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 6792
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 6793
    .local v8, nRejectDBsize:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6795
    const/4 v7, 0x0

    .line 6796
    .local v7, max_rejectDB_size:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 6799
    if-lt v8, v7, :cond_0

    .line 6803
    const-string v0, "Mms/MessageUtils"

    const-string v1, "CheckAvailbleCallRejectList false"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 6809
    .end local v7           #max_rejectDB_size:I
    .end local v8           #nRejectDBsize:I
    :goto_0
    return v0

    .line 6808
    :cond_0
    const-string v0, "Mms/MessageUtils"

    const-string v1, "CheckAvailbleCallRejectList true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 6809
    goto :goto_0
.end method

.method public static GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "paint"
    .parameter "width"

    .prologue
    const/4 v4, 0x0

    .line 5955
    const-string v3, "W"

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    .line 5956
    .local v0, charW:I
    div-int v1, p2, v0

    .line 5957
    .local v1, cnt:I
    move v2, v1

    .line 5960
    .local v2, ret:I
    :goto_0
    invoke-virtual {p1, p0, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    float-to-int v3, v3

    if-ge p2, v3, :cond_2

    .line 5961
    if-ge v2, v1, :cond_1

    .line 5964
    add-int/lit8 v1, v1, -0x1

    .line 5981
    :cond_0
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5969
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5971
    :cond_2
    if-gt v2, v1, :cond_0

    .line 5974
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 2
    .parameter "str"
    .parameter "paint"

    .prologue
    .line 5948
    const/4 v0, 0x0

    .line 5949
    .local v0, ret:I
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 5950
    return v0
.end method

.method public static HasKeyboard(Landroid/content/Context;)Z
    .locals 2
    .parameter "mContext"

    .prologue
    .line 7883
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 7885
    .local v0, mKeyboard:I
    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_0

    .line 7886
    const/4 v1, 0x1

    .line 7887
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static LanguageSize(Ljava/lang/String;)I
    .locals 3
    .parameter "locale"

    .prologue
    .line 5192
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System locale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5193
    const-string v0, "de"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5194
    const/4 v0, 0x1

    .line 5266
    :goto_0
    return v0

    .line 5195
    :cond_0
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5196
    const/4 v0, 0x2

    goto :goto_0

    .line 5197
    :cond_1
    const-string v0, "bg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5198
    const/4 v0, 0x3

    goto :goto_0

    .line 5199
    :cond_2
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5200
    const/4 v0, 0x4

    goto :goto_0

    .line 5201
    :cond_3
    const-string v0, "ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5202
    const/4 v0, 0x5

    goto :goto_0

    .line 5203
    :cond_4
    const-string v0, "el"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5204
    const/4 v0, 0x6

    goto :goto_0

    .line 5205
    :cond_5
    const-string v0, "uk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5206
    const/4 v0, 0x7

    goto :goto_0

    .line 5207
    :cond_6
    const-string v0, "lt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5208
    const/16 v0, 0x8

    goto :goto_0

    .line 5209
    :cond_7
    const-string v0, "hu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5210
    const/16 v0, 0x9

    goto :goto_0

    .line 5211
    :cond_8
    const-string v0, "cs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5212
    const/16 v0, 0xa

    goto :goto_0

    .line 5213
    :cond_9
    const-string v0, "es"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5214
    const/16 v0, 0xb

    goto :goto_0

    .line 5215
    :cond_a
    const-string v0, "fr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5216
    const/16 v0, 0xc

    goto :goto_0

    .line 5217
    :cond_b
    const-string v0, "it"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5218
    const/16 v0, 0xd

    goto :goto_0

    .line 5219
    :cond_c
    const-string v0, "sk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5220
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 5221
    :cond_d
    const-string v0, "et"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5222
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 5223
    :cond_e
    const-string v0, "tr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5224
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 5225
    :cond_f
    const-string v0, "sr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5226
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 5227
    :cond_10
    const-string v0, "nl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5228
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 5229
    :cond_11
    const-string v0, "hr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5230
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 5231
    :cond_12
    const-string v0, "fi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5232
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 5233
    :cond_13
    const-string v0, "da"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5234
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 5235
    :cond_14
    const-string v0, "is"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5236
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 5237
    :cond_15
    const-string v0, "ga"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5238
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 5239
    :cond_16
    const-string v0, "kk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5240
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 5241
    :cond_17
    const-string v0, "lv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5242
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 5243
    :cond_18
    const-string v0, "mk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5244
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 5245
    :cond_19
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5246
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 5247
    :cond_1a
    const-string v0, "pl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5248
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 5249
    :cond_1b
    const-string v0, "sl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5250
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 5251
    :cond_1c
    const-string v0, "sv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5252
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 5253
    :cond_1d
    const-string v0, "ko"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5254
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 5255
    :cond_1e
    const-string v0, "vi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5256
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 5257
    :cond_1f
    const-string v0, "th"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5258
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 5259
    :cond_20
    const-string v0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5260
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 5261
    :cond_21
    const-string v0, "id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5262
    const/16 v0, 0x23

    goto/16 :goto_0

    .line 5263
    :cond_22
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5264
    const/16 v0, 0x24

    goto/16 :goto_0

    .line 5266
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static SaveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter "bitmap"
    .parameter "strFilePath"

    .prologue
    .line 7501
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7502
    .local v1, fileCacheItem:Ljava/io/File;
    const/4 v2, 0x0

    .line 7504
    .local v2, out:Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 7505
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 7509
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 7510
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7512
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 7517
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 7522
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 7518
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 7519
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    .line 7521
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 7513
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 7514
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7517
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 7518
    :catch_2
    move-exception v0

    .line 7519
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 7516
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 7517
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 7520
    :goto_3
    throw v4

    .line 7518
    :catch_3
    move-exception v0

    .line 7519
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 7516
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 7513
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"
    .parameter "text"

    .prologue
    const/4 v5, 0x1

    .line 7088
    const/4 v1, 0x0

    .line 7089
    .local v1, isSpam:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isVIPModeOn(Landroid/content/Context;)I

    move-result v0

    .line 7091
    .local v0, MessageBlockMode:I
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamMessageFilterForVIPMode - number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7094
    if-ne v0, v5, :cond_1

    .line 7095
    const/4 v1, 0x1

    .line 7116
    :cond_0
    :goto_0
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamMessageFilterForVIPMode: isSpam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7118
    return v1

    .line 7096
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 7097
    if-eqz p1, :cond_2

    .line 7098
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->isVIPModeBlackNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 7099
    const/4 v1, 0x1

    .line 7103
    :cond_2
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 7104
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->isVIPModeBlackStringMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 7105
    const/4 v1, 0x1

    goto :goto_0

    .line 7108
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 7109
    if-eqz p1, :cond_0

    .line 7110
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->isVIPModeWhiteNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7111
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 6723
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6724
    const/4 v0, 0x1

    .line 6727
    :cond_0
    return v0
.end method

.method static synthetic access$100()[Z
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    return-object v0
.end method

.method public static calibrationDone(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .parameter "activity"
    .parameter "name"
    .parameter "clibration"

    .prologue
    .line 7381
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7382
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7384
    return-void
.end method

.method public static canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4
    .parameter "contact"

    .prologue
    const/4 v2, 0x0

    .line 2785
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2786
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2787
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2788
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2802
    .end local v0           #c:C
    :cond_0
    :goto_0
    return v2

    .line 2792
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2793
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2794
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2799
    .end local v0           #c:C
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2802
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static changeApn(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "apn"

    .prologue
    const/4 v7, 0x0

    .line 6867
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[changeApn] apn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getApnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6868
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getCurrentApn(Landroid/content/Context;)I

    move-result v0

    .line 6869
    .local v0, currentApn:I
    if-ne v0, p1, :cond_0

    .line 6870
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[changeApn] can\'t change : currentApn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getApnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  apn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getApnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6878
    :goto_0
    return-void

    .line 6873
    :cond_0
    const-string v4, "content://telephony/carriers/preferapn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6874
    .local v1, preferapnUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6875
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 6876
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6877
    invoke-virtual {v2, v1, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkArrayIndex(I[F)Z
    .locals 2
    .parameter "index"
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 6344
    if-nez p1, :cond_1

    .line 6350
    :cond_0
    :goto_0
    return v0

    .line 6347
    :cond_1
    if-ltz p0, :cond_0

    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 6350
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkArrayIndex(I[I)Z
    .locals 2
    .parameter "index"
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 6324
    if-nez p1, :cond_1

    .line 6330
    :cond_0
    :goto_0
    return v0

    .line 6327
    :cond_1
    if-ltz p0, :cond_0

    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 6330
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkArrayIndex(I[Ljava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 6334
    if-nez p1, :cond_1

    .line 6340
    :cond_0
    :goto_0
    return v0

    .line 6337
    :cond_1
    if-ltz p0, :cond_0

    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 6340
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkCSAvailability(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 3640
    const/4 v0, 0x0

    .line 3642
    .local v0, bRet:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3643
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->checkCSAvailability_SKT(Landroid/content/Context;Z)Z

    move-result v0

    .line 3650
    :cond_0
    :goto_0
    return v0

    .line 3644
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3645
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->checkCSAvailability_KT(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0

    .line 3646
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3647
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->checkCSAvailability_LGU(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkCSAvailability_KT(Landroid/content/Context;Z)Z
    .locals 25
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 3780
    const/4 v3, 0x0

    .line 3782
    .local v3, bRet:Z
    const-string v20, "ril.skt.network_regist"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3783
    .local v16, rts:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneServiceState(Landroid/content/Context;)I

    move-result v17

    .line 3785
    .local v17, state:I
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RTS Code = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3787
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 3788
    :cond_0
    const/4 v3, 0x1

    .line 3789
    if-eqz p1, :cond_1

    .line 3790
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    move/from16 v20, v3

    .line 3967
    :goto_1
    return v20

    .line 3796
    :cond_2
    :try_start_0
    const-string v20, "Idle"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 3797
    .local v10, indexIdle:I
    const-string v20, "CS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 3798
    .local v9, indexCS:I
    const-string v20, "PS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 3799
    .local v11, indexPS:I
    const-string v20, "Status"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 3800
    .local v12, indexStatus:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v13

    .line 3802
    .local v13, length:I
    if-ltz v10, :cond_3

    if-ltz v9, :cond_3

    if-ltz v11, :cond_3

    if-lez v13, :cond_3

    if-gez v12, :cond_5

    .line 3803
    :cond_3
    if-eqz p1, :cond_4

    .line 3804
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3806
    :cond_4
    const/16 v20, 0x1

    goto :goto_1

    .line 3809
    :cond_5
    add-int/lit8 v20, v10, 0x4

    add-int/lit8 v21, v9, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 3810
    .local v7, idle:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3811
    .local v8, idleRejectCause:I
    add-int/lit8 v20, v9, 0x2

    add-int/lit8 v21, v11, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3812
    .local v4, cs:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3813
    .local v5, csRejectCause:I
    add-int/lit8 v20, v11, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3814
    .local v14, ps:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 3815
    .local v15, psRejectCause:I
    add-int/lit8 v20, v12, 0x6

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 3816
    .local v18, status:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 3825
    .local v19, statusCause:I
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "idleRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3826
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "csRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "psRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    if-nez v19, :cond_6

    .line 3829
    const/4 v3, 0x1

    .line 3831
    if-eqz p1, :cond_6

    .line 3832
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3836
    :cond_6
    if-nez v3, :cond_7

    .line 3837
    sparse-switch v5, :sswitch_data_0

    .line 3900
    :cond_7
    :goto_2
    if-nez v3, :cond_1

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 3902
    :cond_8
    sparse-switch v15, :sswitch_data_1

    .line 3957
    const/4 v3, 0x1

    .line 3958
    if-eqz p1, :cond_1

    .line 3959
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3818
    .end local v4           #cs:Ljava/lang/String;
    .end local v5           #csRejectCause:I
    .end local v7           #idle:Ljava/lang/String;
    .end local v8           #idleRejectCause:I
    .end local v9           #indexCS:I
    .end local v10           #indexIdle:I
    .end local v11           #indexPS:I
    .end local v12           #indexStatus:I
    .end local v13           #length:I
    .end local v14           #ps:Ljava/lang/String;
    .end local v15           #psRejectCause:I
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusCause:I
    :catch_0
    move-exception v6

    .line 3819
    .local v6, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_9

    .line 3820
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3822
    :cond_9
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 3839
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #cs:Ljava/lang/String;
    .restart local v5       #csRejectCause:I
    .restart local v7       #idle:Ljava/lang/String;
    .restart local v8       #idleRejectCause:I
    .restart local v9       #indexCS:I
    .restart local v10       #indexIdle:I
    .restart local v11       #indexPS:I
    .restart local v12       #indexStatus:I
    .restart local v13       #length:I
    .restart local v14       #ps:Ljava/lang/String;
    .restart local v15       #psRejectCause:I
    .restart local v18       #status:Ljava/lang/String;
    .restart local v19       #statusCause:I
    :sswitch_0
    const/4 v3, 0x1

    .line 3840
    if-eqz p1, :cond_7

    .line 3841
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a2

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2

    .line 3845
    :sswitch_1
    const/4 v3, 0x1

    .line 3846
    if-eqz p1, :cond_7

    .line 3847
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a3

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 3851
    :sswitch_2
    const/4 v3, 0x1

    .line 3852
    if-eqz p1, :cond_7

    .line 3853
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a4

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 3858
    :sswitch_3
    const/4 v3, 0x1

    .line 3859
    if-eqz p1, :cond_7

    .line 3860
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a5

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 3869
    :sswitch_4
    const/4 v3, 0x1

    .line 3870
    if-eqz p1, :cond_7

    .line 3871
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a8

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 3878
    :sswitch_5
    const/4 v3, 0x1

    .line 3879
    if-eqz p1, :cond_7

    .line 3880
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a6

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 3885
    :sswitch_6
    const/4 v3, 0x1

    .line 3886
    if-eqz p1, :cond_7

    .line 3887
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a6

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xfe

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 3892
    :sswitch_7
    const/4 v3, 0x1

    .line 3893
    if-eqz p1, :cond_7

    .line 3894
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a7

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xff

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 3904
    :sswitch_8
    const/4 v3, 0x1

    .line 3905
    if-eqz p1, :cond_1

    .line 3906
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a2

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3910
    :sswitch_9
    const/4 v3, 0x1

    .line 3911
    if-eqz p1, :cond_1

    .line 3912
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a3

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3916
    :sswitch_a
    const/4 v3, 0x1

    .line 3917
    if-eqz p1, :cond_1

    .line 3918
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a4

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3923
    :sswitch_b
    const/4 v3, 0x1

    .line 3924
    if-eqz p1, :cond_1

    .line 3925
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a5

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3934
    :sswitch_c
    const/4 v3, 0x1

    .line 3935
    if-eqz p1, :cond_1

    .line 3936
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a8

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3943
    :sswitch_d
    const/4 v3, 0x1

    .line 3944
    if-eqz p1, :cond_1

    .line 3945
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a6

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3950
    :sswitch_e
    const/4 v3, 0x1

    .line 3951
    if-eqz p1, :cond_1

    .line 3952
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a04a7

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xff

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3837
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xfe -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch

    .line 3902
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x8 -> :sswitch_c
        0xb -> :sswitch_c
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_d
        0x16 -> :sswitch_d
        0xff -> :sswitch_e
    .end sparse-switch
.end method

.method public static checkCSAvailability_LGU(Landroid/content/Context;Z)Z
    .locals 25
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 3971
    const/4 v3, 0x0

    .line 3973
    .local v3, bRet:Z
    const-string v20, "ril.skt.network_regist"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3974
    .local v16, rts:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneServiceState(Landroid/content/Context;)I

    move-result v17

    .line 3976
    .local v17, state:I
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RTS Code = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 3979
    :cond_0
    const/4 v3, 0x1

    .line 3980
    if-eqz p1, :cond_1

    .line 3981
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    move/from16 v20, v3

    .line 4136
    :goto_1
    return v20

    .line 3988
    :cond_2
    :try_start_0
    const-string v20, "Idle"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 3989
    .local v10, indexIdle:I
    const-string v20, "CS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 3990
    .local v9, indexCS:I
    const-string v20, "PS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 3991
    .local v11, indexPS:I
    const-string v20, "Status"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 3992
    .local v12, indexStatus:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v13

    .line 3994
    .local v13, length:I
    if-ltz v10, :cond_3

    if-ltz v9, :cond_3

    if-ltz v11, :cond_3

    if-lez v13, :cond_3

    if-gez v12, :cond_5

    .line 3995
    :cond_3
    if-eqz p1, :cond_4

    .line 3996
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 4000
    :cond_4
    const/16 v20, 0x1

    goto :goto_1

    .line 4003
    :cond_5
    add-int/lit8 v20, v10, 0x4

    add-int/lit8 v21, v9, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4004
    .local v7, idle:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4005
    .local v8, idleRejectCause:I
    add-int/lit8 v20, v9, 0x2

    add-int/lit8 v21, v11, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4006
    .local v4, cs:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4007
    .local v5, csRejectCause:I
    add-int/lit8 v20, v11, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 4008
    .local v14, ps:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 4009
    .local v15, psRejectCause:I
    add-int/lit8 v20, v12, 0x6

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4010
    .local v18, status:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 4021
    .local v19, statusCause:I
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "idleRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "csRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "psRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    packed-switch v5, :pswitch_data_0

    .line 4079
    :pswitch_0
    packed-switch v15, :pswitch_data_1

    .line 4114
    :cond_6
    :goto_2
    :pswitch_1
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 4115
    :cond_7
    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_0

    .line 4117
    :sswitch_0
    const/4 v3, 0x1

    .line 4118
    if-eqz p1, :cond_1

    .line 4119
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03a8

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4012
    .end local v4           #cs:Ljava/lang/String;
    .end local v5           #csRejectCause:I
    .end local v7           #idle:Ljava/lang/String;
    .end local v8           #idleRejectCause:I
    .end local v9           #indexCS:I
    .end local v10           #indexIdle:I
    .end local v11           #indexPS:I
    .end local v12           #indexStatus:I
    .end local v13           #length:I
    .end local v14           #ps:Ljava/lang/String;
    .end local v15           #psRejectCause:I
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusCause:I
    :catch_0
    move-exception v6

    .line 4013
    .local v6, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_8

    .line 4014
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 4018
    :cond_8
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 4026
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #cs:Ljava/lang/String;
    .restart local v5       #csRejectCause:I
    .restart local v7       #idle:Ljava/lang/String;
    .restart local v8       #idleRejectCause:I
    .restart local v9       #indexCS:I
    .restart local v10       #indexIdle:I
    .restart local v11       #indexPS:I
    .restart local v12       #indexStatus:I
    .restart local v13       #length:I
    .restart local v14       #ps:Ljava/lang/String;
    .restart local v15       #psRejectCause:I
    .restart local v18       #status:Ljava/lang/String;
    .restart local v19       #statusCause:I
    :pswitch_2
    const/4 v3, 0x1

    .line 4027
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03af

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4030
    :pswitch_3
    const/4 v3, 0x1

    .line 4031
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4034
    :pswitch_4
    const/4 v3, 0x1

    .line 4035
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b1

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4038
    :pswitch_5
    const/4 v3, 0x1

    .line 4039
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b2

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4043
    :pswitch_6
    const/4 v3, 0x1

    .line 4044
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b3

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4047
    :pswitch_7
    const/4 v3, 0x1

    .line 4048
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b4

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xb

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4051
    :pswitch_8
    const/4 v3, 0x1

    .line 4052
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b5

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xc

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4055
    :pswitch_9
    const/4 v3, 0x1

    .line 4056
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b6

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xd

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4059
    :pswitch_a
    const/4 v3, 0x1

    .line 4060
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b7

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xe

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4063
    :pswitch_b
    const/4 v3, 0x1

    .line 4064
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b8

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xf

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4067
    :pswitch_c
    const/4 v3, 0x1

    .line 4068
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b9

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4071
    :pswitch_d
    const/4 v3, 0x1

    .line 4072
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ba

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4075
    :pswitch_e
    const/4 v3, 0x1

    .line 4076
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03bb

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x16

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4081
    :pswitch_f
    const/4 v3, 0x1

    .line 4082
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4085
    :pswitch_10
    const/4 v3, 0x1

    .line 4086
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b1

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4090
    :pswitch_11
    const/4 v3, 0x1

    .line 4091
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b3

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4094
    :pswitch_12
    const/4 v3, 0x1

    .line 4095
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b4

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xb

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4098
    :pswitch_13
    const/4 v3, 0x1

    .line 4099
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b5

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xc

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4103
    :pswitch_14
    const/4 v3, 0x1

    .line 4104
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b6

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xd

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4107
    :pswitch_15
    const/4 v3, 0x1

    .line 4108
    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03b8

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xf

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    .line 4125
    :sswitch_1
    const/4 v3, 0x1

    .line 4126
    if-eqz p1, :cond_1

    .line 4127
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4024
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch

    .line 4079
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_f
        :pswitch_1
        :pswitch_1
        :pswitch_10
        :pswitch_1
        :pswitch_11
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_1
        :pswitch_15
    .end packed-switch

    .line 4115
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public static checkCSAvailability_SKT(Landroid/content/Context;Z)Z
    .locals 25
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 3654
    const/4 v3, 0x0

    .line 3656
    .local v3, bRet:Z
    const-string v20, "ril.skt.network_regist"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3657
    .local v16, rts:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneServiceState(Landroid/content/Context;)I

    move-result v17

    .line 3659
    .local v17, state:I
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RTS Code = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3661
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 3662
    :cond_0
    const/4 v3, 0x1

    .line 3663
    if-eqz p1, :cond_1

    .line 3664
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    move/from16 v20, v3

    .line 3776
    :goto_1
    return v20

    .line 3671
    :cond_2
    :try_start_0
    const-string v20, "Idle"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 3672
    .local v10, indexIdle:I
    const-string v20, "CS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 3673
    .local v9, indexCS:I
    const-string v20, "PS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 3674
    .local v11, indexPS:I
    const-string v20, "Status"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 3675
    .local v12, indexStatus:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v13

    .line 3677
    .local v13, length:I
    if-ltz v10, :cond_3

    if-ltz v9, :cond_3

    if-ltz v11, :cond_3

    if-lez v13, :cond_3

    if-gez v12, :cond_5

    .line 3678
    :cond_3
    if-eqz p1, :cond_4

    .line 3679
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3683
    :cond_4
    const/16 v20, 0x1

    goto :goto_1

    .line 3686
    :cond_5
    add-int/lit8 v20, v10, 0x4

    add-int/lit8 v21, v9, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 3687
    .local v7, idle:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3688
    .local v8, idleRejectCause:I
    add-int/lit8 v20, v9, 0x2

    add-int/lit8 v21, v11, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3689
    .local v4, cs:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3690
    .local v5, csRejectCause:I
    add-int/lit8 v20, v11, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3691
    .local v14, ps:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 3692
    .local v15, psRejectCause:I
    add-int/lit8 v20, v12, 0x6

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 3693
    .local v18, status:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 3704
    .local v19, statusCause:I
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "idleRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3705
    const-string v20, "Mms/MessageUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "csRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "psRejectCause : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    packed-switch v5, :pswitch_data_0

    .line 3742
    :cond_6
    :goto_2
    :pswitch_0
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 3743
    :cond_7
    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_0

    .line 3745
    :sswitch_0
    const/4 v3, 0x1

    .line 3746
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isSKTSIM(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 3747
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 3748
    if-eqz p1, :cond_1

    .line 3749
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03aa

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3695
    .end local v4           #cs:Ljava/lang/String;
    .end local v5           #csRejectCause:I
    .end local v7           #idle:Ljava/lang/String;
    .end local v8           #idleRejectCause:I
    .end local v9           #indexCS:I
    .end local v10           #indexIdle:I
    .end local v11           #indexPS:I
    .end local v12           #indexStatus:I
    .end local v13           #length:I
    .end local v14           #ps:Ljava/lang/String;
    .end local v15           #psRejectCause:I
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusCause:I
    :catch_0
    move-exception v6

    .line 3696
    .local v6, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_8

    .line 3697
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 3701
    :cond_8
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 3709
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #cs:Ljava/lang/String;
    .restart local v5       #csRejectCause:I
    .restart local v7       #idle:Ljava/lang/String;
    .restart local v8       #idleRejectCause:I
    .restart local v9       #indexCS:I
    .restart local v10       #indexIdle:I
    .restart local v11       #indexPS:I
    .restart local v12       #indexStatus:I
    .restart local v13       #length:I
    .restart local v14       #ps:Ljava/lang/String;
    .restart local v15       #psRejectCause:I
    .restart local v18       #status:Ljava/lang/String;
    .restart local v19       #statusCause:I
    :pswitch_1
    const/4 v3, 0x1

    .line 3710
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isSKTSIM(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 3711
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 3712
    if-eqz p1, :cond_6

    .line 3713
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03aa

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 3716
    :cond_9
    if-eqz p1, :cond_6

    .line 3717
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03a9

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 3721
    :cond_a
    if-eqz p1, :cond_6

    .line 3722
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03a8

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 3733
    :pswitch_2
    const/4 v3, 0x1

    .line 3734
    if-eqz p1, :cond_6

    .line 3735
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 3752
    :cond_b
    if-eqz p1, :cond_1

    .line 3753
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03a9

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3757
    :cond_c
    if-eqz p1, :cond_1

    .line 3758
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03a8

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3765
    :sswitch_1
    const/4 v3, 0x1

    .line 3766
    if-eqz p1, :cond_1

    .line 3767
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a03ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3707
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3743
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public static checkCallBlockAlreadyInUse(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 13
    .parameter "context"
    .parameter "address"
    .parameter "isVideocall"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 6987
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v11, v12

    .line 7035
    :goto_0
    return v11

    .line 6990
    :cond_1
    const/4 v11, 0x0

    .line 6991
    .local v11, retValue:Z
    const/4 v7, 0x0

    .line 6992
    .local v7, cur:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 6993
    .local v8, nReject_match:I
    const/4 v10, 0x1

    .line 6994
    .local v10, reject_checked:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 6995
    .local v6, FIND_WHERE:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    .line 7000
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    if-lt v0, v1, :cond_2

    .line 7001
    const-string v0, "reject_number"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7002
    const-string v0, " LIKE \'%"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7009
    :goto_1
    const-string v0, " AND reject_match = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7010
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7011
    const-string v0, " AND reject_checked = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7012
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7014
    if-nez p2, :cond_3

    .line 7015
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7019
    :goto_2
    if-nez v7, :cond_4

    .line 7020
    const-string v0, "Mms/MessageUtils"

    const-string v1, "checkCallBlockAlreadyInUse : false, cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v12

    .line 7021
    goto :goto_0

    .line 7005
    :cond_2
    const-string v0, "reject_number"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7006
    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 7017
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_2

    .line 7023
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7024
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 7026
    :cond_5
    const-string v0, "reject_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7027
    .local v9, rejectNumber:Ljava/lang/String;
    invoke-static {v9, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7028
    const-string v0, "Mms/MessageUtils"

    const-string v1, "checkCallBlockAlreadyInUse : true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7029
    const/4 v11, 0x1

    .line 7031
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7033
    .end local v9           #rejectNumber:Ljava/lang/String;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7034
    const/4 v7, 0x0

    .line 7035
    goto/16 :goto_0
.end method

.method public static checkPSAvailability(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 4146
    const/4 v0, 0x0

    .line 4148
    .local v0, bRet:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4149
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->checkPSAvailability_SKT(Landroid/content/Context;Z)Z

    move-result v0

    .line 4156
    :cond_0
    :goto_0
    return v0

    .line 4150
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4151
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->checkPSAvailability_KT(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0

    .line 4152
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4153
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->checkPSAvailability_LGU(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkPSAvailability_KT(Landroid/content/Context;Z)Z
    .locals 25
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 4319
    const/4 v6, 0x0

    .line 4320
    .local v6, bRet:Z
    const/4 v3, 0x0

    .line 4322
    .local v3, bDataNetworkEnable:Z
    const-string v22, "ril.skt.network_regist"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4324
    .local v19, rts:Ljava/lang/String;
    const-string v22, "Mms/MessageUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "RTS Code = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4326
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 4327
    :cond_0
    const/4 v6, 0x1

    .line 4328
    if-eqz p1, :cond_1

    .line 4329
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a03ab

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 4443
    :cond_1
    :goto_0
    if-nez v6, :cond_c

    .line 4466
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 4467
    const/4 v5, 0x0

    .line 4469
    .local v5, bDataRoamingEnabled:Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 4470
    const-string v22, "Mms/MessageUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkPSAvailability() bDataRoamingEnabled="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4475
    :goto_1
    if-nez v5, :cond_b

    .line 4476
    if-eqz p1, :cond_2

    .line 4477
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a03ae

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 4479
    :cond_2
    const/16 v22, 0x1

    .line 4508
    .end local v5           #bDataRoamingEnabled:Z
    :goto_2
    return v22

    .line 4336
    :cond_3
    :try_start_1
    const-string v22, "Idle"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 4337
    .local v13, indexIdle:I
    const-string v22, "CS"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 4338
    .local v12, indexCS:I
    const-string v22, "PS"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 4339
    .local v14, indexPS:I
    const-string v22, "Status"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 4340
    .local v15, indexStatus:I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v16

    .line 4342
    .local v16, length:I
    if-ltz v13, :cond_4

    if-ltz v12, :cond_4

    if-ltz v14, :cond_4

    if-lez v16, :cond_4

    if-gez v15, :cond_6

    .line 4343
    :cond_4
    if-eqz p1, :cond_5

    .line 4344
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a03ab

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 4348
    :cond_5
    const/16 v22, 0x1

    goto :goto_2

    .line 4351
    :cond_6
    add-int/lit8 v22, v13, 0x4

    add-int/lit8 v23, v12, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 4352
    .local v10, idle:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 4353
    .local v11, idleRejectCause:I
    add-int/lit8 v22, v12, 0x2

    add-int/lit8 v23, v14, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4354
    .local v7, cs:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4355
    .local v8, csRejectCause:I
    add-int/lit8 v22, v14, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 4356
    .local v17, ps:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 4357
    .local v18, psRejectCause:I
    add-int/lit8 v22, v15, 0x6

    add-int/lit8 v23, v13, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 4358
    .local v20, status:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    .line 4369
    .local v21, statusCause:I
    const-string v22, "Mms/MessageUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "idleRejectCause : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    const-string v22, "Mms/MessageUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "csRejectCause : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "psRejectCause : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    sparse-switch v18, :sswitch_data_0

    .line 4432
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    if-eqz v8, :cond_1

    if-eqz v18, :cond_1

    .line 4433
    :cond_7
    const/4 v6, 0x1

    .line 4434
    if-eqz p1, :cond_1

    .line 4435
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a03ab

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4360
    .end local v7           #cs:Ljava/lang/String;
    .end local v8           #csRejectCause:I
    .end local v10           #idle:Ljava/lang/String;
    .end local v11           #idleRejectCause:I
    .end local v12           #indexCS:I
    .end local v13           #indexIdle:I
    .end local v14           #indexPS:I
    .end local v15           #indexStatus:I
    .end local v16           #length:I
    .end local v17           #ps:Ljava/lang/String;
    .end local v18           #psRejectCause:I
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #statusCause:I
    :catch_0
    move-exception v9

    .line 4361
    .local v9, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_8

    .line 4362
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a03ab

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 4366
    :cond_8
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 4374
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #cs:Ljava/lang/String;
    .restart local v8       #csRejectCause:I
    .restart local v10       #idle:Ljava/lang/String;
    .restart local v11       #idleRejectCause:I
    .restart local v12       #indexCS:I
    .restart local v13       #indexIdle:I
    .restart local v14       #indexPS:I
    .restart local v15       #indexStatus:I
    .restart local v16       #length:I
    .restart local v17       #ps:Ljava/lang/String;
    .restart local v18       #psRejectCause:I
    .restart local v20       #status:Ljava/lang/String;
    .restart local v21       #statusCause:I
    :sswitch_0
    const/4 v6, 0x1

    .line 4375
    if-eqz p1, :cond_1

    .line 4376
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04a2

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4381
    :sswitch_1
    const/4 v6, 0x1

    .line 4382
    if-eqz p1, :cond_1

    .line 4383
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04a3

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4388
    :sswitch_2
    const/4 v6, 0x1

    .line 4389
    if-eqz p1, :cond_1

    .line 4390
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04a4

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4396
    :sswitch_3
    const/4 v6, 0x1

    .line 4397
    if-eqz p1, :cond_1

    .line 4398
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04aa

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4408
    :sswitch_4
    const/4 v6, 0x1

    .line 4409
    if-eqz p1, :cond_1

    .line 4410
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04a8

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4418
    :sswitch_5
    const/4 v6, 0x1

    .line 4419
    if-eqz p1, :cond_1

    .line 4420
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04a6

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4425
    :sswitch_6
    const/4 v6, 0x1

    .line 4426
    if-eqz p1, :cond_1

    .line 4427
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a04a7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4471
    .end local v7           #cs:Ljava/lang/String;
    .end local v8           #csRejectCause:I
    .end local v10           #idle:Ljava/lang/String;
    .end local v11           #idleRejectCause:I
    .end local v12           #indexCS:I
    .end local v13           #indexIdle:I
    .end local v14           #indexPS:I
    .end local v15           #indexStatus:I
    .end local v16           #length:I
    .end local v17           #ps:Ljava/lang/String;
    .end local v18           #psRejectCause:I
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #statusCause:I
    .restart local v5       #bDataRoamingEnabled:Z
    :catch_1
    move-exception v9

    .line 4472
    .local v9, e:Ljava/lang/Exception;
    const-string v22, "Mms/MessageUtils"

    const-string v23, "MMS Send:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4482
    .end local v5           #bDataRoamingEnabled:Z
    .end local v9           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v4, 0x0

    .line 4485
    .local v4, bDataNetworkEnabled:Z
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDataNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 4486
    const-string v22, "Mms/MessageUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkPSAvailability() bDataNetworkEnabled="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4491
    :goto_3
    if-nez v4, :cond_b

    .line 4492
    if-eqz p1, :cond_a

    .line 4493
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a043c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 4495
    :cond_a
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 4487
    :catch_2
    move-exception v9

    .line 4488
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v22, "Mms/MessageUtils"

    const-string v23, "MMS Send:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 4499
    .end local v4           #bDataNetworkEnabled:Z
    .end local v9           #e:Ljava/lang/Exception;
    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isGSMOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 4500
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a043b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 4503
    const/16 v22, 0x1

    goto/16 :goto_2

    :cond_c
    move/from16 v22, v6

    .line 4508
    goto/16 :goto_2

    .line 4372
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method public static checkPSAvailability_LGU(Landroid/content/Context;Z)Z
    .locals 28
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 4513
    const/4 v6, 0x0

    .line 4514
    .local v6, bRet:Z
    const/4 v3, 0x0

    .line 4516
    .local v3, bDataNetworkEnable:Z
    const-string v23, "ril.skt.network_regist"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4517
    .local v19, rts:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneServiceState(Landroid/content/Context;)I

    move-result v20

    .line 4519
    .local v20, state:I
    const-string v23, "Mms/MessageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RTS Code = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 4522
    :cond_0
    const/4 v6, 0x1

    .line 4523
    if-eqz p1, :cond_1

    .line 4524
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03ab

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4660
    :cond_1
    :goto_0
    if-nez v6, :cond_b

    .line 4683
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 4684
    const/4 v5, 0x0

    .line 4686
    .local v5, bDataRoamingEnabled:Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 4687
    const-string v23, "Mms/MessageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "checkPSAvailability() bDataRoamingEnabled="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4692
    :goto_1
    if-nez v5, :cond_a

    .line 4693
    if-eqz p1, :cond_2

    .line 4694
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03ae

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4696
    :cond_2
    const/16 v23, 0x1

    .line 4724
    .end local v5           #bDataRoamingEnabled:Z
    :goto_2
    return v23

    .line 4531
    :cond_3
    :try_start_1
    const-string v23, "Idle"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 4532
    .local v13, indexIdle:I
    const-string v23, "CS"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 4533
    .local v12, indexCS:I
    const-string v23, "PS"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 4534
    .local v14, indexPS:I
    const-string v23, "Status"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 4535
    .local v15, indexStatus:I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v16

    .line 4537
    .local v16, length:I
    if-ltz v13, :cond_4

    if-ltz v12, :cond_4

    if-ltz v14, :cond_4

    if-lez v16, :cond_4

    if-gez v15, :cond_6

    .line 4538
    :cond_4
    if-eqz p1, :cond_5

    .line 4539
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03ab

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4543
    :cond_5
    const/16 v23, 0x1

    goto :goto_2

    .line 4546
    :cond_6
    add-int/lit8 v23, v13, 0x4

    add-int/lit8 v24, v12, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 4547
    .local v10, idle:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 4548
    .local v11, idleRejectCause:I
    add-int/lit8 v23, v12, 0x2

    add-int/lit8 v24, v14, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4549
    .local v7, cs:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4550
    .local v8, csRejectCause:I
    add-int/lit8 v23, v14, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 4551
    .local v17, ps:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 4552
    .local v18, psRejectCause:I
    add-int/lit8 v23, v15, 0x6

    add-int/lit8 v24, v13, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 4553
    .local v21, status:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v22

    .line 4564
    .local v22, statusCause:I
    const-string v23, "Mms/MessageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "idleRejectCause : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4565
    const-string v23, "Mms/MessageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "csRejectCause : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "psRejectCause : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    packed-switch v18, :pswitch_data_0

    .line 4634
    :pswitch_0
    packed-switch v8, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_0

    .line 4636
    :pswitch_2
    const/4 v6, 0x1

    .line 4637
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b4

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xb

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4555
    .end local v7           #cs:Ljava/lang/String;
    .end local v8           #csRejectCause:I
    .end local v10           #idle:Ljava/lang/String;
    .end local v11           #idleRejectCause:I
    .end local v12           #indexCS:I
    .end local v13           #indexIdle:I
    .end local v14           #indexPS:I
    .end local v15           #indexStatus:I
    .end local v16           #length:I
    .end local v17           #ps:Ljava/lang/String;
    .end local v18           #psRejectCause:I
    .end local v21           #status:Ljava/lang/String;
    .end local v22           #statusCause:I
    :catch_0
    move-exception v9

    .line 4556
    .local v9, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_7

    .line 4557
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03ab

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4561
    :cond_7
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 4569
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #cs:Ljava/lang/String;
    .restart local v8       #csRejectCause:I
    .restart local v10       #idle:Ljava/lang/String;
    .restart local v11       #idleRejectCause:I
    .restart local v12       #indexCS:I
    .restart local v13       #indexIdle:I
    .restart local v14       #indexPS:I
    .restart local v15       #indexStatus:I
    .restart local v16       #length:I
    .restart local v17       #ps:Ljava/lang/String;
    .restart local v18       #psRejectCause:I
    .restart local v21       #status:Ljava/lang/String;
    .restart local v22       #statusCause:I
    :pswitch_3
    const/4 v6, 0x1

    .line 4570
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03af

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4574
    :pswitch_4
    const/4 v6, 0x1

    .line 4575
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4579
    :pswitch_5
    const/4 v6, 0x1

    .line 4580
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x6

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4584
    :pswitch_6
    const/4 v6, 0x1

    .line 4585
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b2

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x7

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4589
    :pswitch_7
    const/4 v6, 0x1

    .line 4590
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b3

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x8

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4594
    :pswitch_8
    const/4 v6, 0x1

    .line 4595
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b4

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xb

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4599
    :pswitch_9
    const/4 v6, 0x1

    .line 4600
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b5

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xc

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4604
    :pswitch_a
    const/4 v6, 0x1

    .line 4605
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b6

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xd

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4609
    :pswitch_b
    const/4 v6, 0x1

    .line 4610
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b7

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xe

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4614
    :pswitch_c
    const/4 v6, 0x1

    .line 4615
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b8

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xf

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4619
    :pswitch_d
    const/4 v6, 0x1

    .line 4620
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b9

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x10

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4624
    :pswitch_e
    const/4 v6, 0x1

    .line 4625
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03ba

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x11

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4629
    :pswitch_f
    const/4 v6, 0x1

    .line 4630
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03bb

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x16

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4641
    :pswitch_10
    const/4 v6, 0x1

    .line 4642
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b5

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xc

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4646
    :pswitch_11
    const/4 v6, 0x1

    .line 4647
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b6

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xd

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4651
    :pswitch_12
    const/4 v6, 0x1

    .line 4652
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a03b8

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0xf

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 4688
    .end local v7           #cs:Ljava/lang/String;
    .end local v8           #csRejectCause:I
    .end local v10           #idle:Ljava/lang/String;
    .end local v11           #idleRejectCause:I
    .end local v12           #indexCS:I
    .end local v13           #indexIdle:I
    .end local v14           #indexPS:I
    .end local v15           #indexStatus:I
    .end local v16           #length:I
    .end local v17           #ps:Ljava/lang/String;
    .end local v18           #psRejectCause:I
    .end local v21           #status:Ljava/lang/String;
    .end local v22           #statusCause:I
    .restart local v5       #bDataRoamingEnabled:Z
    :catch_1
    move-exception v9

    .line 4689
    .local v9, e:Ljava/lang/Exception;
    const-string v23, "Mms/MessageUtils"

    const-string v24, "MMS Send:"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4699
    .end local v5           #bDataRoamingEnabled:Z
    .end local v9           #e:Ljava/lang/Exception;
    :cond_8
    const/4 v4, 0x0

    .line 4702
    .local v4, bDataNetworkEnabled:Z
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDataNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 4703
    const-string v23, "Mms/MessageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "checkPSAvailability() bDataNetworkEnabled="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4708
    :goto_3
    if-nez v4, :cond_a

    .line 4709
    if-eqz p1, :cond_9

    .line 4710
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a043c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4712
    :cond_9
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 4704
    :catch_2
    move-exception v9

    .line 4705
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v23, "Mms/MessageUtils"

    const-string v24, "MMS Send:"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 4716
    .end local v4           #bDataNetworkEnabled:Z
    .end local v9           #e:Ljava/lang/Exception;
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isGSMOnly(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 4717
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a043b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 4720
    const/16 v23, 0x1

    goto/16 :goto_2

    :cond_b
    move/from16 v23, v6

    .line 4724
    goto/16 :goto_2

    .line 4567
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 4634
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_10
        :pswitch_11
        :pswitch_1
        :pswitch_12
    .end packed-switch
.end method

.method public static checkPSAvailability_SKT(Landroid/content/Context;Z)Z
    .locals 26
    .parameter "context"
    .parameter "bAlert"

    .prologue
    .line 4160
    const/4 v5, 0x0

    .line 4161
    .local v5, bRet:Z
    const/4 v3, 0x0

    .line 4163
    .local v3, bDataNetworkEnable:Z
    const-string v21, "ril.skt.network_regist"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4165
    .local v18, rts:Ljava/lang/String;
    const-string v21, "Mms/MessageUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RTS Code = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 4168
    :cond_0
    const/4 v5, 0x1

    .line 4169
    if-eqz p1, :cond_1

    .line 4170
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03ab

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 4267
    :cond_1
    :goto_0
    if-nez v5, :cond_b

    .line 4270
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 4271
    const/4 v4, 0x0

    .line 4273
    .local v4, bDataRoamingEnabled:Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 4274
    const-string v21, "Mms/MessageUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "checkPSAvailability() bDataRoamingEnabled="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4279
    :goto_1
    if-nez v4, :cond_a

    .line 4280
    if-eqz p1, :cond_2

    .line 4281
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03ae

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 4284
    :cond_2
    const/16 v21, 0x1

    .line 4313
    .end local v4           #bDataRoamingEnabled:Z
    :goto_2
    return v21

    .line 4176
    :cond_3
    :try_start_1
    const-string v21, "Idle"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 4177
    .local v12, indexIdle:I
    const-string v21, "CS"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 4178
    .local v11, indexCS:I
    const-string v21, "PS"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 4179
    .local v13, indexPS:I
    const-string v21, "Status"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 4180
    .local v14, indexStatus:I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v15

    .line 4182
    .local v15, length:I
    if-ltz v12, :cond_4

    if-ltz v11, :cond_4

    if-ltz v13, :cond_4

    if-lez v15, :cond_4

    if-gez v14, :cond_6

    .line 4183
    :cond_4
    if-eqz p1, :cond_5

    .line 4184
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03ab

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 4186
    :cond_5
    const/16 v21, 0x1

    goto :goto_2

    .line 4189
    :cond_6
    add-int/lit8 v21, v12, 0x4

    add-int/lit8 v22, v11, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 4190
    .local v9, idle:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 4191
    .local v10, idleRejectCause:I
    add-int/lit8 v21, v11, 0x2

    add-int/lit8 v22, v13, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4192
    .local v6, cs:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4193
    .local v7, csRejectCause:I
    add-int/lit8 v21, v13, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 4194
    .local v16, ps:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 4195
    .local v17, psRejectCause:I
    add-int/lit8 v21, v14, 0x6

    add-int/lit8 v22, v12, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 4196
    .local v19, status:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    .line 4207
    .local v20, statusCause:I
    const-string v21, "Mms/MessageUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "idleRejectCause : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4208
    const-string v21, "Mms/MessageUtils"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "csRejectCause : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "psRejectCause : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    packed-switch v17, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4212
    :pswitch_1
    const/4 v5, 0x1

    .line 4213
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isSKTSIM(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4214
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 4215
    if-eqz p1, :cond_1

    .line 4216
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03aa

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4198
    .end local v6           #cs:Ljava/lang/String;
    .end local v7           #csRejectCause:I
    .end local v9           #idle:Ljava/lang/String;
    .end local v10           #idleRejectCause:I
    .end local v11           #indexCS:I
    .end local v12           #indexIdle:I
    .end local v13           #indexPS:I
    .end local v14           #indexStatus:I
    .end local v15           #length:I
    .end local v16           #ps:Ljava/lang/String;
    .end local v17           #psRejectCause:I
    .end local v19           #status:Ljava/lang/String;
    .end local v20           #statusCause:I
    :catch_0
    move-exception v8

    .line 4199
    .local v8, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_7

    .line 4200
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03ab

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 4204
    :cond_7
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 4220
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #cs:Ljava/lang/String;
    .restart local v7       #csRejectCause:I
    .restart local v9       #idle:Ljava/lang/String;
    .restart local v10       #idleRejectCause:I
    .restart local v11       #indexCS:I
    .restart local v12       #indexIdle:I
    .restart local v13       #indexPS:I
    .restart local v14       #indexStatus:I
    .restart local v15       #length:I
    .restart local v16       #ps:Ljava/lang/String;
    .restart local v17       #psRejectCause:I
    .restart local v19       #status:Ljava/lang/String;
    .restart local v20       #statusCause:I
    :cond_8
    if-eqz p1, :cond_1

    .line 4221
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03a9

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4226
    :cond_9
    if-eqz p1, :cond_1

    .line 4227
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03a8

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4242
    :pswitch_2
    const/4 v5, 0x1

    .line 4243
    if-eqz p1, :cond_1

    .line 4244
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03ab

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4249
    :pswitch_3
    const/4 v5, 0x1

    .line 4250
    if-eqz p1, :cond_1

    .line 4251
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03ac

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4256
    :pswitch_4
    const/4 v5, 0x1

    .line 4257
    if-eqz p1, :cond_1

    .line 4258
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a03ad

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4275
    .end local v6           #cs:Ljava/lang/String;
    .end local v7           #csRejectCause:I
    .end local v9           #idle:Ljava/lang/String;
    .end local v10           #idleRejectCause:I
    .end local v11           #indexCS:I
    .end local v12           #indexIdle:I
    .end local v13           #indexPS:I
    .end local v14           #indexStatus:I
    .end local v15           #length:I
    .end local v16           #ps:Ljava/lang/String;
    .end local v17           #psRejectCause:I
    .end local v19           #status:Ljava/lang/String;
    .end local v20           #statusCause:I
    .restart local v4       #bDataRoamingEnabled:Z
    :catch_1
    move-exception v8

    .line 4276
    .local v8, e:Ljava/lang/Exception;
    const-string v21, "Mms/MessageUtils"

    const-string v22, "MMS Send:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4304
    .end local v4           #bDataRoamingEnabled:Z
    .end local v8           #e:Ljava/lang/Exception;
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isGSMOnly(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 4305
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a043b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 4308
    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_b
    move/from16 v21, v5

    .line 4313
    goto/16 :goto_2

    .line 4210
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static checkRingtoneIsValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "ringtoneStr"

    .prologue
    const/4 v2, 0x0

    .line 7945
    const-string v0, "Mms/MessageUtils"

    const-string v1, "checkRingtone start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 7969
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7972
    .local v7, ringtoneCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 7975
    :cond_0
    const-string v0, "Mms/MessageUtils"

    const-string v1, "Selected ringtone is invalid"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7976
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 7977
    .local v6, ringtone:Landroid/net/Uri;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 7980
    .end local v6           #ringtone:Landroid/net/Uri;
    :cond_1
    if-eqz v7, :cond_2

    .line 7981
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7984
    :cond_2
    const-string v0, "Mms/MessageUtils"

    const-string v1, "checkRingtone end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 7985
    return-object p1

    .line 7980
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 7981
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 2491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2492
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2493
    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2494
    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2495
    const v1, 0x7f0a006a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2496
    const v1, 0x7f0a006b

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2497
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2498
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2499
    return-void
.end method

.method public static convertCharToSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "msgText"

    .prologue
    const v10, 0xdfff

    const v9, 0xd800

    .line 3379
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[convertCharaterforNTT] msgText.length() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    move-object v0, p0

    .line 3382
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3383
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const/16 v4, 0x20

    .line 3384
    .local v4, v:C
    const/16 v5, 0x20

    .line 3386
    .local v5, v1:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 3387
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 3389
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3392
    :cond_0
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 3393
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 3394
    const/16 v4, 0x20

    .line 3399
    :cond_1
    const/16 v6, 0xd

    if-eq v4, v6, :cond_2

    const/16 v6, 0xa

    if-ne v4, v6, :cond_3

    .line 3400
    :cond_2
    const/16 v4, 0x20

    .line 3404
    :cond_3
    if-gt v9, v4, :cond_6

    if-lt v10, v4, :cond_6

    if-gt v9, v5, :cond_6

    if-lt v10, v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 3408
    const v6, 0xdbba

    if-ne v6, v4, :cond_7

    .line 3409
    const v6, 0xdf1a

    if-ne v6, v5, :cond_5

    .line 3410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3411
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3412
    add-int/lit8 v1, v1, 0x1

    .line 3386
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3392
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3416
    :cond_5
    const/16 v4, 0x20

    .line 3417
    add-int/lit8 v1, v1, 0x1

    .line 3438
    :cond_6
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3419
    :cond_7
    const v6, 0xdbb9

    if-ne v6, v4, :cond_9

    .line 3420
    const v6, 0xdd23

    if-ne v6, v5, :cond_8

    .line 3421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3422
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3423
    add-int/lit8 v1, v1, 0x1

    .line 3424
    goto :goto_2

    .line 3427
    :cond_8
    const/16 v4, 0x20

    .line 3428
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3432
    :cond_9
    const/16 v4, 0x20

    .line 3433
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3440
    .end local v2           #j:I
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3441
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[convertCharaterforNTT] stringBuilder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    return-object p0
.end method

.method public static final convertCharaterforKOR(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "src"

    .prologue
    .line 3500
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[convertCharaterforKOR] src.length() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3502
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    const/16 v2, 0x20

    .line 3504
    .local v2, v:C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3505
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 3506
    sparse-switch v2, :sswitch_data_0

    .line 3504
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3508
    :sswitch_0
    const v3, 0xffe6

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3511
    :sswitch_1
    const/16 v3, 0x226a

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3514
    :sswitch_2
    const/16 v3, 0x226b

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3517
    :sswitch_3
    const/16 v3, 0x25cf

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3520
    :sswitch_4
    const v3, 0xffe0

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3523
    :sswitch_5
    const v3, 0xffe1

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3526
    :sswitch_6
    const v3, 0xffe5

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3529
    :sswitch_7
    const/16 v3, 0x24d2

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3532
    :sswitch_8
    const/16 v3, 0x318d

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3535
    :sswitch_9
    const/16 v3, 0x2025

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3538
    :sswitch_a
    const/16 v3, 0xb7

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3541
    :sswitch_b
    const/16 v3, 0x20

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 3546
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3506
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0xa2 -> :sswitch_4
        0xa3 -> :sswitch_5
        0xa5 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xab -> :sswitch_1
        0xbb -> :sswitch_2
        0x119e -> :sswitch_8
        0x11a2 -> :sswitch_9
        0x2022 -> :sswitch_a
        0x20a9 -> :sswitch_0
        0xfffd -> :sswitch_b
    .end sparse-switch
.end method

.method public static copyPartDrmCheck(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 29
    .parameter "context"
    .parameter "part"
    .parameter "fallback"

    .prologue
    .line 7750
    const/16 v28, 0x0

    .line 7751
    .local v28, uri:Landroid/net/Uri;
    new-instance v27, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 7752
    .local v27, type:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v22

    .line 7753
    .local v22, isDrm:Z
    const/4 v12, 0x0

    .line 7754
    .local v12, drmFilePath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 7757
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 7758
    const/4 v2, 0x0

    .line 7762
    if-eqz v10, :cond_0

    .line 7763
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7764
    const/4 v10, 0x0

    .line 7871
    :cond_0
    :goto_0
    return v2

    .line 7759
    :cond_1
    :try_start_1
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 7760
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v28

    .line 7762
    if-eqz v10, :cond_2

    .line 7763
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7764
    const/4 v10, 0x0

    .line 7768
    :cond_2
    if-eqz v22, :cond_3

    .line 7769
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v27

    .line 7772
    :cond_3
    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7774
    const/4 v2, 0x1

    goto :goto_0

    .line 7762
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 7763
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7764
    const/4 v10, 0x0

    :cond_4
    throw v2

    .line 7779
    :cond_5
    const/16 v21, 0x0

    .line 7780
    .local v21, input:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 7782
    .local v18, fout:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v21

    .line 7783
    move-object/from16 v0, v21

    instance-of v2, v0, Ljava/io/FileInputStream;

    if-eqz v2, :cond_10

    .line 7784
    move-object/from16 v0, v21

    check-cast v0, Ljava/io/FileInputStream;

    move-object/from16 v17, v0

    .line 7786
    .local v17, fin:Ljava/io/FileInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v23

    .line 7787
    .local v23, location:[B
    if-nez v23, :cond_6

    .line 7788
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v23

    .line 7790
    :cond_6
    if-nez v23, :cond_7

    .line 7791
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v23

    .line 7795
    :cond_7
    if-nez v23, :cond_a

    .line 7797
    move-object/from16 v16, p2

    .line 7803
    .local v16, fileName:Ljava/lang/String;
    :goto_1
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7804
    .local v24, originalFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    .line 7810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 7815
    .local v11, dir:Ljava/lang/String;
    const/16 v2, 0x2e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .local v20, index:I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    .line 7817
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 7822
    .local v14, extension:Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_8

    .line 7823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Lcom/android/mms/drm/DrmUtils;->getConvertExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 7825
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/mms/drm/DrmUtils;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 7828
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v25

    .line 7829
    .local v25, parentFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_d

    .line 7830
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 7831
    const/4 v2, 0x0

    .line 7852
    if-eqz v21, :cond_9

    .line 7854
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7861
    :cond_9
    if-eqz v18, :cond_0

    .line 7863
    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 7864
    :catch_0
    move-exception v13

    .line 7866
    .local v13, e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7867
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7801
    .end local v11           #dir:Ljava/lang/String;
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v20           #index:I
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    :cond_a
    :try_start_5
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v16       #fileName:Ljava/lang/String;
    goto/16 :goto_1

    .line 7810
    .restart local v24       #originalFile:Ljava/io/File;
    :cond_b
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    goto/16 :goto_2

    .line 7819
    .restart local v11       #dir:Ljava/lang/String;
    .restart local v20       #index:I
    :cond_c
    add-int/lit8 v2, v20, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 7820
    .restart local v14       #extension:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v16

    goto/16 :goto_3

    .line 7855
    .restart local v15       #file:Ljava/io/File;
    .restart local v25       #parentFile:Ljava/io/File;
    :catch_1
    move-exception v13

    .line 7857
    .restart local v13       #e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7858
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7834
    .end local v13           #e:Ljava/io/IOException;
    :cond_d
    :try_start_6
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 7836
    .end local v18           #fout:Ljava/io/FileOutputStream;
    .local v19, fout:Ljava/io/FileOutputStream;
    const/16 v2, 0x1f40

    :try_start_7
    new-array v9, v2, [B

    .line 7837
    .local v9, buffer:[B
    const/16 v26, 0x0

    .line 7838
    .local v26, size:I
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v26

    const/4 v2, -0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_f

    .line 7839
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v9, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 7847
    .end local v9           #buffer:[B
    .end local v26           #size:I
    :catch_2
    move-exception v13

    move-object/from16 v18, v19

    .line 7849
    .end local v11           #dir:Ljava/lang/String;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v19           #fout:Ljava/io/FileOutputStream;
    .end local v20           #index:I
    .end local v23           #location:[B
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    .restart local v13       #e:Ljava/io/IOException;
    .restart local v18       #fout:Ljava/io/FileOutputStream;
    :goto_5
    :try_start_8
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while opening or reading stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 7850
    const/4 v2, 0x0

    .line 7852
    if-eqz v21, :cond_e

    .line 7854
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 7861
    :cond_e
    if-eqz v18, :cond_0

    .line 7863
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 7864
    :catch_3
    move-exception v13

    .line 7866
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7867
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7844
    .end local v13           #e:Ljava/io/IOException;
    .end local v18           #fout:Ljava/io/FileOutputStream;
    .restart local v9       #buffer:[B
    .restart local v11       #dir:Ljava/lang/String;
    .restart local v14       #extension:Ljava/lang/String;
    .restart local v15       #file:Ljava/io/File;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #fin:Ljava/io/FileInputStream;
    .restart local v19       #fout:Ljava/io/FileOutputStream;
    .restart local v20       #index:I
    .restart local v23       #location:[B
    .restart local v24       #originalFile:Ljava/io/File;
    .restart local v25       #parentFile:Ljava/io/File;
    .restart local v26       #size:I
    :cond_f
    :try_start_b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v18, v19

    .line 7852
    .end local v9           #buffer:[B
    .end local v11           #dir:Ljava/lang/String;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v19           #fout:Ljava/io/FileOutputStream;
    .end local v20           #index:I
    .end local v23           #location:[B
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    .end local v26           #size:I
    .restart local v18       #fout:Ljava/io/FileOutputStream;
    :cond_10
    if-eqz v21, :cond_11

    .line 7854
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 7861
    :cond_11
    if-eqz v18, :cond_12

    .line 7863
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 7871
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 7855
    :catch_4
    move-exception v13

    .line 7857
    .restart local v13       #e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7858
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7864
    .end local v13           #e:Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 7866
    .restart local v13       #e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7867
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7855
    :catch_6
    move-exception v13

    .line 7857
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7858
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7852
    .end local v13           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :goto_6
    if-eqz v21, :cond_13

    .line 7854
    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 7861
    :cond_13
    if-eqz v18, :cond_14

    .line 7863
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 7867
    :cond_14
    throw v2

    .line 7855
    :catch_7
    move-exception v13

    .line 7857
    .restart local v13       #e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7858
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7864
    .end local v13           #e:Ljava/io/IOException;
    :catch_8
    move-exception v13

    .line 7866
    .restart local v13       #e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7867
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 7852
    .end local v13           #e:Ljava/io/IOException;
    .end local v18           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #dir:Ljava/lang/String;
    .restart local v14       #extension:Ljava/lang/String;
    .restart local v15       #file:Ljava/io/File;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #fin:Ljava/io/FileInputStream;
    .restart local v19       #fout:Ljava/io/FileOutputStream;
    .restart local v20       #index:I
    .restart local v23       #location:[B
    .restart local v24       #originalFile:Ljava/io/File;
    .restart local v25       #parentFile:Ljava/io/File;
    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #fout:Ljava/io/FileOutputStream;
    .restart local v18       #fout:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 7847
    .end local v11           #dir:Ljava/lang/String;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v20           #index:I
    .end local v23           #location:[B
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    :catch_9
    move-exception v13

    goto/16 :goto_5
.end method

.method public static createAddContactIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "uri"

    .prologue
    .line 7581
    const/4 v0, 0x0

    .line 7582
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7583
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7584
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7588
    :goto_0
    return-object v0

    .line 7586
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 7572
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7573
    const-string v1, "mailto"

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7577
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 7575
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const-string v1, "tel"

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 5584
    const/4 v0, 0x0

    .line 5585
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5587
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5588
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5609
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5614
    :goto_0
    return-object v0

    .line 5605
    :catch_0
    move-exception v2

    .line 5609
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5610
    :catch_1
    move-exception v2

    goto :goto_0

    .line 5608
    :catchall_0
    move-exception v2

    .line 5609
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5612
    :goto_1
    throw v2

    .line 5610
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static createVideoThumbnailAt(Landroid/content/Context;Landroid/net/Uri;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "position"

    .prologue
    .line 5618
    const/4 v0, 0x0

    .line 5619
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5621
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5622
    invoke-virtual {v1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5628
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 5633
    :goto_0
    return-object v0

    .line 5624
    :catch_0
    move-exception v2

    .line 5628
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5629
    :catch_1
    move-exception v2

    goto :goto_0

    .line 5627
    :catchall_0
    move-exception v2

    .line 5628
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5631
    :goto_1
    throw v2

    .line 5629
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V
    .locals 8
    .parameter "context"
    .parameter "contact"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6593
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6594
    .local v1, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6595
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6597
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fillIfCountChanged()V

    .line 6600
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Lcom/android/mms/ui/MessageUtils;->checkCallBlockAlreadyInUse(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6601
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v6, v4, v6

    aput-boolean v6, v3, v6

    .line 6606
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListSeperateCallReject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6608
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/mms/ui/MessageUtils;->checkCallBlockAlreadyInUse(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6609
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v6, v4, v5

    aput-boolean v6, v3, v5

    .line 6614
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v6, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyEnabledandUsed(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6615
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v6, v4, v7

    aput-boolean v6, v3, v7

    .line 6630
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListSeperateCallReject()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6631
    const v3, 0x7f07002d

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    new-instance v5, Lcom/android/mms/ui/MessageUtils$18;

    invoke-direct {v5}, Lcom/android/mms/ui/MessageUtils$18;-><init>()V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6666
    :goto_3
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6667
    .local v0, a:Ljava/lang/String;
    const v3, 0x7f0a011d

    new-instance v4, Lcom/android/mms/ui/MessageUtils$20;

    invoke-direct {v4, p0, p1}, Lcom/android/mms/ui/MessageUtils$20;-><init>(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6710
    const v3, 0x7f0a006b

    new-instance v4, Lcom/android/mms/ui/MessageUtils$21;

    invoke-direct {v4}, Lcom/android/mms/ui/MessageUtils$21;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6717
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 6718
    .local v2, blockNumberSettingDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 6719
    return-void

    .line 6603
    .end local v0           #a:Ljava/lang/String;
    .end local v2           #blockNumberSettingDialog:Landroid/app/AlertDialog;
    :cond_0
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v5, v4, v6

    aput-boolean v5, v3, v6

    goto :goto_0

    .line 6611
    :cond_1
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v5, v4, v5

    aput-boolean v5, v3, v5

    goto :goto_1

    .line 6617
    :cond_2
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v5, v4, v7

    aput-boolean v5, v3, v7

    goto :goto_2

    .line 6622
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v6, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyEnabledandUsed(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6623
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v6, v4, v5

    aput-boolean v6, v3, v5

    goto :goto_2

    .line 6625
    :cond_4
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v5, v4, v5

    aput-boolean v5, v3, v5

    goto :goto_2

    .line 6649
    :cond_5
    const v3, 0x7f07002c

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    new-instance v5, Lcom/android/mms/ui/MessageUtils$19;

    invoke-direct {v5}, Lcom/android/mms/ui/MessageUtils$19;-><init>()V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method public static doBoost(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "duringTime"

    .prologue
    .line 7636
    if-nez p0, :cond_0

    .line 7646
    :goto_0
    return-void

    .line 7640
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7641
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7642
    const-string v1, "PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7643
    const-string v1, "CPU"

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7644
    const-string v1, "DURATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7645
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .parameter "context"
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 7287
    const/4 v11, 0x0

    .line 7289
    .local v11, result:Z
    const-string v6, "com.sec.android.app.firewall"

    .line 7290
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v8, "numbers"

    .line 7291
    .local v8, AUTOREJECT_NUMBER:Ljava/lang/String;
    const-string v7, "checked"

    .line 7292
    .local v7, AUTOREJECT_CHECKED:Ljava/lang/String;
    const/4 v9, 0x0

    .line 7294
    .local v9, AUTOREJECT_TABLE:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 7309
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.sec.android.app.firewall/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7311
    .local v1, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numbers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "checked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 7318
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 7319
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 7320
    const/4 v11, 0x1

    .line 7322
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7327
    :goto_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existInVIPModeList - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7329
    return v11

    .line 7296
    .end local v1           #AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    .end local v10           #cursor:Landroid/database/Cursor;
    :pswitch_0
    const-string v9, "black_msg_num"

    .line 7297
    goto :goto_0

    .line 7299
    :pswitch_1
    const-string v9, "black_call_num"

    .line 7300
    goto :goto_0

    .line 7302
    :pswitch_2
    const-string v9, "white_msg_num"

    .line 7303
    goto :goto_0

    .line 7305
    :pswitch_3
    const-string v9, "white_call_num"

    goto :goto_0

    .line 7324
    .restart local v1       #AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "Mms/MessageUtils"

    const-string v2, "existInVIPModeList - cursor is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2520
    if-eqz p1, :cond_0

    .line 2521
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2523
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 5
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 2503
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2504
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2506
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2507
    const-string v1, ""

    .line 2515
    .end local v1           #rawBytes:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2508
    .restart local v1       #rawBytes:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 2509
    :cond_1
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractEncStrFromCursor() : return rawBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2515
    :cond_2
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 18
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"

    .prologue
    .line 1636
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1637
    .local v8, addressBuf:Ljava/lang/StringBuilder;
    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1638
    .local v15, recipientIds:[Ljava/lang/String;
    const/4 v11, 0x1

    .line 1639
    .local v11, firstItem:Z
    move-object v9, v15

    .local v9, arr$:[Ljava/lang/String;
    array-length v13, v9

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_6

    aget-object v14, v9, v12

    .line 1640
    .local v14, recipientId:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1642
    .local v17, value:Ljava/lang/String;
    if-nez v17, :cond_3

    .line 1643
    if-nez p2, :cond_1

    .line 1647
    const/4 v8, 0x0

    .line 1676
    .end local v8           #addressBuf:Ljava/lang/StringBuilder;
    .end local v14           #recipientId:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .line 1649
    .restart local v8       #addressBuf:Ljava/lang/StringBuilder;
    .restart local v14       #recipientId:Ljava/lang/String;
    .restart local v17       #value:Ljava/lang/String;
    :cond_1
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 1650
    .local v16, s:Ljava/lang/StringBuffer;
    const-string v1, "content://mms-sms/canonical-address/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1652
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1654
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1656
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1657
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1658
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1665
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #s:Ljava/lang/StringBuffer;
    :cond_3
    if-nez v17, :cond_4

    .line 1639
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1661
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #s:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1668
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #s:Ljava/lang/StringBuffer;
    :cond_4
    if-eqz v11, :cond_5

    .line 1669
    const/4 v11, 0x0

    .line 1673
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1671
    :cond_5
    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1676
    .end local v14           #recipientId:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "address"

    .prologue
    .line 3074
    const-string v2, ""

    .line 3077
    .local v2, number:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 3094
    .end local v2           #number:Ljava/lang/String;
    .local v3, number:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3079
    .end local v3           #number:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v2

    .line 3080
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    goto :goto_0

    .line 3082
    .end local v3           #number:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_1
    const/16 v5, 0x3c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3083
    .local v4, startIdx:I
    const/16 v5, 0x3e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3085
    .local v0, endIdx:I
    if-gez v4, :cond_3

    const/4 v4, 0x0

    .line 3086
    :goto_1
    if-gez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3088
    :cond_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0           #endIdx:I
    .end local v4           #startIdx:I
    :goto_2
    move-object v3, v2

    .line 3094
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    goto :goto_0

    .line 3085
    .end local v3           #number:Ljava/lang/String;
    .restart local v0       #endIdx:I
    .restart local v2       #number:Ljava/lang/String;
    .restart local v4       #startIdx:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3090
    .end local v0           #endIdx:I
    .end local v4           #startIdx:I
    :catch_0
    move-exception v1

    .line 3091
    .local v1, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v5, "Mms/MessageUtils"

    const-string v6, "Illegal name and number format!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2528
    array-length v2, p0

    .line 2529
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2531
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2532
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2534
    :cond_0
    return-object v0
.end method

.method public static findCmasServiceCategoryFromServiceCategory(I)I
    .locals 8
    .parameter "ServiceCategory"

    .prologue
    const/16 v7, 0x1004

    const/16 v6, 0x1003

    const/16 v5, 0x1002

    const/16 v4, 0x1001

    const/16 v3, 0x1000

    .line 6044
    const/4 v0, 0x0

    .line 6046
    .local v0, type:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 6047
    if-ne v3, p0, :cond_1

    .line 6048
    const v0, 0x7f0a0294

    .line 6071
    :cond_0
    :goto_0
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findCmasServiceCategoryFromServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6073
    return v0

    .line 6049
    :cond_1
    if-ne v4, p0, :cond_2

    .line 6050
    const v0, 0x7f0a0295

    goto :goto_0

    .line 6051
    :cond_2
    if-ne v5, p0, :cond_3

    .line 6052
    const v0, 0x7f0a0296

    goto :goto_0

    .line 6053
    :cond_3
    if-ne v6, p0, :cond_4

    .line 6054
    const v0, 0x7f0a0297

    goto :goto_0

    .line 6055
    :cond_4
    if-ne v7, p0, :cond_0

    .line 6056
    const v0, 0x7f0a02c4

    goto :goto_0

    .line 6059
    :cond_5
    if-ne v3, p0, :cond_6

    .line 6060
    const v0, 0x7f0a02bc

    goto :goto_0

    .line 6061
    :cond_6
    if-ne v4, p0, :cond_7

    .line 6062
    const v0, 0x7f0a02be

    goto :goto_0

    .line 6063
    :cond_7
    if-ne v5, p0, :cond_8

    .line 6064
    const v0, 0x7f0a02c0

    goto :goto_0

    .line 6065
    :cond_8
    if-ne v6, p0, :cond_9

    .line 6066
    const v0, 0x7f0a02c2

    goto :goto_0

    .line 6067
    :cond_9
    if-ne v7, p0, :cond_0

    .line 6068
    const v0, 0x7f0a02c4

    goto :goto_0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 10
    .parameter "when"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1399
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1400
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1401
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1402
    .local v3, year:I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 1403
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1405
    .local v1, day:I
    const-string v4, "%d/%02d/%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 1431
    const/16 v0, 0x14

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 22
    .parameter "context"
    .parameter "when"
    .parameter "formatFlags"

    .prologue
    .line 1436
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v10

    .line 1440
    .local v10, order:[C
    const-string v7, "dMy"

    .line 1441
    .local v7, defaultDateFormat:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 1442
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 1444
    :cond_0
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v10}, Lcom/android/mms/ui/MessageUtils$CachedDate;->equals(JI[C)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1445
    invoke-static {}, Lcom/android/mms/ui/MessageUtils$CachedDate;->getDateTime()Ljava/lang/String;

    move-result-object v6

    .line 1550
    :goto_0
    return-object v6

    .line 1448
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 1449
    .local v5, currentLanguage:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1450
    .local v11, result:Ljava/lang/StringBuffer;
    and-int/lit8 v18, p3, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v13, 0x1

    .line 1451
    .local v13, showTime:Z
    :goto_1
    and-int/lit8 v18, p3, 0x4

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/4 v14, 0x1

    .line 1452
    .local v14, showYear:Z
    :goto_2
    and-int/lit8 v18, p3, 0x10

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/4 v12, 0x1

    .line 1453
    .local v12, showDate:Z
    :goto_3
    const/16 v4, 0xb00

    .line 1456
    .local v4, baseFormatFlags:I
    if-eqz v13, :cond_3

    .line 1457
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1458
    const-string v18, "\u200e"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1459
    :cond_2
    const/16 v18, 0xb01

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1464
    :cond_3
    if-nez v14, :cond_7

    if-nez v12, :cond_7

    .line 1465
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1466
    .local v6, dateTime:Ljava/lang/String;
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v10, v6}, Lcom/android/mms/ui/MessageUtils$CachedDate;->update(JI[CLjava/lang/String;)V

    goto :goto_0

    .line 1450
    .end local v4           #baseFormatFlags:I
    .end local v6           #dateTime:Ljava/lang/String;
    .end local v12           #showDate:Z
    .end local v13           #showTime:Z
    .end local v14           #showYear:Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 1451
    .restart local v13       #showTime:Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 1452
    .restart local v14       #showYear:Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 1471
    .restart local v4       #baseFormatFlags:I
    .restart local v12       #showDate:Z
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_8

    .line 1472
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    :cond_8
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1475
    const-string v18, "\u202b"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1478
    :cond_9
    sget-object v18, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    sget-object v18, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1479
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1482
    :cond_b
    const-string v17, ""

    .line 1483
    .local v17, strY:Ljava/lang/String;
    const-string v16, ""

    .line 1484
    .local v16, strM:Ljava/lang/String;
    const-string v15, ""

    .line 1486
    .local v15, strD:Ljava/lang/String;
    sget-object v19, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    monitor-enter v19

    .line 1487
    :try_start_0
    sget-object v18, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1490
    if-eqz v14, :cond_c

    .line 1491
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getYearUnit()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1493
    :cond_c
    if-eqz v12, :cond_d

    .line 1494
    sget-object v18, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/high16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v16

    .line 1495
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getDayUnit()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1497
    :cond_d
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    const-string v8, ""

    .line 1501
    .local v8, delimeter:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_11

    .line 1502
    aget-char v18, v10, v9

    sparse-switch v18, :sswitch_data_0

    .line 1501
    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1497
    .end local v8           #delimeter:Ljava/lang/String;
    .end local v9           #i:I
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1504
    .restart local v8       #delimeter:Ljava/lang/String;
    .restart local v9       #i:I
    :sswitch_0
    if-eqz v14, :cond_e

    .line 1505
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1506
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1507
    const-string v8, " "

    goto :goto_5

    .line 1511
    :sswitch_1
    if-eqz v12, :cond_e

    .line 1512
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1513
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_10

    .line 1514
    const-string v18, "\u202b"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1518
    :cond_f
    :goto_6
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1519
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1520
    const-string v8, " "

    goto :goto_5

    .line 1516
    :cond_10
    const-string v18, "\u200a"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1524
    :sswitch_2
    if-eqz v12, :cond_e

    .line 1525
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1526
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1527
    const-string v8, " "

    goto :goto_5

    .line 1534
    :cond_11
    sget-object v18, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1535
    if-eqz v13, :cond_12

    .line 1536
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0xb01

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1547
    :cond_12
    :goto_7
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1548
    .restart local v6       #dateTime:Ljava/lang/String;
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v10, v6}, Lcom/android/mms/ui/MessageUtils$CachedDate;->update(JI[CLjava/lang/String;)V

    goto/16 :goto_0

    .line 1540
    .end local v6           #dateTime:Ljava/lang/String;
    :cond_13
    sget-object v18, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1541
    if-eqz v13, :cond_12

    .line 1542
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0xb01

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 1502
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_2
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public static formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"

    .prologue
    .line 5741
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5743
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 5745
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5746
    invoke-virtual {v1, p0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5749
    :cond_0
    return-object v0
.end method

.method public static formatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 1427
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 1363
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 1367
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1368
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1369
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1370
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1374
    const/16 v0, 0xb00

    .line 1377
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 1378
    or-int/lit8 v0, v0, 0x14

    .line 1390
    :goto_0
    if-eqz p3, :cond_0

    .line 1391
    or-int/lit8 v0, v0, 0x11

    .line 1394
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1379
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 1381
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 1384
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 3288
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    const-string v0, "display_recipient_ids"

    aput-object v0, v3, v11

    .line 3293
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 3294
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3298
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 3300
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3301
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3302
    .local v10, recipientIds:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3303
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3305
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v10, v0}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 3306
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 3311
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3314
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #recipientIds:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 3311
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v5

    .line 3314
    goto :goto_0

    .line 3311
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getApnName(I)Ljava/lang/String;
    .locals 3
    .parameter "apn"

    .prologue
    .line 6882
    packed-switch p0, :pswitch_data_0

    .line 6886
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 6883
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "CTWAP"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6884
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "CTNET"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6882
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "package_name"

    .prologue
    const/4 v2, 0x0

    .line 6310
    const/4 v0, 0x0

    .line 6312
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 6320
    :goto_0
    return-object v2

    .line 6313
    :catch_0
    move-exception v1

    .line 6314
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "getApplicationIcon NameNotFoundException"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6316
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 6317
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "getApplicationIcon OutOfMemoryError"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 6
    .parameter "model"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1315
    if-nez p0, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return v2

    .line 1319
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 1320
    .local v0, numberOfSlides:I
    if-le v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 1321
    goto :goto_0

    .line 1323
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v5

    if-ne v5, v4, :cond_3

    .line 1324
    const/16 v2, 0xa

    goto :goto_0

    .line 1326
    :cond_3
    if-ne v0, v4, :cond_0

    .line 1328
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1333
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v5

    if-lez v5, :cond_4

    .line 1334
    const/4 v2, 0x5

    goto :goto_0

    .line 1337
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1338
    const/4 v2, 0x2

    goto :goto_0

    .line 1341
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    .line 1343
    goto :goto_0

    .line 1346
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1347
    const/4 v2, 0x3

    goto :goto_0

    .line 1350
    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v4

    .line 1351
    goto :goto_0

    .line 1354
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 6354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autosms_enable"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6357
    .local v0, autoSmsEnable:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 6358
    const-string v1, "Enabled"

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->setAutoSmsEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 6359
    new-instance v0, Ljava/lang/String;

    .end local v0           #autoSmsEnable:Ljava/lang/String;
    const-string v1, "Enabled"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6362
    :cond_0
    return-object v0
.end method

.method public static getAutoSmsType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 6371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autosms_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6373
    .local v0, autoSmsType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 6374
    const-string v1, "0"

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->setAutoSmsType(Landroid/content/Context;Ljava/lang/String;)V

    .line 6375
    new-instance v0, Ljava/lang/String;

    .end local v0           #autoSmsType:Ljava/lang/String;
    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6378
    :cond_0
    return-object v0
.end method

.method public static getAvailableStorage()J
    .locals 8

    .prologue
    .line 4784
    const/4 v1, 0x0

    .line 4787
    .local v1, storageDirectory:Ljava/lang/String;
    const-string v1, "/data"

    .line 4788
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4789
    .local v0, stat:Landroid/os/StatFs;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available Storage Size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4793
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public static getBitmapFromFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "strFilePath"
    .parameter "delete"

    .prologue
    const/4 v3, 0x0

    .line 7476
    if-nez p0, :cond_1

    move-object v1, v3

    .line 7496
    :cond_0
    :goto_0
    return-object v1

    .line 7480
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7481
    .local v2, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 7483
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v1, v3

    .line 7484
    goto :goto_0

    .line 7487
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7489
    .local v0, bfo:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7491
    if-eqz p1, :cond_0

    .line 7492
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7493
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getByteSize(Ljava/lang/String;)I
    .locals 5
    .parameter "str"

    .prologue
    .line 6527
    if-nez p0, :cond_1

    .line 6528
    const/4 v0, 0x0

    .line 6535
    :cond_0
    return v0

    .line 6530
    :cond_1
    const/4 v0, 0x0

    .line 6531
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 6532
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    const/4 v3, 0x2

    :goto_1
    add-int/2addr v0, v3

    .line 6531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6532
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static getCertainityTextID(I)I
    .locals 1
    .parameter "msgCertainity"

    .prologue
    .line 6207
    const v0, 0x7f0a02b3

    .line 6210
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 6224
    :goto_0
    return v0

    .line 6216
    :pswitch_0
    const v0, 0x7f0a02b1

    .line 6217
    goto :goto_0

    .line 6220
    :pswitch_1
    const v0, 0x7f0a02b2

    goto :goto_0

    .line 6210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .parameter "activity"
    .parameter "name"

    .prologue
    .line 7370
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I
    .locals 14
    .parameter "mModel"

    .prologue
    .line 5042
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5043
    .local v2, cidIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 5044
    .local v0, SlideModelSize:I
    const/4 v5, 0x0

    .line 5045
    .local v5, index:I
    const/4 v1, 0x0

    .line 5046
    .local v1, arraySize:I
    const/4 v8, 0x0

    .line 5048
    .local v8, mint:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 5049
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    .line 5050
    .local v9, temp:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v10

    .line 5051
    .local v10, text:Lcom/android/mms/model/TextModel;
    if-eqz v10, :cond_1

    .line 5052
    invoke-virtual {v10}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 5054
    .local v7, mString:Ljava/lang/String;
    const-string v11, "cid:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 5055
    const-string v11, "cid:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 5060
    :cond_0
    :goto_1
    :try_start_0
    const-string v11, "text_"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".txt"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 5064
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5048
    .end local v7           #mString:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5056
    .restart local v7       #mString:Ljava/lang/String;
    :cond_2
    const-string v11, "Cid:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5057
    const-string v11, "Cid:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 5061
    :catch_0
    move-exception v3

    .line 5062
    .local v3, e:Ljava/lang/NumberFormatException;
    move v8, v4

    goto :goto_2

    .line 5068
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v7           #mString:Ljava/lang/String;
    .end local v9           #temp:Lcom/android/mms/model/SlideModel;
    .end local v10           #text:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5070
    if-lez v1, :cond_6

    .line 5071
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v1, :cond_5

    .line 5072
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v5, v11, :cond_4

    .line 5073
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5071
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 5076
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 5078
    .end local v6           #j:I
    :cond_6
    return v5
.end method

.method private static getCmaeCategoryTextID(I)I
    .locals 3
    .parameter "msgCategory"

    .prologue
    const/4 v2, 0x4

    .line 6228
    const v0, 0x7f0a02b3

    .line 6230
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 6306
    :goto_0
    return v0

    .line 6235
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6236
    const v0, 0x7f0a02ca

    goto :goto_0

    .line 6238
    :cond_0
    const v0, 0x7f0a0299

    .line 6239
    goto :goto_0

    .line 6242
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 6243
    const v0, 0x7f0a02cb

    goto :goto_0

    .line 6245
    :cond_1
    const v0, 0x7f0a029a

    .line 6246
    goto :goto_0

    .line 6250
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 6251
    const v0, 0x7f0a02cc

    goto :goto_0

    .line 6253
    :cond_2
    const v0, 0x7f0a029b

    .line 6254
    goto :goto_0

    .line 6259
    :pswitch_3
    const v0, 0x7f0a029c

    .line 6260
    goto :goto_0

    .line 6263
    :pswitch_4
    const v0, 0x7f0a029d

    .line 6264
    goto :goto_0

    .line 6267
    :pswitch_5
    const v0, 0x7f0a029e

    .line 6268
    goto :goto_0

    .line 6271
    :pswitch_6
    const v0, 0x7f0a029f

    .line 6272
    goto :goto_0

    .line 6275
    :pswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 6276
    const v0, 0x7f0a02ce

    goto :goto_0

    .line 6278
    :cond_3
    const v0, 0x7f0a02a0

    .line 6279
    goto :goto_0

    .line 6283
    :pswitch_8
    const v0, 0x7f0a02a1

    .line 6284
    goto :goto_0

    .line 6288
    :pswitch_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 6289
    const v0, 0x7f0a02cf

    goto :goto_0

    .line 6291
    :cond_4
    const v0, 0x7f0a02a2

    .line 6292
    goto :goto_0

    .line 6298
    :pswitch_a
    const v0, 0x7f0a02a3

    .line 6299
    goto :goto_0

    .line 6302
    :pswitch_b
    const v0, 0x7f0a02a4

    goto :goto_0

    .line 6230
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getCmasServiceCategory(I)I
    .locals 8
    .parameter "threadtype"

    .prologue
    const/16 v7, 0x68

    const/16 v6, 0x67

    const/16 v5, 0x66

    const/16 v4, 0x65

    const/16 v3, 0x64

    .line 6078
    const/4 v0, 0x0

    .line 6079
    .local v0, type:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 6080
    if-ne p0, v3, :cond_1

    .line 6081
    const v0, 0x7f0a0294

    .line 6109
    :cond_0
    :goto_0
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6111
    return v0

    .line 6082
    :cond_1
    if-ne p0, v4, :cond_2

    .line 6083
    const v0, 0x7f0a0295

    goto :goto_0

    .line 6084
    :cond_2
    if-ne p0, v5, :cond_3

    .line 6085
    const v0, 0x7f0a0296

    goto :goto_0

    .line 6086
    :cond_3
    if-ne p0, v6, :cond_4

    .line 6087
    const v0, 0x7f0a0297

    goto :goto_0

    .line 6088
    :cond_4
    if-ne p0, v7, :cond_5

    .line 6089
    const v0, 0x7f0a02c4

    goto :goto_0

    .line 6090
    :cond_5
    const/16 v1, 0x6e

    if-ne p0, v1, :cond_0

    .line 6091
    const v0, 0x7f0a0288

    goto :goto_0

    .line 6094
    :cond_6
    if-ne p0, v3, :cond_7

    .line 6095
    const v0, 0x7f0a02bc

    goto :goto_0

    .line 6096
    :cond_7
    if-ne p0, v4, :cond_8

    .line 6097
    const v0, 0x7f0a02be

    goto :goto_0

    .line 6098
    :cond_8
    if-ne p0, v5, :cond_9

    .line 6099
    const v0, 0x7f0a02c0

    goto :goto_0

    .line 6100
    :cond_9
    if-ne p0, v6, :cond_a

    .line 6101
    const v0, 0x7f0a02c2

    goto :goto_0

    .line 6102
    :cond_a
    if-ne p0, v7, :cond_b

    .line 6103
    const v0, 0x7f0a02c4

    goto :goto_0

    .line 6104
    :cond_b
    const/16 v1, 0x6e

    if-ne p0, v1, :cond_0

    .line 6105
    const v0, 0x7f0a0288

    goto :goto_0
.end method

.method public static getCmasServiceCategory(Ljava/lang/String;)I
    .locals 6
    .parameter "address"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 5999
    const-string v1, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() address is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6001
    const/4 v0, 0x0

    .line 6002
    .local v0, type:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 6003
    :cond_0
    const v0, 0x7f0a0294

    .line 6005
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 6008
    :cond_2
    const-string v1, "Presidential"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6009
    const v0, 0x7f0a0294

    .line 6037
    :cond_3
    :goto_0
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6039
    return v0

    .line 6010
    :cond_4
    const-string v1, "Extreme"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6011
    const v0, 0x7f0a0295

    goto :goto_0

    .line 6012
    :cond_5
    const-string v1, "Severe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6013
    const v0, 0x7f0a0296

    goto :goto_0

    .line 6014
    :cond_6
    const-string v1, "Amber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6015
    const v0, 0x7f0a0297

    goto :goto_0

    .line 6016
    :cond_7
    const-string v1, "CMASALL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6017
    const v0, 0x7f0a0288

    goto :goto_0

    .line 6018
    :cond_8
    const-string v1, "Test"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6019
    const v0, 0x7f0a02c4

    goto :goto_0

    .line 6022
    :cond_9
    const-string v1, "Presidential"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6023
    const v0, 0x7f0a02bc

    goto :goto_0

    .line 6024
    :cond_a
    const-string v1, "Extreme"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6025
    const v0, 0x7f0a02be

    goto :goto_0

    .line 6026
    :cond_b
    const-string v1, "Severe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6027
    const v0, 0x7f0a02c0

    goto :goto_0

    .line 6028
    :cond_c
    const-string v1, "Amber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 6029
    const v0, 0x7f0a02c2

    goto/16 :goto_0

    .line 6030
    :cond_d
    const-string v1, "CMASALL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6031
    const v0, 0x7f0a0288

    goto/16 :goto_0

    .line 6032
    :cond_e
    const-string v1, "Test"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6033
    const v0, 0x7f0a02c4

    goto/16 :goto_0
.end method

.method public static getConvName(Ljava/lang/String;CILandroid/graphics/Paint;)Ljava/lang/String;
    .locals 4
    .parameter "recipientsSepByComma"
    .parameter "delimiter"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    .line 5855
    if-nez p0, :cond_1

    .line 5856
    const-string p0, ""

    .line 5867
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 5858
    .restart local p0
    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5861
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5862
    .local v1, rcptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5864
    .local v2, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 5865
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5864
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5867
    :cond_2
    invoke-static {v1, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getConvName(Ljava/util/List;CILandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getConvName(Ljava/util/List;CILandroid/graphics/Paint;)Ljava/lang/String;
    .locals 14
    .parameter
    .parameter "delimiter"
    .parameter "maxWidth"
    .parameter "paint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;CI",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5872
    .local p0, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-gtz p2, :cond_0

    .line 5873
    const-string v10, ""

    .line 5944
    :goto_0
    return-object v10

    .line 5875
    :cond_0
    if-nez p0, :cond_1

    .line 5876
    const/4 v10, 0x0

    goto :goto_0

    .line 5878
    :cond_1
    if-nez p3, :cond_2

    .line 5879
    new-instance p3, Landroid/graphics/Paint;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/graphics/Paint;-><init>()V

    .line 5881
    .restart local p3
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 5882
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 5884
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    new-array v5, v10, [Ljava/lang/String;

    .line 5885
    .local v5, mRcpts:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 5886
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v5, v2

    .line 5885
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5888
    :cond_4
    const-string v10, "%c "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5891
    .local v4, mDelimiter:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5892
    .local v1, convName:Ljava/lang/StringBuilder;
    array-length v6, v5

    .line 5894
    .local v6, recipientNum:I
    if-gtz v6, :cond_5

    .line 5895
    const-string v10, ""

    goto :goto_0

    .line 5898
    :cond_5
    move v2, v6

    :goto_2
    if-ltz v2, :cond_6

    .line 5899
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #convName:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5902
    .restart local v1       #convName:Ljava/lang/StringBuilder;
    if-nez v2, :cond_8

    .line 5903
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a027e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "..."

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v6, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 5907
    .local v8, tmp:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/android/mms/ui/MessageUtils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v10

    sub-int v7, p2, v10

    .line 5908
    .local v7, remain:I
    if-lez v7, :cond_7

    .line 5910
    const/4 v10, 0x0

    aget-object v10, v5, v10

    move-object/from16 v0, p3

    invoke-static {v10, v0, v7}, Lcom/android/mms/ui/MessageUtils;->GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v9

    .line 5911
    .local v9, tmp2:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5944
    .end local v7           #remain:I
    .end local v8           #tmp:Ljava/lang/String;
    .end local v9           #tmp2:Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 5913
    .restart local v7       #remain:I
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 5919
    .end local v7           #remain:I
    .end local v8           #tmp:Ljava/lang/String;
    :cond_8
    if-ne v2, v6, :cond_a

    .line 5920
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    if-ge v3, v2, :cond_d

    .line 5921
    if-lez v3, :cond_9

    .line 5922
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5924
    :cond_9
    aget-object v10, v5, v3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5920
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 5928
    .end local v3           #j:I
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    if-ge v3, v2, :cond_c

    .line 5929
    if-lez v3, :cond_b

    .line 5930
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5932
    :cond_b
    aget-object v10, v5, v3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5928
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 5935
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a027e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sub-int v13, v6, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5940
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/ui/MessageUtils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v10

    move/from16 v0, p2

    if-ge v0, v10, :cond_6

    .line 5898
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2
.end method

.method public static getCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7451
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentApn(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 6846
    const/4 v6, 0x1

    .line 6847
    .local v6, apn:I
    const-string v3, "content://telephony/carriers/preferapn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6848
    .local v1, preferapnUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 6849
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6850
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 6851
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentApn] cursor.count() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6853
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6854
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 6855
    :cond_0
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentApn] get apn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6857
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v2, v6

    .line 6862
    :goto_0
    return v2

    .line 6857
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 6862
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getCuttedStringByByteLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "srcString"
    .parameter "targetLength"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 6540
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getByteSize(Ljava/lang/String;)I

    move-result v4

    .line 6542
    .local v4, stringlength:I
    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-gt v4, p1, :cond_2

    :cond_0
    move-object v3, p0

    .line 6571
    :cond_1
    return-object v3

    .line 6546
    :cond_2
    move-object v0, p0

    .line 6547
    .local v0, a:Ljava/lang/String;
    const/4 v1, 0x0

    .line 6548
    .local v1, i:I
    const-string v2, ""

    .line 6549
    .local v2, imsi:Ljava/lang/String;
    const-string v3, ""

    .line 6550
    .local v3, rlt:Ljava/lang/String;
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6551
    :cond_3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 6552
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x7f

    if-le v5, v7, :cond_4

    const/4 v5, 0x2

    :goto_1
    add-int/2addr v1, v5

    .line 6554
    if-gt v1, p1, :cond_1

    .line 6558
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 6562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6563
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6564
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 6565
    move-object v2, v0

    goto :goto_0

    :cond_4
    move v5, v6

    .line 6552
    goto :goto_1

    .line 6566
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 6567
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDataNetworkEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 4772
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4775
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    .line 4779
    :goto_0
    return v2

    .line 4775
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 4777
    :catch_0
    move-exception v1

    .line 4778
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIRELESS_SETTING_KEY_ENABLE(context) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDataRoamingEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 4761
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 4765
    :cond_0
    :goto_0
    return v1

    .line 4763
    :catch_0
    move-exception v0

    .line 4764
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataRoamingEnabled(context) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 3
    .parameter "context"

    .prologue
    .line 1592
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, newDateOrderValue:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1596
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    .line 1597
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    .line 1605
    :goto_0
    return-object v1

    .line 1600
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1601
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 1602
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    .line 1605
    :cond_1
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    goto :goto_0
.end method

.method public static getDayOfWeekString(I)Ljava/lang/String;
    .locals 3
    .parameter "dow"

    .prologue
    .line 1412
    const/4 v2, 0x7

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1421
    .local v0, list:[I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1423
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, -0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1412
    nop

    :array_0
    .array-data 0x4
        0x85t 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
        0x88t 0x0t 0x4t 0x1t
        0x89t 0x0t 0x4t 0x1t
        0x8at 0x0t 0x4t 0x1t
        0x8bt 0x0t 0x4t 0x1t
    .end array-data
.end method

.method private static getDayUnit()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1573
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1574
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, ""

    .line 1576
    .local v1, dayUnit:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1577
    const-string v1, "\uc77c"

    .line 1586
    :cond_0
    :goto_0
    return-object v1

    .line 1578
    :cond_1
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1579
    const-string v1, "\u65e5"

    goto :goto_0

    .line 1580
    :cond_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1584
    :cond_3
    const-string v1, "\u65e5"

    goto :goto_0
.end method

.method public static getDrmMimeSavedStringRsrc(Landroid/content/Context;JZ)I
    .locals 3
    .parameter "context"
    .parameter "msgId"
    .parameter "success"

    .prologue
    const v0, 0x7f0a04d2

    .line 7875
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7876
    if-eqz p3, :cond_0

    const v0, 0x7f0a04d1

    .line 7879
    :cond_0
    :goto_0
    return v0

    .line 7878
    :cond_1
    const-string v1, "Mms/MessageUtils"

    const-string v2, "isDrmRingtoneWithRights(msgId) : false "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getErrorDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "icon"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 5728
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5730
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 5732
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5733
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5734
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5736
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private static getErrorStringID(I)I
    .locals 1
    .parameter "errorId"

    .prologue
    const v0, 0x7f0a046b

    .line 566
    sparse-switch p0, :sswitch_data_0

    .line 606
    :goto_0
    :sswitch_0
    return v0

    .line 572
    :sswitch_1
    const v0, 0x7f0a0472

    goto :goto_0

    .line 576
    :sswitch_2
    const v0, 0x7f0a046c

    goto :goto_0

    .line 581
    :sswitch_3
    const v0, 0x7f0a046d

    goto :goto_0

    .line 585
    :sswitch_4
    const v0, 0x7f0a046e

    goto :goto_0

    .line 589
    :sswitch_5
    const v0, 0x7f0a0471

    goto :goto_0

    .line 592
    :sswitch_6
    const v0, 0x7f0a046f

    goto :goto_0

    .line 596
    :sswitch_7
    const v0, 0x7f0a0470

    goto :goto_0

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_1
        0x83 -> :sswitch_2
        0x84 -> :sswitch_3
        0x85 -> :sswitch_4
        0x86 -> :sswitch_5
        0x87 -> :sswitch_6
        0x88 -> :sswitch_7
        0xc1 -> :sswitch_3
        0xc3 -> :sswitch_5
        0xe1 -> :sswitch_1
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_4
        0xe5 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getExpiryTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 6402
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6404
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_mms_expiry_time"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExpiryTimeLong(Landroid/content/Context;)J
    .locals 9
    .parameter "context"

    .prologue
    const-wide/32 v4, 0x2a300

    const-wide/16 v6, 0x0

    .line 6409
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6410
    .local v0, expiryTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6411
    .local v1, expiryTimeIndex:I
    const-wide/16 v2, 0x0

    .line 6413
    .local v2, timeValue:J
    packed-switch v1, :pswitch_data_0

    .line 6421
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getExpiryTimeLong] expiryTimeIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6425
    :goto_0
    :pswitch_0
    return-wide v4

    .line 6414
    :pswitch_1
    const-wide/16 v4, 0xe10

    goto :goto_0

    .line 6415
    :pswitch_2
    const-wide/16 v4, 0x5460

    goto :goto_0

    .line 6416
    :pswitch_3
    const-wide/32 v4, 0x15180

    goto :goto_0

    :pswitch_4
    move-wide v4, v6

    .line 6418
    goto :goto_0

    :pswitch_5
    move-wide v4, v6

    .line 6419
    goto :goto_0

    .line 6413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getExternalSdCardStoragePath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 5755
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v6, :cond_0

    .line 5756
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    sput-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 5757
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 5759
    :cond_0
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 5760
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v4

    .line 5761
    .local v1, length:I
    const-string v2, ""

    .line 5762
    .local v2, storagePath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 5763
    aget-object v3, v4, v0

    .line 5764
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 5765
    .local v5, subsystem:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 5766
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5767
    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5768
    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 5762
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5773
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v5           #subsystem:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardStoragePath:Ljava/lang/String;

    return-object v6
.end method

.method public static getFirstAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 5
    .parameter "model"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5693
    if-nez p0, :cond_1

    .line 5720
    :cond_0
    :goto_0
    return v2

    .line 5697
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 5698
    .local v0, numberOfSlides:I
    if-lt v0, v3, :cond_0

    .line 5699
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 5700
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5701
    const/4 v2, 0x2

    goto :goto_0

    .line 5704
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5705
    const/4 v2, 0x4

    goto :goto_0

    .line 5708
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5709
    const/4 v2, 0x3

    goto :goto_0

    .line 5712
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 5713
    goto :goto_0

    .line 5716
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 7431
    const/4 v1, 0x0

    .line 7432
    .local v1, formattedNumber:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 7433
    const/4 p0, 0x0

    .line 7447
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 7438
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 7440
    .local v0, CountryIso:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7444
    if-eqz v1, :cond_0

    move-object p0, v1

    .line 7447
    goto :goto_0
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1994
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1995
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1997
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1998
    const-string v0, ""

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 2002
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2003
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    const-string v1, "+82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 2006
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "msgItem"
    .parameter "isView"
    .parameter "bFailed"

    .prologue
    const/4 v3, 0x0

    .line 409
    if-nez p1, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 428
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const-string v0, "mms"

    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget v6, p3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 413
    .local v6, type:I
    packed-switch v6, :pswitch_data_0

    .line 420
    :pswitch_0
    const-string v0, "Mms/MessageUtils"

    const-string v1, "No details could be retrieved."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, ""

    goto :goto_0

    .line 415
    :pswitch_1
    invoke-static {p0, p1, v3, p3}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p5

    .line 418
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLcom/android/mms/ui/MessageItem;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 424
    .end local v6           #type:I
    :cond_1
    iget-boolean v0, p3, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 425
    :cond_2
    invoke-static {p0, p1, p4, p3}, Lcom/android/mms/ui/MessageUtils;->getSAEAlertMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_3
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p4, p3, v0}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMessageFromSos(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "message"

    .prologue
    const/16 v8, 0x1b

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3472
    if-nez p0, :cond_1

    .line 3474
    const-string p0, ""

    .line 3494
    .local v0, SOS_MSG_IDENTIFIER_LEN:I
    .local v1, len:I
    :cond_0
    :goto_0
    return-object p0

    .line 3477
    .end local v0           #SOS_MSG_IDENTIFIER_LEN:I
    .end local v1           #len:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3479
    .restart local v1       #len:I
    const/4 v0, 0x6

    .line 3481
    .restart local v0       #SOS_MSG_IDENTIFIER_LEN:I
    if-le v1, v4, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    .line 3483
    if-le v1, v7, :cond_2

    .line 3484
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3486
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3489
    :cond_3
    if-le v1, v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    .line 3491
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMmsDeliveryTimeLong(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    .line 6454
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6455
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_mms_delivery_time"

    sget-object v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6457
    .local v0, deivery_time:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 6464
    :goto_0
    :pswitch_0
    return-wide v2

    .line 6459
    :pswitch_1
    const-wide/16 v2, 0xe10

    goto :goto_0

    .line 6460
    :pswitch_2
    const-wide/16 v2, 0x5460

    goto :goto_0

    .line 6461
    :pswitch_3
    const-wide/32 v2, 0x15180

    goto :goto_0

    .line 6462
    :pswitch_4
    const-wide/32 v2, 0x93a80

    goto :goto_0

    .line 6457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMmsPiority(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 6438
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6440
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mmspriority"

    sget-object v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_PRIORITY:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6442
    .local v1, priority:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 6448
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_PRIORITY:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    .line 6443
    :pswitch_0
    const/16 v2, 0x82

    goto :goto_0

    .line 6444
    :pswitch_1
    const/16 v2, 0x81

    goto :goto_0

    .line 6445
    :pswitch_2
    const/16 v2, 0x80

    goto :goto_0

    .line 6442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "msgItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7398
    .local v0, arrayAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 7399
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 7400
    .local v3, szRecipients:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7401
    const-string v4, ";"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7402
    .local v1, dests:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 7403
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7407
    .end local v1           #dests:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #szRecipients:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getMmsReportAllowed(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 6389
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6390
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_send_mms_delivery_reports"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6392
    .local v0, ReportAlloed:Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6393
    const/16 v2, 0x80

    .line 6395
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x81

    goto :goto_0
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLcom/android/mms/ui/MessageItem;Z)Ljava/lang/String;
    .locals 41
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "isView"
    .parameter "msgItem"
    .parameter "bFailed"

    .prologue
    .line 614
    const/16 v34, 0x0

    .line 615
    .local v34, type:I
    if-eqz p3, :cond_0

    .line 616
    const/16 v37, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 620
    :goto_0
    const/16 v37, 0x82

    move/from16 v0, v34

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v37

    .line 894
    :goto_1
    return-object v37

    .line 618
    :cond_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v34, v0

    goto :goto_0

    .line 624
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v12, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 626
    .local v24, res:Landroid/content/res/Resources;
    const-wide/16 v16, 0x0

    .line 627
    .local v16, id:J
    if-eqz p3, :cond_4

    .line 628
    const/16 v37, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 632
    :goto_2
    const/16 v35, 0x0

    .line 633
    .local v35, uri:Landroid/net/Uri;
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 634
    sget-object v37, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v37

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    .line 641
    :goto_3
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .local v19, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v37, 0x7f0a00a5

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    const v37, 0x7f0a00a7

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const/4 v5, 0x0

    .line 666
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v37, v0

    if-eqz v37, :cond_2

    move-object/from16 v37, v19

    .line 668
    check-cast v37, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v14

    .line 669
    .local v14, from:Ljava/lang/String;
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    const v37, 0x7f0a00a9

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v37

    if-eqz v37, :cond_7

    .line 674
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_6

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, _address:Ljava/lang/String;
    :goto_4
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .end local v4           #_address:Ljava/lang/String;
    .end local v14           #from:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v37

    if-nez v37, :cond_a

    .line 685
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    const v37, 0x7f0a00aa

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v33

    .line 690
    .local v33, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v29, sbTo:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 693
    .local v11, countTo:I
    if-eqz v33, :cond_c

    .line 694
    move-object/from16 v6, v33

    .local v6, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_5
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    aget-object v23, v6, v15

    .line 695
    .local v23, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v11, :cond_3

    .line 696
    const-string v37, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    add-int/lit8 v11, v11, 0x1

    .line 694
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 630
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #countTo:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v19           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29           #sbTo:Ljava/lang/StringBuilder;
    .end local v33           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v35           #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v16, v0

    goto/16 :goto_2

    .line 636
    .restart local v35       #uri:Landroid/net/Uri;
    :cond_5
    sget-object v37, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v37

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    goto/16 :goto_3

    .line 642
    :catch_0
    move-exception v13

    .line 643
    .local v13, e:Lcom/google/android/mms/MmsException;
    const-string v37, "Mms/MessageUtils"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Failed to load the message: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0a00a3

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_1

    .line 674
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #address:Ljava/lang/String;
    .restart local v14       #from:Ljava/lang/String;
    .restart local v19       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_6
    const v37, 0x7f0a0188

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 677
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_8

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_address:Ljava/lang/String;
    :goto_6
    goto/16 :goto_4

    .end local v4           #_address:Ljava/lang/String;
    :cond_8
    const v37, 0x7f0a0069

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 701
    .end local v14           #from:Ljava/lang/String;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v11       #countTo:I
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v29       #sbTo:Ljava/lang/StringBuilder;
    .restart local v33       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 707
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15           #i$:I
    .end local v18           #len$:I
    :goto_7
    if-eqz v5, :cond_d

    .line 708
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .end local v11           #countTo:I
    .end local v29           #sbTo:Ljava/lang/StringBuilder;
    .end local v33           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v37

    if-eqz v37, :cond_12

    .line 714
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v28, sbReply:Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v37, v0

    if-eqz v37, :cond_e

    move-object/from16 v37, v19

    .line 716
    check-cast v37, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 718
    .local v7, cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v10, 0x0

    .line 719
    .local v10, countReply:I
    if-eqz v7, :cond_e

    .line 720
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    const v37, 0x7f0a00ab

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    move-object v6, v7

    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_9
    move/from16 v0, v18

    if-ge v15, v0, :cond_e

    aget-object v23, v6, v15

    .line 725
    .restart local v23       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v10, :cond_b

    .line 726
    const-string v37, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    add-int/lit8 v10, v10, 0x1

    .line 724
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 704
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7           #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #countReply:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #sbReply:Ljava/lang/StringBuilder;
    .restart local v11       #countTo:I
    .restart local v29       #sbTo:Ljava/lang/StringBuilder;
    .restart local v33       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    const v37, 0x7f0a016f

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 710
    :cond_d
    const-string v37, "Mms/MessageUtils"

    const-string v38, "recipient list is empty!"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 734
    .end local v11           #countTo:I
    .end local v29           #sbTo:Ljava/lang/StringBuilder;
    .end local v33           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28       #sbReply:Ljava/lang/StringBuilder;
    :cond_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v37

    if-lez v37, :cond_11

    .line 735
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .end local v28           #sbReply:Ljava/lang/StringBuilder;
    :cond_f
    :goto_a
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v37, v0

    if-eqz v37, :cond_17

    .line 768
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .local v26, sbBcc:Ljava/lang/StringBuilder;
    move-object/from16 v37, v19

    .line 769
    check-cast v37, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v36

    .line 771
    .local v36, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v8, 0x0

    .line 773
    .local v8, countBcc:I
    if-eqz v36, :cond_17

    .line 774
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    const v37, 0x7f0a00ac

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 778
    move-object/from16 v6, v36

    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_b
    move/from16 v0, v18

    if-ge v15, v0, :cond_16

    aget-object v23, v6, v15

    .line 779
    .restart local v23       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v8, :cond_10

    .line 780
    const-string v37, ", "

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_10
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v8, v8, 0x1

    .line 778
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 737
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8           #countBcc:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v26           #sbBcc:Ljava/lang/StringBuilder;
    .end local v36           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28       #sbReply:Ljava/lang/StringBuilder;
    :cond_11
    const-string v37, "Mms/MessageUtils"

    const-string v38, "recipient list is empty!"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 739
    .end local v28           #sbReply:Ljava/lang/StringBuilder;
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v37

    if-eqz v37, :cond_f

    .line 741
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v27, sbGroup:Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 744
    .restart local v7       #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v9, 0x0

    .line 745
    .local v9, countGroup:I
    if-eqz v7, :cond_14

    .line 746
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    const v37, 0x7f0a00ab

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    move-object v6, v7

    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_c
    move/from16 v0, v18

    if-ge v15, v0, :cond_14

    aget-object v23, v6, v15

    .line 751
    .restart local v23       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v9, :cond_13

    .line 752
    const-string v37, ", "

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_13
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    add-int/lit8 v9, v9, 0x1

    .line 750
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 759
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v37

    if-lez v37, :cond_15

    .line 760
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 762
    :cond_15
    const-string v37, "Mms/MessageUtils"

    const-string v38, "**********CC fields is empty*********"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 786
    .end local v7           #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #countGroup:I
    .end local v27           #sbGroup:Ljava/lang/StringBuilder;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v8       #countBcc:I
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v26       #sbBcc:Ljava/lang/StringBuilder;
    .restart local v36       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_16
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v37, v0

    if-lez v37, :cond_1d

    .line 787
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8           #countBcc:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v26           #sbBcc:Ljava/lang/StringBuilder;
    .end local v36           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_17
    :goto_d
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    const/16 v20, 0x0

    .line 797
    .local v20, msgBox:I
    if-eqz p3, :cond_1e

    .line 798
    const/16 v37, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 802
    :goto_e
    const/16 v37, 0x3

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_1f

    .line 803
    const v37, 0x7f0a00af

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :goto_f
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v37

    const-wide/16 v39, 0x3e8

    mul-long v37, v37, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    const v37, 0x7f0a00b0

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 824
    .local v32, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_22

    .line 825
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v31

    .line 827
    .local v31, subStr:Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v37

    add-int p2, p2, v37

    .line 828
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .end local v31           #subStr:Ljava/lang/String;
    :goto_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v37

    if-eqz v37, :cond_18

    .line 835
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    const v37, 0x7f0a00b2

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 838
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v37

    if-eqz v37, :cond_24

    .line 839
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->getReserved()J

    move-result-wide v37

    const-wide/16 v39, 0x1

    cmp-long v37, v37, v39

    if-nez v37, :cond_23

    .line 840
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_18
    :goto_11
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    const v37, 0x7f0a00b1

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0x3ff

    move/from16 v37, v0

    move/from16 v0, v37

    div-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 854
    const/16 v37, 0x200e

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    const-string v37, " KB"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v37

    if-eqz v37, :cond_1a

    .line 858
    const/16 v37, 0x4

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_26

    .line 859
    invoke-static/range {v35 .. v35}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 860
    .local v21, msgId:J
    const/16 v25, 0x0

    .line 863
    .local v25, respStatus:I
    const-string v37, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const v37, 0x7f0a00cf

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    if-eqz p5, :cond_19

    .line 867
    const v37, 0x7f0a0184

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :cond_19
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getResponseStatus(Landroid/content/Context;J)I

    move-result v25

    .line 871
    if-lez v25, :cond_25

    .line 872
    const-string v37, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->getErrorStringID(I)I

    move-result v37

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .end local v21           #msgId:J
    .end local v25           #respStatus:I
    :cond_1a
    :goto_12
    const/16 v37, 0x80

    move/from16 v0, v34

    move/from16 v1, v37

    if-ne v0, v1, :cond_1c

    const-wide/16 v37, 0x0

    cmp-long v37, v16, v37

    if-lez v37, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v37

    if-eqz v37, :cond_1b

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x1

    cmp-long v37, v37, v39

    if-eqz v37, :cond_1c

    .line 889
    :cond_1b
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    .line 890
    .local v30, statusStr:Ljava/lang/String;
    if-eqz v30, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v37

    if-eqz v37, :cond_1c

    .line 891
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .end local v30           #statusStr:Ljava/lang/String;
    :cond_1c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_1

    .line 789
    .end local v20           #msgBox:I
    .end local v32           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v8       #countBcc:I
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v26       #sbBcc:Ljava/lang/StringBuilder;
    .restart local v36       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1d
    const-string v37, "Mms/MessageUtils"

    const-string v38, "**********Bcc fields is empty*********"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 800
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8           #countBcc:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v26           #sbBcc:Ljava/lang/StringBuilder;
    .end local v36           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v20       #msgBox:I
    :cond_1e
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v20

    goto/16 :goto_e

    .line 804
    :cond_1f
    const/16 v37, 0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    .line 806
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServerTimeLabel()Z

    move-result v37

    if-eqz v37, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsServerTime()Z

    move-result v37

    if-eqz v37, :cond_20

    .line 807
    const v37, 0x7f0a00ad

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 809
    :cond_20
    const v37, 0x7f0a00ae

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 812
    :cond_21
    const v37, 0x7f0a00ad

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 830
    .restart local v32       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_22
    const v37, 0x7f0a0199

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 842
    :cond_23
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 844
    :cond_24
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 874
    .restart local v21       #msgId:J
    .restart local v25       #respStatus:I
    :cond_25
    if-nez p5, :cond_1a

    .line 875
    const v37, 0x7f0a00c8

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 877
    .end local v21           #msgId:J
    .end local v25           #respStatus:I
    :cond_26
    const/16 v37, 0x2

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_1a

    .line 879
    const-string v37, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const v37, 0x7f0a00cf

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    const v37, 0x7f0a0473

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12
.end method

.method public static getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phone"

    .prologue
    .line 516
    invoke-static {p0}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 523
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 524
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 537
    .end local p0
    :cond_2
    :goto_0
    return-object p0

    .line 531
    .restart local p0
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 532
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200f)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 535
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200f)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 537
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 21
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "msgItem"

    .prologue
    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v5, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 437
    .local v11, res:Landroid/content/res/Resources;
    const-wide/16 v8, 0x0

    .line 438
    .local v8, id:J
    if-eqz p2, :cond_0

    .line 439
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 443
    :goto_0
    const/4 v13, 0x0

    .line 444
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 445
    sget-object v14, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 451
    :goto_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    check-cast v10, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .local v10, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v14, 0x7f0a00a5

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    const v14, 0x7f0a00a8

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v7

    .line 465
    .local v7, from:Ljava/lang/String;
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    const v14, 0x7f0a00a9

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 470
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, _address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    const v14, 0x7f0a0016

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    const v14, 0x7f0a00b0

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 490
    .local v12, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_5

    .line 491
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :goto_3
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    const v14, 0x7f0a00b1

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v14

    const-wide/16 v16, 0x3ff

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const/16 v14, 0x200e

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    const v14, 0x7f0a0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .end local v4           #_address:Ljava/lang/String;
    .end local v7           #from:Ljava/lang/String;
    .end local v10           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v12           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_4
    return-object v14

    .line 441
    .end local v13           #uri:Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    goto/16 :goto_0

    .line 447
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_1
    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_1

    .line 452
    :catch_0
    move-exception v6

    .line 453
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v14, "Mms/MessageUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to load the message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a00a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 470
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .restart local v7       #from:Ljava/lang/String;
    .restart local v10       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_2
    const v14, 0x7f0a0188

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 473
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_address:Ljava/lang/String;
    :goto_5
    goto/16 :goto_2

    .end local v4           #_address:Ljava/lang/String;
    :cond_4
    const v14, 0x7f0a0069

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 493
    .restart local v4       #_address:Ljava/lang/String;
    .restart local v12       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    const v14, 0x7f0a0199

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2831
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2833
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2834
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2837
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2838
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2833
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2842
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2847
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 2851
    .end local v1           #c:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getPhoneServiceState(Landroid/content/Context;)I
    .locals 14
    .parameter "context"

    .prologue
    .line 3599
    const/4 v9, 0x1

    .line 3600
    .local v9, retVal:I
    const/4 v6, 0x0

    .line 3602
    .local v6, method:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 3603
    .local v4, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_1

    .line 3605
    const-string v11, "Mms/MessageUtils"

    const-string v12, "ITelephony.getServiceState()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getServiceState"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 3608
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3609
    .local v1, classInfo:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 3610
    .local v8, methods:[Ljava/lang/reflect/Method;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v7, v0, v3

    .line 3612
    .local v7, methodInfo:Ljava/lang/reflect/Method;
    const-string v11, "Mms/MessageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "method.name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3610
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3615
    .end local v7           #methodInfo:Ljava/lang/reflect/Method;
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v6, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 3616
    .local v10, state:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 3629
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v1           #classInfo:Ljava/lang/Class;
    .end local v3           #i$:I
    .end local v4           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #len$:I
    .end local v8           #methods:[Ljava/lang/reflect/Method;
    .end local v10           #state:Ljava/lang/Integer;
    :goto_1
    const-string v11, "Mms/MessageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "retVal="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3630
    return v9

    .line 3621
    .restart local v4       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    const-string v11, "Mms/MessageUtils"

    const-string v12, "Telephony service is null, can\'t call getPhoneServiceState"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3625
    .end local v4           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    .line 3627
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "Mms/MessageUtils"

    const-string v12, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 1302
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1303
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 1310
    :pswitch_0
    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1305
    :pswitch_1
    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1307
    :pswitch_2
    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1303
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPriorityType(Landroid/content/Context;J)I
    .locals 6
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 3158
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3162
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3168
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v3

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_0
    return v3

    .line 3163
    :catch_0
    move-exception v0

    .line 3164
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3165
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 3260
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    const-string v0, "display_recipient_ids"

    aput-object v0, v3, v10

    .line 3265
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 3266
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3270
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 3272
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3273
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3274
    .local v9, recipientIds:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3275
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3280
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3284
    .end local v9           #recipientIds:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 3280
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v5

    .line 3284
    goto :goto_0

    .line 3280
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "recipientIds"
    .parameter "allowQuery"

    .prologue
    .line 1616
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1617
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1631
    :goto_0
    return-object v2

    .line 1620
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1621
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1622
    .local v0, addressBuf:Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    .line 1624
    const-string v2, ""

    goto :goto_0

    .line 1626
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1630
    .end local v0           #addressBuf:Ljava/lang/StringBuilder;
    :goto_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1631
    goto :goto_0

    .line 1628
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public static getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 549
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v4, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v4, :cond_0

    .line 556
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 557
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 559
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 562
    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    :goto_0
    return-object v3

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load the message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z
    .locals 17
    .parameter "context"
    .parameter "mMsgItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2027
    .local p2, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 2028
    .local v9, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const/4 v1, 0x0

    .line 2029
    .local v1, IsReplyAllAvaiable:Z
    const/4 v4, 0x0

    .line 2030
    .local v4, count:I
    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static/range {v14 .. v16}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 2032
    .local v13, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v9, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 2038
    instance-of v14, v9, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v14, :cond_6

    move-object v14, v9

    .line 2039
    check-cast v14, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 2041
    .local v12, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_2

    .line 2042
    move-object v2, v12

    .local v2, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v10, v2, v7

    .line 2044
    .local v10, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2042
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2033
    .end local v2           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v12           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v5

    .line 2034
    .local v5, e:Lcom/google/android/mms/MmsException;
    const-string v14, "Mms/MessageUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to load the message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2047
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v12       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    .line 2048
    .local v11, recipientName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 2049
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2055
    .end local v2           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #recipientName:Ljava/lang/String;
    :cond_2
    check-cast v9, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v9           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 2056
    .local v3, cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_6

    .line 2057
    move-object v2, v3

    .restart local v2       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v8, v2

    .restart local v8       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v8, :cond_6

    aget-object v10, v2, v7

    .line 2059
    .restart local v10       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2057
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2062
    :cond_4
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    .line 2063
    .restart local v11       #recipientName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 2064
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2065
    if-nez v1, :cond_5

    .line 2066
    const/4 v1, 0x1

    .line 2068
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2074
    .end local v2           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #recipientName:Ljava/lang/String;
    .end local v12           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 2075
    .local v6, fromName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 2076
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2077
    add-int/lit8 v4, v4, 0x1

    .line 2080
    :cond_7
    const/4 v14, 0x1

    if-le v4, v14, :cond_8

    if-nez v1, :cond_8

    .line 2081
    const/4 v1, 0x1

    .line 2084
    :cond_8
    return v1
.end method

.method public static getResponseStatus(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 4800
    const/4 v8, 0x0

    .line 4801
    .local v8, respStatus:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4804
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4805
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 4808
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4810
    if-eqz v8, :cond_1

    .line 4811
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4813
    :cond_1
    return v8

    .line 4808
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getResponseTypeTextID(I)I
    .locals 3
    .parameter "msgResponseType"

    .prologue
    const/4 v2, 0x4

    .line 6153
    const v0, 0x7f0a02b3

    .line 6155
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 6203
    :goto_0
    return v0

    .line 6160
    :pswitch_0
    const v0, 0x7f0a02a5

    .line 6161
    goto :goto_0

    .line 6164
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6165
    const v0, 0x7f0a02d0

    goto :goto_0

    .line 6167
    :cond_0
    const v0, 0x7f0a02a6

    .line 6168
    goto :goto_0

    .line 6171
    :pswitch_2
    const v0, 0x7f0a02a7

    .line 6172
    goto :goto_0

    .line 6176
    :pswitch_3
    const v0, 0x7f0a02a8

    .line 6177
    goto :goto_0

    .line 6181
    :pswitch_4
    const v0, 0x7f0a02a9

    .line 6182
    goto :goto_0

    .line 6185
    :pswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 6186
    const v0, 0x7f0a02cd

    goto :goto_0

    .line 6188
    :cond_1
    const v0, 0x7f0a02aa

    .line 6189
    goto :goto_0

    .line 6195
    :pswitch_6
    const v0, 0x7f0a02ab

    .line 6196
    goto :goto_0

    .line 6199
    :pswitch_7
    const v0, 0x7f0a02ac

    goto :goto_0

    .line 6155
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
    .end packed-switch
.end method

.method private static getSAEAlertMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "msgItem"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/16 v8, 0x20

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1249
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1251
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x7f0a00a5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    const v6, 0x7f0a0289

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1256
    const/4 v5, 0x0

    .line 1257
    .local v5, smsType:I
    if-eqz p2, :cond_1

    .line 1259
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1260
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1270
    :goto_0
    invoke-static {v5}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1271
    const v6, 0x7f0a00aa

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a02b7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    const v6, 0x7f0a00ae

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1283
    const-wide/16 v0, 0x0

    .line 1284
    .local v0, date:J
    if-eqz p2, :cond_3

    .line 1286
    const/4 v6, 0x3

    :try_start_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 1293
    :goto_2
    invoke-static {p0, v0, v1, v9}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1262
    .end local v0           #date:J
    :cond_0
    const/4 v6, 0x1

    :try_start_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    goto :goto_0

    .line 1264
    :catch_0
    move-exception v3

    .line 1265
    .local v3, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v6, "Mms/MessageUtils"

    const-string v7, "CursorIndexOutOfBoundsException - cursor.getInt(MessageOptions.COLUMN_SMS_TYPE)"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1268
    .end local v3           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    goto :goto_0

    .line 1273
    :cond_2
    const v6, 0x7f0a00a9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1287
    .restart local v0       #date:J
    :catch_1
    move-exception v3

    .line 1288
    .local v3, e:Ljava/lang/IllegalStateException;
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalStateException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1291
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :cond_3
    iget-wide v0, p3, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    goto :goto_2
.end method

.method public static getScreenHeight()I
    .locals 3

    .prologue
    .line 5166
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 5168
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method public static getScreenOrientation()I
    .locals 2

    .prologue
    .line 5172
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 5173
    .local v0, orientation:I
    return v0
.end method

.method public static getScreenWidth()I
    .locals 3

    .prologue
    .line 5154
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 5156
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public static getSendIcon(Landroid/content/Context;II)I
    .locals 7
    .parameter "context"
    .parameter "simSlot"
    .parameter "mode"

    .prologue
    .line 5412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select_icon_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5414
    .local v1, property_simicon:Ljava/lang/String;
    const/4 v2, 0x0

    .line 5415
    .local v2, sendIcon:I
    const/16 v0, 0xa

    .line 5416
    .local v0, iconMaxIdx:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 5417
    .local v3, sendIconIdx:I
    mul-int v4, v0, p2

    add-int/2addr v3, v4

    .line 5418
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSendIcon() : simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sendIconIdx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5420
    const-string v4, "V2"

    const-string v5, "V2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5421
    packed-switch v3, :pswitch_data_0

    .line 5511
    :pswitch_0
    const v2, 0x7f0202a4

    .line 5561
    :goto_0
    return v2

    .line 5437
    :pswitch_1
    const v2, 0x7f0202a4

    .line 5438
    goto :goto_0

    .line 5440
    :pswitch_2
    const v2, 0x7f0202a5

    .line 5441
    goto :goto_0

    .line 5443
    :pswitch_3
    const v2, 0x7f0202a3

    .line 5444
    goto :goto_0

    .line 5446
    :pswitch_4
    const v2, 0x7f0202ab

    .line 5447
    goto :goto_0

    .line 5449
    :pswitch_5
    const v2, 0x7f0202a9

    .line 5450
    goto :goto_0

    .line 5452
    :pswitch_6
    const v2, 0x7f0202a8

    .line 5453
    goto :goto_0

    .line 5455
    :pswitch_7
    const v2, 0x7f0202a7

    .line 5456
    goto :goto_0

    .line 5458
    :pswitch_8
    const v2, 0x7f0202aa

    .line 5459
    goto :goto_0

    .line 5461
    :pswitch_9
    const v2, 0x7f0202a6

    .line 5462
    goto :goto_0

    .line 5466
    :pswitch_a
    const v2, 0x7f0202ae

    .line 5467
    goto :goto_0

    .line 5469
    :pswitch_b
    const v2, 0x7f0202af

    .line 5470
    goto :goto_0

    .line 5472
    :pswitch_c
    const v2, 0x7f0202ad

    .line 5473
    goto :goto_0

    .line 5475
    :pswitch_d
    const v2, 0x7f0202b5

    .line 5476
    goto :goto_0

    .line 5478
    :pswitch_e
    const v2, 0x7f0202b3

    .line 5479
    goto :goto_0

    .line 5481
    :pswitch_f
    const v2, 0x7f0202b2

    .line 5482
    goto :goto_0

    .line 5484
    :pswitch_10
    const v2, 0x7f0202b1

    .line 5485
    goto :goto_0

    .line 5487
    :pswitch_11
    const v2, 0x7f0202b4

    .line 5488
    goto :goto_0

    .line 5490
    :pswitch_12
    const v2, 0x7f0202b0

    .line 5491
    goto :goto_0

    .line 5515
    :cond_0
    packed-switch v3, :pswitch_data_1

    .line 5557
    const v2, 0x7f0202a4

    goto :goto_0

    .line 5519
    :pswitch_13
    const v2, 0x7f0202a4

    goto :goto_0

    .line 5521
    :pswitch_14
    const v2, 0x7f0202a5

    goto :goto_0

    .line 5523
    :pswitch_15
    const v2, 0x7f0202a7

    goto :goto_0

    .line 5525
    :pswitch_16
    const v2, 0x7f0202aa

    goto :goto_0

    .line 5527
    :pswitch_17
    const v2, 0x7f0202a6

    goto :goto_0

    .line 5530
    :pswitch_18
    const v2, 0x7f0202ae

    goto :goto_0

    .line 5532
    :pswitch_19
    const v2, 0x7f0202af

    goto :goto_0

    .line 5534
    :pswitch_1a
    const v2, 0x7f0202b1

    goto :goto_0

    .line 5536
    :pswitch_1b
    const v2, 0x7f0202b4

    goto :goto_0

    .line 5538
    :pswitch_1c
    const v2, 0x7f0202b0

    goto :goto_0

    .line 5421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 5515
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x20

    const/16 v7, 0xa

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v1, info:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 366
    .local v2, res:Landroid/content/res/Resources;
    const/16 v0, 0xb15

    .line 368
    .local v0, format_flags:I
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v3

    .line 371
    :cond_1
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 372
    const v3, 0x7f0a049f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 382
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    const v3, 0x7f0a0115

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {p0, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_2
    const-string v3, "mms"

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 399
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getSenderString(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "msgItem"
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 7991
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7992
    .local v1, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 7993
    .local v4, mDisplayAddress:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-lez v8, :cond_2

    .line 7994
    const-string v6, ""

    .line 7995
    .local v6, szDisplayAddress:Ljava/lang/String;
    if-eqz p0, :cond_1

    iget-wide v8, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 7996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7997
    .local v0, arrayAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-wide v8, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v1, v8, v9}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 7998
    .local v7, szRecipients:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 7999
    const-string v8, ";"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8000
    .local v2, dests:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 8001
    aget-object v8, v2, v3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8000
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8003
    .end local v2           #dests:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 8004
    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8007
    .end local v0           #arrayAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #szRecipients:Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 8008
    move-object v4, v6

    .line 8054
    .end local v6           #szDisplayAddress:Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 8055
    const-string v8, "mms"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_a

    .line 8056
    const v8, 0x7f0a005c

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8076
    :cond_3
    :goto_2
    return-object v4

    .line 8010
    .restart local v6       #szDisplayAddress:Ljava/lang/String;
    :cond_4
    const-string v8, "mms"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 8011
    if-eqz p0, :cond_5

    const v8, 0x7f0a0011

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 8014
    invoke-static {v1, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v5

    .line 8030
    .local v5, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8032
    goto :goto_1

    .line 8033
    .end local v5           #phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 8034
    const v8, 0x7f0a0188

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 8036
    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 8037
    iget-object v8, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 8041
    :cond_7
    if-eqz p0, :cond_2

    .line 8042
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v8, :cond_8

    .line 8043
    const v8, 0x7f0a0132

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 8045
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 8046
    const v8, 0x7f0a0188

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 8048
    :cond_9
    iget-object v8, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 8058
    .end local v6           #szDisplayAddress:Ljava/lang/String;
    :cond_a
    const v8, 0x7f0a0011

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method private static getSeverityTextID(I)I
    .locals 1
    .parameter "msgSeverity"

    .prologue
    .line 6115
    const v0, 0x7f0a02b3

    .line 6120
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 6131
    :goto_0
    return v0

    .line 6123
    :pswitch_0
    const v0, 0x7f0a02ad

    .line 6124
    goto :goto_0

    .line 6127
    :pswitch_1
    const v0, 0x7f0a02ae

    goto :goto_0

    .line 6120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "activity"

    .prologue
    .line 7366
    const-string v0, "com.android.mms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSimIcon(Landroid/content/Context;II)I
    .locals 7
    .parameter "context"
    .parameter "simSlot"
    .parameter "mode"

    .prologue
    .line 5291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select_icon_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5293
    .local v1, property_simicon:Ljava/lang/String;
    const/4 v2, 0x0

    .line 5294
    .local v2, simIcon:I
    const/4 v0, 0x5

    .line 5295
    .local v0, iconMaxIdx:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 5296
    .local v3, simIconIdx:I
    const-string v4, "V2"

    const-string v5, "V2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5297
    const/16 v0, 0xa

    .line 5299
    :cond_0
    mul-int v4, v0, p2

    add-int/2addr v3, v4

    .line 5300
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimIcon() : simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simIconIdx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    const-string v4, "V2"

    const-string v5, "V2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5303
    packed-switch v3, :pswitch_data_0

    .line 5375
    :pswitch_0
    const v2, 0x7f0202d7

    .line 5408
    :goto_0
    return v2

    .line 5319
    :pswitch_1
    const v2, 0x7f0202d7

    .line 5320
    goto :goto_0

    .line 5322
    :pswitch_2
    const v2, 0x7f0202d8

    .line 5323
    goto :goto_0

    .line 5325
    :pswitch_3
    const v2, 0x7f0202ca

    .line 5326
    goto :goto_0

    .line 5328
    :pswitch_4
    const v2, 0x7f020305

    .line 5329
    goto :goto_0

    .line 5331
    :pswitch_5
    const v2, 0x7f0202f6

    .line 5332
    goto :goto_0

    .line 5334
    :pswitch_6
    const v2, 0x7f0202ed

    .line 5335
    goto :goto_0

    .line 5337
    :pswitch_7
    const v2, 0x7f0202e4

    .line 5338
    goto :goto_0

    .line 5340
    :pswitch_8
    const v2, 0x7f0202fc

    .line 5341
    goto :goto_0

    .line 5343
    :pswitch_9
    const v2, 0x7f0202de

    .line 5344
    goto :goto_0

    .line 5348
    :pswitch_a
    const v2, 0x7f0202cc

    .line 5349
    goto :goto_0

    .line 5351
    :pswitch_b
    const v2, 0x7f0202cd

    .line 5352
    goto :goto_0

    .line 5354
    :pswitch_c
    const v2, 0x7f0202c2

    .line 5355
    goto :goto_0

    .line 5357
    :pswitch_d
    const v2, 0x7f0202fd

    .line 5358
    goto :goto_0

    .line 5360
    :pswitch_e
    const v2, 0x7f0202ee

    .line 5361
    goto :goto_0

    .line 5363
    :pswitch_f
    const v2, 0x7f0202e5

    .line 5364
    goto :goto_0

    .line 5366
    :pswitch_10
    const v2, 0x7f0202df

    .line 5367
    goto :goto_0

    .line 5369
    :pswitch_11
    const v2, 0x7f0202f7

    .line 5370
    goto :goto_0

    .line 5372
    :pswitch_12
    const v2, 0x7f0202d9

    .line 5373
    goto :goto_0

    .line 5380
    :cond_1
    packed-switch v3, :pswitch_data_1

    .line 5405
    const v2, 0x7f0202d7

    goto :goto_0

    .line 5384
    :pswitch_13
    const v2, 0x7f0202d7

    goto :goto_0

    .line 5386
    :pswitch_14
    const v2, 0x7f0202d8

    goto :goto_0

    .line 5388
    :pswitch_15
    const v2, 0x7f0202e4

    goto :goto_0

    .line 5390
    :pswitch_16
    const v2, 0x7f0202fc

    goto :goto_0

    .line 5392
    :pswitch_17
    const v2, 0x7f0202de

    goto :goto_0

    .line 5395
    :pswitch_18
    const v2, 0x7f0202cc

    goto :goto_0

    .line 5397
    :pswitch_19
    const v2, 0x7f0202cd

    goto :goto_0

    .line 5399
    :pswitch_1a
    const v2, 0x7f0202df

    goto :goto_0

    .line 5401
    :pswitch_1b
    const v2, 0x7f0202f7

    goto :goto_0

    .line 5403
    :pswitch_1c
    const v2, 0x7f0202d9

    goto :goto_0

    .line 5303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 5380
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 5282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select_name_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5284
    .local v0, property_simname:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5285
    .local v1, simName:Ljava/lang/String;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimName() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5287
    return-object v1
.end method

.method public static getStringByteSize(Ljava/lang/String;)[I
    .locals 10
    .parameter "str"

    .prologue
    const/4 v4, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 6469
    if-nez p0, :cond_0

    .line 6470
    new-array v3, v4, [I

    .line 6523
    :goto_0
    return-object v3

    .line 6473
    :cond_0
    new-array v3, v4, [I

    .line 6474
    .local v3, ret:[I
    const/4 v1, 0x0

    .line 6475
    .local v1, nByte:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 6478
    .local v2, nStr:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKsc5601()Z

    move-result v4

    if-nez v4, :cond_4

    .line 6479
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 6480
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    if-le v4, v5, :cond_2

    .line 6488
    :cond_1
    aput v6, v3, v8

    .line 6489
    if-ne v0, v2, :cond_3

    .line 6490
    aput v1, v3, v6

    .line 6491
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMaxByte()I

    move-result v4

    aget v5, v3, v6

    sub-int/2addr v4, v5

    aput v4, v3, v9

    .line 6492
    aput v6, v3, v7

    .line 6493
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMaxByte()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int v4, v1, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v8

    goto :goto_0

    .line 6484
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 6479
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6495
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aput v4, v3, v6

    .line 6496
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMaxByte()I

    move-result v4

    aget v5, v3, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aput v4, v3, v9

    .line 6497
    aput v7, v3, v7

    .line 6498
    aget v4, v3, v6

    mul-int/lit8 v4, v4, 0x2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMaxByte()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v8

    goto :goto_0

    .line 6502
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_6

    .line 6503
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    if-le v4, v5, :cond_5

    .line 6504
    add-int/lit8 v1, v1, 0x2

    .line 6502
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6507
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6511
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMaxByte()I

    move-result v4

    aput v4, v3, v7

    .line 6512
    aget v4, v3, v7

    aget v5, v3, v7

    add-int/lit8 v5, v5, 0x1

    rem-int v5, v1, v5

    sub-int/2addr v4, v5

    aput v4, v3, v9

    .line 6513
    aget v4, v3, v7

    add-int/lit8 v4, v4, 0x1

    rem-int v4, v1, v4

    aput v4, v3, v6

    .line 6514
    aget v4, v3, v7

    add-int/lit8 v4, v4, 0x1

    div-int v4, v1, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v8

    goto/16 :goto_0
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 38
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "msgItem"
    .parameter "bFailed"

    .prologue
    .line 900
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    .local v19, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 904
    .local v36, res:Landroid/content/res/Resources;
    const/16 v24, 0x0

    .line 907
    .local v24, isCmas:Z
    const v3, 0x7f0a00a5

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    const v3, 0x7f0a00a6

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 913
    const/16 v37, 0x0

    .line 914
    .local v37, smsType:I
    if-eqz p2, :cond_2

    .line 916
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 917
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v37

    .line 927
    :goto_0
    invoke-static/range {v37 .. v37}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 928
    const v3, 0x7f0a00aa

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v3, "\u202a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    :goto_1
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 936
    const/4 v9, 0x0

    .line 937
    .local v9, _address:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .local v10, addr:Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 940
    .local v15, cursorGroupId:Landroid/database/Cursor;
    const-wide/16 v32, 0x0

    .line 942
    .local v32, nGroupId:J
    :try_start_1
    const-string v3, "group_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 943
    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-lez v3, :cond_16

    .line 944
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v5, v3

    .line 947
    .local v5, PROJECTION_Sms:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 949
    if-eqz v15, :cond_16

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    .line 950
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 953
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_15

    .line 955
    :try_start_2
    const-string v3, "address"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 956
    .local v12, addrNum:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 957
    .local v11, addrContact:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 959
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 960
    const-string v3, ", "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 953
    .end local v11           #addrContact:Ljava/lang/String;
    .end local v12           #addrNum:Ljava/lang/String;
    :cond_0
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 919
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    .end local v9           #_address:Ljava/lang/String;
    .end local v10           #addr:Ljava/lang/StringBuilder;
    .end local v15           #cursorGroupId:Landroid/database/Cursor;
    .end local v23           #i:I
    .end local v32           #nGroupId:J
    :cond_1
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v37

    goto/16 :goto_0

    .line 921
    :catch_0
    move-exception v20

    .line 922
    .local v20, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getInt(MessageOptions.COLUMN_SMS_TYPE)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 925
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v37

    goto/16 :goto_0

    .line 931
    :cond_3
    const v3, 0x7f0a00a9

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v3, "\u202a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 961
    .restart local v5       #PROJECTION_Sms:[Ljava/lang/String;
    .restart local v9       #_address:Ljava/lang/String;
    .restart local v10       #addr:Ljava/lang/StringBuilder;
    .restart local v15       #cursorGroupId:Landroid/database/Cursor;
    .restart local v23       #i:I
    .restart local v32       #nGroupId:J
    :catch_1
    move-exception v21

    .line 962
    .local v21, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 969
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    .end local v21           #ex:Ljava/lang/Exception;
    .end local v23           #i:I
    :catch_2
    move-exception v21

    .line 970
    .restart local v21       #ex:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 972
    if-eqz v15, :cond_4

    .line 973
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 976
    .end local v21           #ex:Ljava/lang/Exception;
    :cond_4
    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-gtz v3, :cond_5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 978
    :try_start_6
    const-string v3, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v9

    .line 995
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 997
    const v3, 0x7f0a0188

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1020
    :cond_5
    :goto_6
    if-eqz v9, :cond_6

    .line 1021
    const-string v3, "#CMAS#"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 1022
    :cond_6
    if-eqz v24, :cond_1e

    .line 1023
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1d

    .line 1024
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a02b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1029
    :goto_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1034
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1035
    const v3, 0x7f0a00b2

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    const/16 v34, 0x0

    .line 1038
    .local v34, priority:I
    if-eqz v24, :cond_1f

    .line 1039
    const/16 v34, 0x4

    .line 1051
    :cond_8
    :goto_9
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_20

    .line 1052
    const v3, 0x7f0a00b3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .end local v34           #priority:I
    :cond_9
    :goto_a
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    const/4 v3, 0x3

    move/from16 v0, v37

    if-ne v0, v3, :cond_21

    .line 1060
    const v3, 0x7f0a00af

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :goto_b
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    const-wide/16 v16, 0x0

    .line 1074
    .local v16, date:J
    if-eqz p2, :cond_24

    .line 1076
    const/4 v3, 0x3

    :try_start_7
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-wide v16

    .line 1085
    :goto_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-static/range {v37 .. v37}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_c

    .line 1104
    :cond_a
    const-string v18, ""

    .line 1105
    .local v18, deliveryStatus:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1106
    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport;->getGroupSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 1124
    :cond_b
    :goto_d
    if-eqz v18, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1125
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    .end local v18           #deliveryStatus:Ljava/lang/String;
    :cond_c
    if-eqz v24, :cond_14

    .line 1159
    const/16 v25, -0x1

    .line 1160
    .local v25, msgCategory:I
    const/16 v29, -0x1

    .line 1161
    .local v29, msgResponseType:I
    const/16 v30, -0x1

    .line 1162
    .local v30, msgSeverity:I
    const/16 v31, -0x1

    .line 1163
    .local v31, msgUrgency:I
    const/16 v26, -0x1

    .line 1166
    .local v26, msgCertainity:I
    :try_start_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_d

    .line 1168
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1169
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1170
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1171
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1172
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_9

    move-result v25

    .line 1179
    :cond_d
    :goto_e
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1180
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_e

    .line 1182
    const v3, 0x7f0a0291

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-static/range {v30 .. v30}, Lcom/android/mms/ui/MessageUtils;->getSeverityTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1188
    :cond_e
    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_f

    .line 1189
    const v3, 0x7f0a0292

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MessageUtils;->getUrgencyTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1195
    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_10

    .line 1196
    const v3, 0x7f0a0290

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageUtils;->getResponseTypeTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    :cond_10
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_11

    .line 1203
    const v3, 0x7f0a0293

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    invoke-static/range {v26 .. v26}, Lcom/android/mms/ui/MessageUtils;->getCertainityTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    :cond_11
    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_12

    .line 1210
    const v3, 0x7f0a028e

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->getCmaeCategoryTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1215
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    .line 1216
    const-wide/16 v27, 0x0

    .line 1218
    .local v27, msgExpiry:J
    :try_start_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_13

    .line 1220
    const/16 v3, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_a

    move-result-wide v27

    .line 1226
    :cond_13
    :goto_f
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v27

    if-eqz v3, :cond_27

    .line 1227
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd, yyyy, h:mmaa"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v22, formatter1:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 1229
    .local v14, calendar1:Ljava/util/Calendar;
    move-wide/from16 v0, v27

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1230
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const v3, 0x7f0a02c9

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .end local v14           #calendar1:Ljava/util/Calendar;
    .end local v22           #formatter1:Ljava/text/SimpleDateFormat;
    .end local v25           #msgCategory:I
    .end local v26           #msgCertainity:I
    .end local v27           #msgExpiry:J
    .end local v29           #msgResponseType:I
    .end local v30           #msgSeverity:I
    .end local v31           #msgUrgency:I
    :cond_14
    :goto_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 966
    .end local v16           #date:J
    .restart local v5       #PROJECTION_Sms:[Ljava/lang/String;
    .restart local v23       #i:I
    :cond_15
    :try_start_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v9

    .line 972
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    .end local v23           #i:I
    :cond_16
    if-eqz v15, :cond_4

    .line 973
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 972
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_17

    .line 973
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v3

    .line 979
    :catch_3
    move-exception v21

    .line 981
    .restart local v21       #ex:Ljava/lang/Exception;
    if-eqz p2, :cond_18

    .line 983
    const/4 v3, 0x2

    :try_start_b
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 987
    :cond_18
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4

    move-result-object v9

    goto/16 :goto_5

    .line 990
    :catch_4
    move-exception v20

    .line 991
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getInt(MessageOptions.COLUMN_SMS_ADDRESS)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 999
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v21           #ex:Ljava/lang/Exception;
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_1c

    .line 1002
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    .local v13, address:Ljava/lang/StringBuilder;
    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 1004
    .local v35, recipient:[Ljava/lang/String;
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_11
    move-object/from16 v0, v35

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_1b

    .line 1005
    aget-object v3, v35, v23

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1006
    .restart local v11       #addrContact:Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    move-object/from16 v0, v35

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_1a

    .line 1008
    const-string v3, ", "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    :cond_1a
    add-int/lit8 v23, v23, 0x1

    goto :goto_11

    .line 1010
    .end local v11           #addrContact:Ljava/lang/String;
    :cond_1b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1011
    goto/16 :goto_6

    .line 1013
    .end local v13           #address:Ljava/lang/StringBuilder;
    .end local v23           #i:I
    .end local v35           #recipient:[Ljava/lang/String;
    :cond_1c
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 1026
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#CMAS#"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a02b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 1031
    :cond_1e
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1042
    .restart local v34       #priority:I
    :cond_1f
    :try_start_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 1044
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    move-result v34

    goto/16 :goto_9

    .line 1046
    :catch_5
    move-exception v20

    .line 1047
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getString(MessageOptions.COLUMN_SMS_PRIORITY)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1054
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_20
    const v3, 0x7f0a00b4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1061
    .end local v34           #priority:I
    :cond_21
    const/4 v3, 0x1

    move/from16 v0, v37

    if-ne v0, v3, :cond_23

    .line 1063
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServerTimeLabel()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsServerTime()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1064
    const v3, 0x7f0a00ad

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1066
    :cond_22
    const v3, 0x7f0a00ae

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1069
    :cond_23
    const v3, 0x7f0a00ad

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1077
    .restart local v16       #date:J
    :catch_6
    move-exception v20

    .line 1078
    .local v20, e:Ljava/lang/IllegalStateException;
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1079
    .end local v20           #e:Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v20

    .line 1080
    .local v20, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getLong(MessageOptions.COLUMN_SMS_DATE)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1083
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_24
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v16, v0

    goto/16 :goto_c

    .line 1108
    .restart local v18       #deliveryStatus:Ljava/lang/String;
    :cond_25
    if-eqz p2, :cond_26

    .line 1110
    :try_start_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 1112
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_d
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_8

    move-result-object v18

    goto/16 :goto_d

    .line 1115
    :catch_8
    move-exception v20

    .line 1116
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getLong(MessageOptions.COLUMN_ID)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1119
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_26
    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_d

    .line 1174
    .end local v18           #deliveryStatus:Ljava/lang/String;
    .restart local v25       #msgCategory:I
    .restart local v26       #msgCertainity:I
    .restart local v29       #msgResponseType:I
    .restart local v30       #msgSeverity:I
    .restart local v31       #msgUrgency:I
    :catch_9
    move-exception v20

    .line 1175
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - CMAS message"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1222
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v27       #msgExpiry:J
    :catch_a
    move-exception v20

    .line 1223
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getLong(COLUMN_SMS_CMAS_EXPIRES)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1235
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_27
    const-string v3, "Mms/MessageUtils"

    const-string v4, "msgExpiry is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const v3, 0x7f0a02c9

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    const v3, 0x7f0a02b5

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10
.end method

.method private static getUrgencyTextID(I)I
    .locals 1
    .parameter "msgUrgency"

    .prologue
    .line 6135
    const v0, 0x7f0a02b3

    .line 6137
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 6149
    :goto_0
    return v0

    .line 6141
    :pswitch_0
    const v0, 0x7f0a02af

    .line 6142
    goto :goto_0

    .line 6145
    :pswitch_1
    const v0, 0x7f0a02b0

    goto :goto_0

    .line 6137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getViewTitleString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 3172
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    .line 3173
    const-string v2, ""

    .line 3199
    :goto_0
    return-object v2

    .line 3175
    :cond_0
    const-string v2, ""

    .line 3176
    .local v2, result:Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3180
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3186
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v5, v1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v5, :cond_1

    .line 3188
    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3181
    :catch_0
    move-exception v0

    .line 3182
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load the message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3183
    const-string v2, ""

    goto :goto_0

    .line 3191
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 3192
    .local v3, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_2

    .line 3193
    invoke-static {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3195
    :cond_2
    const-string v5, "Mms/MessageUtils"

    const-string v6, "getViewTitleString : recipient list is empty!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3203
    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-gez v9, :cond_1

    .line 3204
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3256
    :cond_0
    :goto_0
    return-object v6

    .line 3206
    :cond_1
    const-string v5, ""

    .line 3207
    .local v5, result:Ljava/lang/String;
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 3211
    .local v8, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3217
    .local v4, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3218
    .local v6, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    instance-of v9, v4, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v9, :cond_2

    .line 3220
    check-cast v4, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v4           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .line 3221
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3212
    .end local v6           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 3213
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v9, "Mms/MessageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load the message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3214
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3225
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .restart local v4       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v6       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 3226
    .local v7, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_3

    .line 3227
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_4

    .line 3228
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3227
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3231
    .end local v3           #i:I
    :cond_3
    const-string v9, "Mms/MessageUtils"

    const-string v10, "getViewTitleString : recipient list is empty!"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3237
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 3238
    .local v1, cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_5

    .line 3239
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v9, v1

    if-ge v3, v9, :cond_5

    .line 3240
    aget-object v9, v1, v3

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3244
    .end local v3           #i:I
    :cond_5
    instance-of v9, v4, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v9, :cond_0

    .line 3245
    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    .end local v4           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 3246
    .local v0, bcc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 3247
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    array-length v9, v0

    if-ge v3, v9, :cond_0

    .line 3248
    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3247
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private static getYearUnit()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1555
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, ""

    .line 1558
    .local v1, yearUnit:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1559
    const-string v1, "\ub144"

    .line 1568
    :cond_0
    :goto_0
    return-object v1

    .line 1560
    :cond_1
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1561
    const-string v1, "\u5e74"

    goto :goto_0

    .line 1562
    :cond_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1566
    :cond_3
    const-string v1, "\u5e74"

    goto :goto_0
.end method

.method public static getfailedcase()Z
    .locals 1

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/mms/ui/MessageUtils;->Usmtimesendfaid:Z

    return v0
.end method

.method public static handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 35
    .parameter "context"
    .parameter "threadId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2090
    new-instance v30, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2091
    .local v30, sb:Ljava/lang/StringBuilder;
    const-string v5, "m_type"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "seen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2095
    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-eqz v5, :cond_0

    .line 2096
    const-string v5, " AND "

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thread_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2098
    :cond_0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2101
    .local v9, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "_id"

    aput-object v12, v8, v5

    const/4 v5, 0x1

    const-string v12, "m_id"

    aput-object v12, v8, v5

    const/4 v5, 0x2

    const-string v12, "sim_slot"

    aput-object v12, v8, v5

    const/4 v5, 0x3

    const-string v12, "sim_imsi"

    aput-object v12, v8, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 2106
    .local v24, c:Landroid/database/Cursor;
    if-nez v24, :cond_2

    .line 2242
    :cond_1
    :goto_0
    return-void

    .line 2110
    :cond_2
    const/16 v23, 0x0

    .line 2111
    .local v23, bl_DataSwitchPopup:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v27

    .line 2112
    .local v27, multiSimNum:I
    const-string v5, "persist.sys.dataprefer.simid"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 2114
    .local v33, vl_DataSimSlot:I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2115
    .local v11, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2116
    .local v14, readReportDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2118
    .local v17, mapSimSlot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v5, "Mms/MessageUtils"

    const-string v6, "handleReadReport"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 2125
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2127
    if-eqz p4, :cond_3

    .line 2128
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    :cond_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2161
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2133
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2134
    const/4 v5, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 2135
    .local v31, sl_IMSIString:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 2137
    .local v34, vl_SimSlot:I
    const/4 v5, 0x1

    move/from16 v0, v27

    if-le v0, v5, :cond_5

    if-nez v23, :cond_5

    .line 2139
    move/from16 v0, v34

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 2140
    invoke-static/range {v34 .. v34}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v26

    .line 2142
    .local v26, mSystemImsi:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2143
    const/16 v23, 0x1

    .line 2147
    .end local v26           #mSystemImsi:Ljava/lang/String;
    :cond_5
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 2149
    .local v32, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2150
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x1

    aput-object v31, v22, v5

    .line 2152
    .local v22, InputIMSI:[Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v11, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2160
    .end local v22           #InputIMSI:[Ljava/lang/String;
    .end local v31           #sl_IMSIString:Ljava/lang/String;
    .end local v32           #uri:Landroid/net/Uri;
    .end local v34           #vl_SimSlot:I
    :catchall_0
    move-exception v5

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2161
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 2155
    .restart local v31       #sl_IMSIString:Ljava/lang/String;
    .restart local v32       #uri:Landroid/net/Uri;
    .restart local v34       #vl_SimSlot:I
    :cond_7
    :try_start_2
    new-instance v29, Lcom/android/mms/data/ReadReportData;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move-object/from16 v3, v31

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2156
    .local v29, reportData:Lcom/android/mms/data/ReadReportData;
    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-interface {v14, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2160
    .end local v29           #reportData:Lcom/android/mms/data/ReadReportData;
    .end local v31           #sl_IMSIString:Ljava/lang/String;
    .end local v32           #uri:Landroid/net/Uri;
    .end local v34           #vl_SimSlot:I
    :cond_8
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2161
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2165
    :cond_9
    new-instance v10, Lcom/android/mms/ui/MessageUtils$6;

    move-object/from16 v12, p0

    move/from16 v13, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/util/Map;Ljava/lang/Runnable;)V

    .line 2183
    .local v10, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v15, Lcom/android/mms/ui/MessageUtils$7;

    move-object/from16 v16, v11

    move-object/from16 v18, p0

    move/from16 v19, p3

    move-object/from16 v20, v14

    move-object/from16 v21, p4

    invoke-direct/range {v15 .. v21}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;ILjava/util/Map;Ljava/lang/Runnable;)V

    .line 2214
    .local v15, SwitchPopupListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v28, Lcom/android/mms/ui/MessageUtils$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 2223
    .local v28, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v25, Lcom/android/mms/ui/MessageUtils$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Ljava/lang/Runnable;)V

    .line 2232
    .local v25, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    const/4 v5, 0x1

    move/from16 v0, v23

    if-ne v0, v5, :cond_a

    .line 2233
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-static {v0, v15, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 2237
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-static {v0, v10, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method

.method public static handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 27
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2369
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gtz v5, :cond_1

    .line 2370
    if-eqz p4, :cond_0

    .line 2371
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 2487
    :cond_0
    :goto_0
    return-void

    .line 2375
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2376
    .local v22, sb:Ljava/lang/StringBuilder;
    const-string v5, "m_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "seen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2380
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2383
    .local v9, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "m_id"

    aput-object v10, v8, v5

    const/4 v5, 0x1

    const-string v10, "sim_slot"

    aput-object v10, v8, v5

    const/4 v5, 0x2

    const-string v10, "sim_imsi"

    aput-object v10, v8, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2388
    .local v14, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 2389
    .local v13, bl_DataSwitchPopup:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v17

    .line 2390
    .local v17, multiSimNum:I
    const-string v5, "persist.sys.dataprefer.simid"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 2394
    .local v25, vl_DataSimSlot:I
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 2397
    .local v20, readReportDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    if-eqz v14, :cond_2

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2398
    :cond_2
    if-eqz p4, :cond_3

    .line 2399
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2417
    :cond_3
    if-eqz v14, :cond_0

    .line 2418
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2403
    :cond_4
    :try_start_1
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 2405
    .local v24, uri:Landroid/net/Uri;
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 2406
    .local v26, vl_SimSlot:I
    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2410
    .local v23, sl_IMSI:Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_7

    .line 2411
    new-instance v21, Lcom/android/mms/data/ReadReportData;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/data/ReadReportData;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2415
    .local v21, reportData:Lcom/android/mms/data/ReadReportData;
    :goto_1
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2417
    if-eqz v14, :cond_5

    .line 2418
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2421
    :cond_5
    const/4 v5, 0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_6

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 2422
    invoke-static/range {v26 .. v26}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v16

    .line 2424
    .local v16, mSystemImsi:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2425
    const/4 v13, 0x1

    .line 2428
    .end local v16           #mSystemImsi:Ljava/lang/String;
    :cond_6
    new-instance v12, Lcom/android/mms/ui/MessageUtils$14;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils$14;-><init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V

    .line 2452
    .local v12, SwitchPopupListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v19, Lcom/android/mms/ui/MessageUtils$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils$15;-><init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V

    .line 2463
    .local v19, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v18, Lcom/android/mms/ui/MessageUtils$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageUtils$16;-><init>(Ljava/lang/Runnable;)V

    .line 2472
    .local v18, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v15, Lcom/android/mms/ui/MessageUtils$17;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lcom/android/mms/ui/MessageUtils$17;-><init>(Ljava/lang/Runnable;)V

    .line 2482
    .local v15, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    const/4 v5, 0x1

    if-ne v13, v5, :cond_9

    .line 2483
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1, v15}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 2413
    .end local v12           #SwitchPopupListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v15           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v18           #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v19           #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v21           #reportData:Lcom/android/mms/data/ReadReportData;
    :cond_7
    :try_start_2
    new-instance v21, Lcom/android/mms/data/ReadReportData;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v21       #reportData:Lcom/android/mms/data/ReadReportData;
    goto :goto_1

    .line 2417
    .end local v21           #reportData:Lcom/android/mms/data/ReadReportData;
    .end local v23           #sl_IMSI:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/Uri;
    .end local v26           #vl_SimSlot:I
    :catchall_0
    move-exception v5

    if-eqz v14, :cond_8

    .line 2418
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 2485
    .restart local v12       #SwitchPopupListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v15       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .restart local v18       #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v19       #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v21       #reportData:Lcom/android/mms/data/ReadReportData;
    .restart local v23       #sl_IMSI:Ljava/lang/String;
    .restart local v24       #uri:Landroid/net/Uri;
    .restart local v26       #vl_SimSlot:I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v15}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method

.method public static handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 29
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2248
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 2249
    if-eqz p4, :cond_0

    .line 2250
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 2364
    :cond_0
    :goto_0
    return-void

    .line 2255
    :cond_1
    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2256
    .local v26, sb:Ljava/lang/StringBuilder;
    const-string v3, "m_type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "seen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2260
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2263
    .local v7, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v9, "m_id"

    aput-object v9, v6, v3

    const/4 v3, 0x1

    const-string v9, "sim_slot"

    aput-object v9, v6, v3

    const/4 v3, 0x2

    const-string v9, "sim_imsi"

    aput-object v9, v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2268
    .local v21, c:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 2269
    .local v20, bl_DataSwitchPopup:Z
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v24

    .line 2270
    .local v24, multiSimNum:I
    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 2275
    .local v28, vl_DataSimSlot:I
    if-eqz v21, :cond_2

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2276
    :cond_2
    if-eqz p4, :cond_3

    .line 2277
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2288
    :cond_3
    if-eqz v21, :cond_0

    .line 2289
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2281
    :cond_4
    :try_start_1
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 2282
    .local v27, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 2283
    .local v10, address:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2284
    .local v13, mmsId:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2285
    .local v11, vl_SimSlot:I
    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 2288
    .local v12, sl_IMSI:Ljava/lang/String;
    if-eqz v21, :cond_5

    .line 2289
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2292
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_6

    .line 2294
    move/from16 v0, v28

    if-eq v11, v0, :cond_6

    .line 2295
    invoke-static {v11}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v23

    .line 2297
    .local v23, mSystemImsi:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2298
    const/16 v20, 0x1

    .line 2302
    .end local v23           #mSystemImsi:Ljava/lang/String;
    :cond_6
    new-instance v8, Lcom/android/mms/ui/MessageUtils$10;

    move-object/from16 v9, p0

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v8 .. v15}, Lcom/android/mms/ui/MessageUtils$10;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2325
    .local v8, SwitchPopupListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v14, Lcom/android/mms/ui/MessageUtils$11;

    move-object/from16 v15, p0

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    move/from16 v18, p3

    move-object/from16 v19, p4

    invoke-direct/range {v14 .. v19}, Lcom/android/mms/ui/MessageUtils$11;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2336
    .local v14, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v25, Lcom/android/mms/ui/MessageUtils$12;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageUtils$12;-><init>(Ljava/lang/Runnable;)V

    .line 2345
    .local v25, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v22, Lcom/android/mms/ui/MessageUtils$13;

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageUtils$13;-><init>(Ljava/lang/Runnable;)V

    .line 2354
    .local v22, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_8

    .line 2355
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-static {v0, v8, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 2288
    .end local v8           #SwitchPopupListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #vl_SimSlot:I
    .end local v12           #sl_IMSI:Ljava/lang/String;
    .end local v13           #mmsId:Ljava/lang/String;
    .end local v14           #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v22           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v25           #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v27           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v21, :cond_7

    .line 2289
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 2359
    .restart local v8       #SwitchPopupListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v10       #address:Ljava/lang/String;
    .restart local v11       #vl_SimSlot:I
    .restart local v12       #sl_IMSI:Ljava/lang/String;
    .restart local v13       #mmsId:Ljava/lang/String;
    .restart local v14       #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v22       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .restart local v25       #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v27       #uri:Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-static {v0, v14, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method

.method public static hasNonGSMCharater(Ljava/lang/String;)Z
    .locals 8
    .parameter "msgText"

    .prologue
    .line 3318
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hasNonGSMCharater] msgText.length() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    move-object v0, p0

    .line 3321
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3324
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 3325
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3327
    .local v4, v:C
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v3

    .line 3328
    .local v3, temp:C
    const v5, 0xfeff

    if-ne v5, v3, :cond_0

    .line 3330
    const/16 v3, 0x3f

    .line 3331
    const/4 v5, 0x1

    .line 3339
    .end local v3           #temp:C
    .end local v4           #v:C
    :goto_1
    return v5

    .line 3334
    .restart local v3       #temp:C
    .restart local v4       #v:C
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3337
    .end local v3           #temp:C
    .end local v4           #v:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3338
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hasNonGSMCharater] stringBuilder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z
    .locals 8
    .parameter "msgText"

    .prologue
    .line 3344
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hasNonGSMCharater] msgText.length() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    move-object v0, p0

    .line 3347
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3350
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 3351
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3354
    .local v4, v:C
    const/16 v5, 0x3130

    if-ge v5, v4, :cond_0

    const/16 v5, 0x318d

    if-lt v4, v5, :cond_1

    :cond_0
    const v5, 0xabff

    if-ge v5, v4, :cond_2

    const v5, 0xd7a4

    if-ge v4, v5, :cond_2

    .line 3350
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3359
    :cond_2
    invoke-static {v4}, Lcom/android/mms/ui/GreekInputHandler;->isGreekSmallLetter(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3362
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v3

    .line 3363
    .local v3, temp:C
    const v5, 0xfeff

    if-ne v5, v3, :cond_3

    .line 3365
    const/16 v3, 0x3f

    .line 3366
    const/4 v5, 0x1

    .line 3374
    .end local v3           #temp:C
    .end local v4           #v:C
    :goto_2
    return v5

    .line 3369
    .restart local v3       #temp:C
    .restart local v4       #v:C
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3372
    .end local v3           #temp:C
    .end local v4           #v:C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3373
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hasNonGSMCharater] stringBuilder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3374
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static initOldDateOrder()V
    .locals 2

    .prologue
    .line 1609
    const-string v0, "Mms/MessageUtils"

    const-string v1, "initDateOrder"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string v0, "null"

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 1611
    return-void
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    .line 2703
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2731
    :cond_0
    :goto_0
    return v1

    .line 2707
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2716
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isVzwPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2721
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2725
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2727
    .local v0, len:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 2730
    const-string v1, "Mms/MessageUtils"

    const-string v2, "isAlias() returning true."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAliasAddress(Lcom/android/mms/data/ContactList;)Z
    .locals 7
    .parameter "recipients"

    .prologue
    const/4 v5, 0x0

    .line 7334
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 7343
    :cond_0
    :goto_0
    return v5

    .line 7337
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 7339
    .local v4, numbers:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 7340
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7341
    const/4 v5, 0x1

    goto :goto_0

    .line 7339
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isAllowTextMessaging(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 7387
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 7388
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 7389
    const/4 v1, 0x1

    .line 7391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 2763
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2764
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 2765
    aget-char v0, v1, v2

    .line 2767
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 2764
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2770
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 2773
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_0

    .line 2777
    :cond_3
    const/4 v3, 0x0

    .line 2779
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isAlphabet(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 2744
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2745
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 2746
    aget-char v0, v1, v2

    .line 2748
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 2745
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2751
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 2754
    :cond_2
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 2757
    const/4 v3, 0x0

    .line 2759
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 10
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 5095
    const/4 v3, 0x0

    .line 5096
    .local v3, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 5097
    .local v0, byteInputStream:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 5100
    .local v5, streamSize:I
    const/4 v4, 0x0

    .line 5103
    .local v4, movie:Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v3

    .line 5105
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result v5

    .line 5111
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6

    .line 5113
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .local v1, byteInputStream:Ljava/io/ByteArrayInputStream;
    :try_start_3
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v4

    .line 5121
    if-eqz v3, :cond_0

    .line 5123
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5130
    :cond_0
    :goto_1
    if-eqz v1, :cond_8

    .line 5132
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    .line 5141
    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :cond_1
    :goto_2
    if-nez v4, :cond_7

    .line 5143
    :cond_2
    :goto_3
    return v6

    .line 5106
    :catch_0
    move-exception v2

    .line 5108
    .local v2, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    .line 5115
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 5117
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5121
    if-eqz v3, :cond_3

    .line 5123
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 5130
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_5
    if-eqz v0, :cond_1

    .line 5132
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 5133
    :catch_2
    move-exception v2

    .line 5135
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 5124
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v2

    .line 5126
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 5133
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 5135
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 5136
    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 5124
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 5126
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 5118
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 5119
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_a
    const-string v7, "Mms/MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5121
    if-eqz v3, :cond_4

    .line 5123
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 5130
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    :goto_7
    if-eqz v0, :cond_1

    .line 5132
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_2

    .line 5133
    :catch_7
    move-exception v2

    .line 5135
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 5124
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :catch_8
    move-exception v2

    .line 5126
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 5121
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_8
    if-eqz v3, :cond_5

    .line 5123
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 5130
    :cond_5
    :goto_9
    if-eqz v0, :cond_6

    .line 5132
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 5136
    :cond_6
    :goto_a
    throw v6

    .line 5124
    :catch_9
    move-exception v2

    .line 5126
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 5133
    .end local v2           #e:Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 5135
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 5143
    .end local v2           #e:Ljava/io/IOException;
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    .line 5121
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 5118
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 5115
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :cond_8
    move-object v0, v1

    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2
.end method

.method public static isAnimationEnable()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5575
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "window_animation_scale"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5577
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5579
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isArabic(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 4845
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isArabic(I)Z

    move-result v0

    return v0
.end method

.method public static isArabic(I)Z
    .locals 3
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x1

    .line 4856
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 4857
    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v2, :cond_1

    .line 4874
    :cond_0
    :goto_0
    return v1

    .line 4860
    :cond_1
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v2, :cond_0

    .line 4863
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v2, :cond_0

    .line 4867
    const/16 v2, 0x750

    if-lt p0, v2, :cond_2

    const/16 v2, 0x77f

    if-le p0, v2, :cond_0

    .line 4871
    :cond_2
    const v2, 0x10a60

    if-lt p0, v2, :cond_3

    const v2, 0x10a7f

    if-le p0, v2, :cond_0

    .line 4874
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAvailableApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "package_name"

    .prologue
    const/4 v1, 0x1

    .line 5987
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5993
    :goto_0
    return v1

    .line 5990
    :catch_0
    move-exception v0

    .line 5991
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 6832
    if-nez p0, :cond_1

    .line 6841
    :cond_0
    :goto_0
    return v2

    .line 6835
    :cond_1
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 6836
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6837
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6835
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6841
    .end local v0           #c:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isCBMessageAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 2940
    const-string v0, "CBmessages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2941
    const/4 v0, 0x1

    .line 2943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCalibrationDone(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .parameter "activity"
    .parameter "name"

    .prologue
    .line 7378
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isContainKoreanChar(Ljava/lang/String;)Z
    .locals 4
    .parameter "msgText"

    .prologue
    .line 4818
    const/4 v2, 0x0

    .line 4820
    .local v2, textLength:I
    if-eqz p0, :cond_0

    .line 4821
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4823
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 4824
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4829
    .local v1, indexCahr:C
    const/16 v3, 0x3130

    if-ge v3, v1, :cond_1

    const/16 v3, 0x318d

    if-lt v1, v3, :cond_2

    :cond_1
    const v3, 0xabff

    if-ge v3, v1, :cond_3

    const v3, 0xd7a4

    if-ge v1, v3, :cond_3

    .line 4831
    :cond_2
    const/4 v3, 0x1

    .line 4834
    .end local v1           #indexCahr:C
    :goto_1
    return v3

    .line 4823
    .restart local v1       #indexCahr:C
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4834
    .end local v1           #indexCahr:C
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isDrmRingtoneWithRights(Landroid/content/Context;J)Z
    .locals 18
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 7681
    const/4 v9, 0x0

    .line 7683
    .local v9, body:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 7688
    :goto_0
    if-nez v9, :cond_1

    .line 7689
    const/4 v2, 0x0

    .line 7719
    :cond_0
    :goto_1
    return v2

    .line 7685
    :catch_0
    move-exception v12

    .line 7686
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrmRingtoneWithRights can\'t load pdu body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7692
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    :cond_1
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 7693
    .local v16, partNum:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    .line 7694
    invoke-virtual {v9, v13}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 7695
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 7696
    .local v17, type:Ljava/lang/String;
    const/4 v11, 0x0

    .line 7698
    .local v11, drmFilePath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7699
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 7702
    .local v10, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 7703
    const/4 v2, 0x0

    .line 7706
    if-eqz v10, :cond_0

    .line 7707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7708
    const/4 v10, 0x0

    goto :goto_1

    .line 7704
    :cond_2
    :try_start_2
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 7706
    if-eqz v10, :cond_3

    .line 7707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7708
    const/4 v10, 0x0

    .line 7711
    :cond_3
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 7713
    .local v14, mimeType:Ljava/lang/String;
    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/mms/drm/DrmUtils;->haveRightsForAction(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7715
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 7706
    .end local v14           #mimeType:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 7707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7708
    const/4 v10, 0x0

    :cond_4
    throw v2

    .line 7693
    .end local v10           #c:Landroid/database/Cursor;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 7719
    .end local v11           #drmFilePath:Ljava/lang/String;
    .end local v15           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v17           #type:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 2991
    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2992
    const/4 v0, 0x0

    .line 2995
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEmergencyContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 7906
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "emergency"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "primary_phones"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 7909
    .local v1, uri:Landroid/net/Uri;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7911
    .local v10, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v12

    .line 7914
    .local v2, PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7916
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 7918
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 7922
    :goto_0
    if-eqz v6, :cond_1

    .line 7924
    const/4 v3, -0x1

    :try_start_1
    invoke-interface {v6, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 7925
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7926
    const-string v3, "data1"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7929
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3

    .line 7919
    :catch_0
    move-exception v7

    .line 7920
    .local v7, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 7929
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7933
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 7935
    .local v9, length:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 7936
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v11

    .line 7940
    :goto_3
    return v3

    .line 7935
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v3, v12

    .line 7940
    goto :goto_3
.end method

.method public static isExternalSdCardMounted()Z
    .locals 9

    .prologue
    .line 5777
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    .line 5778
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    sput-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 5779
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/android/mms/ui/MessageUtils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 5781
    :cond_0
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 5782
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .line 5783
    .local v1, length:I
    const-string v3, ""

    .line 5784
    .local v3, storagePath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 5785
    aget-object v4, v5, v0

    .line 5786
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 5787
    .local v6, subsystem:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 5788
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 5789
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5790
    .local v2, state:Ljava/lang/String;
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5791
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5792
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    .line 5784
    .end local v2           #state:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5794
    .restart local v2       #state:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    goto :goto_1

    .line 5799
    .end local v2           #state:Ljava/lang/String;
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v6           #subsystem:Ljava/lang/String;
    :cond_3
    sget-boolean v7, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    return v7
.end method

.method public static isGSMOnly(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 4730
    const/4 v1, 0x0

    .line 4731
    .local v1, isGSMOnly:Z
    const-string v3, ""

    .line 4732
    .local v3, regist_status_ril_currentsystem:Ljava/lang/String;
    const-string v2, ""

    .line 4734
    .local v2, regist_status_gsm_network_type:Ljava/lang/String;
    const-string v4, "ril.currentsystem"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4735
    const-string v4, "gsm.network.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4736
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scurrentsystem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gsm_network_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4739
    if-eqz v2, :cond_0

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 4741
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4742
    .local v0, index:I
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4745
    .end local v0           #index:I
    :cond_0
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm_network_type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4747
    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    const-string v4, "2G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    const-string v4, "GPRS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "EDGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4752
    const/4 v1, 0x1

    .line 4755
    :cond_1
    return v1
.end method

.method public static isHebrew(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 4885
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isHebrew(I)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(I)Z
    .locals 3
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x1

    .line 4896
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 4897
    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v2, :cond_1

    .line 4904
    :cond_0
    :goto_0
    return v1

    .line 4901
    :cond_1
    const v2, 0xfb1d

    if-lt p0, v2, :cond_2

    const v2, 0xfb4f

    if-le p0, v2, :cond_0

    .line 4904
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 7415
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 7416
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7417
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 7418
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 2010
    if-nez p0, :cond_1

    .line 2022
    :cond_0
    :goto_0
    return v0

    .line 2018
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 2022
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 4937
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9
    .parameter "locale"

    .prologue
    .line 4949
    const-string v0, "ar"

    .line 4951
    .local v0, ISO639_ARABIC:Ljava/lang/String;
    const-string v3, "fa"

    .line 4953
    .local v3, ISO639_PERSIAN:Ljava/lang/String;
    const-string v1, "he"

    .line 4956
    .local v1, ISO639_HEBREW:Ljava/lang/String;
    const-string v2, "iw"

    .line 4958
    .local v2, ISO639_HEBREW_FORMER:Ljava/lang/String;
    const-string v6, "ji"

    .line 4960
    .local v6, ISO639_YIDDISH_FORMER:Ljava/lang/String;
    const-string v4, "ur"

    .line 4962
    .local v4, ISO639_URDU:Ljava/lang/String;
    const-string v5, "yi"

    .line 4964
    .local v5, ISO639_YIDDISH:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 4965
    .local v7, iso639:Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;Z)J
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "contentResolver"
    .parameter "isSpam"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3099
    const-wide/16 v7, 0x0

    .line 3101
    .local v7, islocked:J
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3102
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 3105
    .local v2, PROJECTION:[Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 3106
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, messageUri:Landroid/net/Uri;
    :goto_0
    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 3111
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3112
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 3114
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 3119
    if-eqz v6, :cond_0

    .line 3120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v3, v9

    .line 3148
    :goto_1
    return-wide v3

    .line 3109
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_0

    .line 3116
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3117
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 3119
    if-eqz v6, :cond_3

    .line 3120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    move-wide v3, v7

    .line 3148
    goto :goto_1

    .line 3119
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 3125
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 3128
    .restart local v2       #PROJECTION:[Ljava/lang/String;
    if-eqz p4, :cond_7

    .line 3129
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    :goto_3
    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 3134
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3135
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 3137
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    .line 3142
    if-eqz v6, :cond_6

    .line 3143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-wide v3, v9

    goto :goto_1

    .line 3132
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_7
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    goto :goto_3

    .line 3139
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_8
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3140
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v7

    .line 3142
    if-eqz v6, :cond_3

    .line 3143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3142
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    .line 3143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public static isMessageLocked(JLjava/lang/String;Z)Z
    .locals 4
    .parameter "msgId"
    .parameter "type"
    .parameter "isSpam"

    .prologue
    .line 3154
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, p0, p1, v0, p3}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMmsAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    .line 6577
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6578
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMmsAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6580
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    return v1
.end method

.method public static isMsgAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 6584
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6585
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMsgAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6587
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    return v1
.end method

.method public static isNameAndNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 3053
    const-string v4, " <"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3054
    .local v2, startIdx:I
    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3055
    .local v0, endIdx:I
    const/4 v1, -0x1

    .line 3057
    .local v1, notFound:I
    if-ne v2, v1, :cond_1

    .line 3062
    :cond_0
    :goto_0
    return v3

    .line 3059
    :cond_1
    if-eq v0, v1, :cond_2

    if-le v0, v2, :cond_0

    .line 3060
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 7041
    if-nez p0, :cond_0

    .line 7051
    :goto_0
    return v1

    .line 7044
    :cond_0
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7046
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setfailedcase(Z)V

    goto :goto_0

    .line 7050
    :cond_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 7051
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method public static isNumberCanAddToContact(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 2806
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2822
    :cond_0
    :goto_0
    return v1

    .line 2809
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2810
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2813
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2814
    const-string v2, "Mms/MessageUtils"

    const-string v3, "alias number just return false meaning cannot add contact"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2819
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2822
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 7347
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 7360
    :cond_0
    :goto_0
    return v4

    .line 7350
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 7351
    .local v1, chars:[C
    array-length v3, v1

    .line 7353
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 7354
    aget-char v0, v1, v2

    .line 7355
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 7353
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7360
    .end local v0           #c:C
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isOneSIMcardsInsertedInSlot2()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5565
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "ril.MSIMM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 5566
    const-string v1, "Mms/MessageUtils"

    const-string v2, "isOneSIMcardsInsertedInSlot2 - one SIM, SIM is inserted in slot 2."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5570
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 3583
    const-string v0, ""

    .line 3584
    .local v0, currentplmn:Ljava/lang/String;
    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3586
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.currentplmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    const-string v1, "oversea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3589
    const-string v1, "Mms/MessageUtils"

    const-string v2, "network is roaming"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    const/4 v1, 0x1

    .line 3593
    :goto_0
    return v1

    .line 3592
    :cond_0
    const-string v1, "Mms/MessageUtils"

    const-string v2, "network is not roaming"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSKTSIM(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3551
    if-eqz p0, :cond_2

    .line 3554
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3555
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 3557
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3558
    .local v0, szSubscriberId:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "45005"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3560
    const/4 v2, 0x1

    .line 3577
    .end local v0           #szSubscriberId:Ljava/lang/String;
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    .line 3564
    .restart local v0       #szSubscriberId:Ljava/lang/String;
    .restart local v1       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    const-string v3, "Mms/MessageUtils"

    const-string v4, "ril is skt sim ril=null__1"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3570
    .end local v0           #szSubscriberId:Ljava/lang/String;
    :cond_1
    const-string v3, "Mms/MessageUtils"

    const-string v4, "ril is skt sim ril & telephonyManager =null__2"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3576
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v3, "Mms/MessageUtils"

    const-string v4, "ril is kt sim ril & context =null__2"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSimActive(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5275
    .local v0, property_simactive:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 5276
    .local v1, simActive:Z
    :goto_0
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimActive() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5278
    return v1

    .end local v1           #simActive:Z
    :cond_0
    move v1, v2

    .line 5275
    goto :goto_0
.end method

.method public static isSosMessage(Ljava/lang/String;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/16 v5, 0x1b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3451
    if-nez p0, :cond_1

    .line 3466
    :cond_0
    :goto_0
    return v1

    .line 3456
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3457
    .local v0, len:I
    if-le v0, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 3459
    goto :goto_0

    .line 3461
    :cond_2
    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 3463
    goto :goto_0
.end method

.method public static isSpecialChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2826
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "text"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4914
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4915
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 4916
    .local v3, len:I
    const/4 v2, 0x0

    .line 4917
    .local v2, i:I
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4918
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 4919
    .local v1, directionality:B
    :goto_0
    const/16 v6, 0xd

    if-eq v1, v6, :cond_0

    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    const/16 v6, 0x39

    if-gt v0, v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_1

    .line 4920
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4921
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    goto :goto_0

    .line 4923
    :cond_1
    if-eq v1, v5, :cond_2

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    const/16 v6, 0x10

    if-eq v1, v6, :cond_2

    const/16 v6, 0x11

    if-ne v1, v6, :cond_3

    :cond_2
    move v4, v5

    .line 4928
    .end local v0           #c:I
    .end local v1           #directionality:B
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_3
    return v4
.end method

.method public static isVIPModeBlackNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 18
    .parameter "context"
    .parameter "address"

    .prologue
    .line 7153
    const/4 v15, 0x0

    .line 7154
    .local v15, result:Z
    const/16 v17, -0x1

    .line 7156
    .local v17, strategy:I
    const-string v7, "com.sec.android.app.firewall"

    .line 7158
    .local v7, AUTHORITY:Ljava/lang/String;
    const-string v11, "black_msg_num"

    .line 7159
    .local v11, AUTOREJECT_TABLE:Ljava/lang/String;
    const-string v10, "numbers"

    .line 7160
    .local v10, AUTOREJECT_NUMBER:Ljava/lang/String;
    const-string v8, "checked"

    .line 7161
    .local v8, AUTOREJECT_CHECKED:Ljava/lang/String;
    const-string v9, "criteria"

    .line 7163
    .local v9, AUTOREJECT_CRITERIA:Ljava/lang/String;
    const-string v1, "content://com.sec.android.app.firewall/black_msg_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 7165
    .local v2, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    if-eqz p1, :cond_0

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move/from16 v16, v15

    .line 7214
    .end local v15           #result:Z
    .local v16, result:I
    :goto_0
    return v16

    .line 7169
    .end local v16           #result:I
    .restart local v15       #result:Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "checked=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 7170
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 7171
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7172
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v13, v1, :cond_3

    .line 7173
    const-string v1, "numbers"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 7174
    .local v14, rejectNumber:Ljava/lang/String;
    const-string v1, "criteria"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 7176
    const-string v1, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVIPModeBlackNumberMessage - rejectNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7177
    const-string v1, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFirewallRejectNumberMessage - criteria : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7178
    packed-switch v17, :pswitch_data_0

    .line 7201
    :cond_2
    :goto_2
    const/4 v1, 0x1

    if-ne v15, v1, :cond_4

    .line 7207
    .end local v14           #rejectNumber:Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 7212
    .end local v13           #i:I
    :goto_3
    const-string v1, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVIPModeBlackNumberMessage - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v15

    .line 7214
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 7180
    .end local v16           #result:I
    .restart local v13       #i:I
    .restart local v14       #rejectNumber:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7181
    const/4 v15, 0x1

    goto :goto_2

    .line 7185
    :pswitch_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7186
    const/4 v15, 0x1

    goto :goto_2

    .line 7190
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7191
    const/4 v15, 0x1

    goto :goto_2

    .line 7195
    :pswitch_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7196
    const/4 v15, 0x1

    goto :goto_2

    .line 7204
    :cond_4
    const/4 v14, 0x0

    .line 7205
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 7172
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 7209
    .end local v13           #i:I
    .end local v14           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v1, "Mms/MessageUtils"

    const-string v3, "isVIPModeBlackNumberMessage - cursor is null"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isVIPModeBlackStringMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 7218
    const/4 v13, 0x0

    .line 7220
    .local v13, result:Z
    const-string v6, "com.sec.android.app.firewall"

    .line 7222
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v8, "black_msg_str"

    .line 7223
    .local v8, AUTOREJECT_TABLE:Ljava/lang/String;
    const-string v9, "text"

    .line 7224
    .local v9, AUTOREJECT_TEXT:Ljava/lang/String;
    const-string v7, "checked"

    .line 7226
    .local v7, AUTOREJECT_CHECKED:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/black_msg_str"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7228
    .local v1, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "checked=1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 7229
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 7230
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7231
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 7232
    const-string v0, "text"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 7233
    .local v12, rejectString:Ljava/lang/String;
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeBlackStringMessage - rejectNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7234
    invoke-virtual {p1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7235
    const/4 v13, 0x1

    .line 7241
    .end local v12           #rejectString:Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7246
    .end local v11           #i:I
    :goto_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeBlackStringMessage - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7248
    return v13

    .line 7238
    .restart local v11       #i:I
    .restart local v12       #rejectString:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 7239
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 7231
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 7243
    .end local v11           #i:I
    .end local v12           #rejectString:Ljava/lang/String;
    :cond_2
    const-string v0, "Mms/MessageUtils"

    const-string v2, "isVIPModeBlackStringMessage - cursor is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isVIPModeOn(Landroid/content/Context;)I
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 7122
    const-string v6, "com.sec.android.app.firewall"

    .line 7123
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v7, "mode"

    .line 7124
    .local v7, MODE_TABLE:Ljava/lang/String;
    const-string v9, "vip_mode"

    .line 7125
    .local v9, VIPMODE_MODE:Ljava/lang/String;
    const-string v10, "black_msg"

    .line 7126
    .local v10, VIP_MODE1:Ljava/lang/String;
    const-string v11, "white_msg"

    .line 7127
    .local v11, VIP_MODE2:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7129
    .local v1, MODE_CONTENT_URI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 7130
    .local v13, vipmodeOnOff:I
    const/4 v8, 0x0

    .line 7132
    .local v8, MessageBlockMode:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 7133
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 7134
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7135
    const-string v0, "vip_mode"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 7136
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firewallOnOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7138
    const/4 v0, 0x1

    if-ne v13, v0, :cond_2

    .line 7139
    const-string v0, "black_msg"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 7144
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 7145
    const/4 v12, 0x0

    .line 7147
    :cond_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageBlockMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7149
    return v8

    .line 7140
    :cond_2
    const/4 v0, 0x2

    if-ne v13, v0, :cond_0

    .line 7141
    const-string v0, "white_msg"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_0
.end method

.method public static isVIPModeWhiteNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 7252
    const/4 v13, 0x0

    .line 7254
    .local v13, result:Z
    const-string v6, "com.sec.android.app.firewall"

    .line 7256
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v9, "white_msg_num"

    .line 7257
    .local v9, AUTOREJECT_TABLE:Ljava/lang/String;
    const-string v8, "numbers"

    .line 7258
    .local v8, AUTOREJECT_NUMBER:Ljava/lang/String;
    const-string v7, "checked"

    .line 7260
    .local v7, AUTOREJECT_CHECKED:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/white_msg_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7262
    .local v1, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "checked=1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 7264
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 7265
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7266
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 7267
    const-string v0, "numbers"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 7268
    .local v10, acceptNumber:Ljava/lang/String;
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeWhiteNumberMessage - acceptNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7269
    invoke-static {v10, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7270
    const/4 v13, 0x1

    .line 7276
    .end local v10           #acceptNumber:Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 7281
    .end local v12           #i:I
    :goto_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeWhiteNumberMessage - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7283
    return v13

    .line 7273
    .restart local v10       #acceptNumber:Ljava/lang/String;
    .restart local v12       #i:I
    :cond_1
    const/4 v10, 0x0

    .line 7274
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 7266
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 7278
    .end local v10           #acceptNumber:Ljava/lang/String;
    .end local v12           #i:I
    :cond_2
    const-string v0, "Mms/MessageUtils"

    const-string v2, "isVIPModeWhiteNumberMessage - cursor is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isValidAddress(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "number"
    .parameter "isMms"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2886
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinRecipientLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2914
    :cond_0
    :goto_0
    return v0

    .line 2890
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2891
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 2897
    :cond_2
    if-eqz p1, :cond_3

    .line 2898
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2901
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2902
    :cond_4
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IS41 Email : isValidAddress"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2909
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 2911
    :cond_6
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 2914
    :cond_8
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 2935
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2936
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 3003
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3004
    const/4 v0, 0x0

    .line 3008
    :goto_0
    return v0

    .line 3007
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3008
    .local v1, retVal:Ljava/lang/String;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isValidSmsEmailAddress(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "number"
    .parameter "isMms"

    .prologue
    .line 2921
    const-string v0, "Mms/MessageUtils"

    const-string v1, "IS41 Email : isValidAddress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    if-eqz p1, :cond_0

    .line 2924
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 2926
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceCallAvailabe(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 7411
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isVzwPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 2735
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2736
    const/4 v1, 0x0

    .line 2740
    :goto_0
    return v1

    .line 2739
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->VZWPHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2740
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isWapPushMessageAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 2947
    const-string v0, "Pushmessage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2948
    const/4 v0, 0x1

    .line 2950
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    .line 5639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5661
    :goto_0
    return-void

    .line 5641
    :cond_0
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 5642
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5643
    .local v0, PhoneNumber:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object p1, v0, v2

    .line 5646
    .end local v0           #PhoneNumber:[Ljava/lang/String;
    :cond_1
    const-string v2, "Mms/MessageUtils"

    const-string v3, "Make a call"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5648
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5649
    .local v1, callIntent:Landroid/content/Intent;
    sget-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    if-eqz v2, :cond_2

    .line 5650
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    const-string v3, "Messaging"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5658
    :cond_2
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5660
    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x1000

    const/4 v5, 0x1

    .line 5666
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5689
    :goto_0
    return-void

    .line 5668
    :cond_0
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 5669
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5670
    .local v0, PhoneNumber:[Ljava/lang/String;
    aget-object p1, v0, v5

    .line 5673
    .end local v0           #PhoneNumber:[Ljava/lang/String;
    :cond_1
    const-string v3, "Mms/MessageUtils"

    const-string v4, "Make a video call"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5675
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5676
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    invoke-static {v4, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5677
    .local v1, callIntent:Landroid/content/Intent;
    const-string v3, "videocall"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5679
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5681
    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->startActivityForVideoCall(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 5683
    .end local v1           #callIntent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.phone.videocall"

    const-string v4, "tel"

    invoke-static {v4, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5685
    .local v2, videoCallIntent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5687
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static openComposerWithCropedImage(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .parameter "recipient"
    .parameter "CropUri"

    .prologue
    .line 7526
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7528
    .local v1, mmsContext:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 7529
    const-string v2, "Mms/MessageUtils"

    const-string v3, "openThread, Crop Uri is null, return "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7544
    :goto_0
    return-void

    .line 7533
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7534
    .local v0, intent:Landroid/content/Intent;
    if-eqz p0, :cond_1

    .line 7535
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7537
    :cond_1
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7538
    const-string v2, "cropedImage"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7539
    const-string v2, "cropedImageURI"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7541
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7543
    const-string v2, "Mms/MessageUtils"

    const-string v3, "openThread startActivity()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openComposerWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "recipient"
    .parameter "textData"

    .prologue
    .line 7549
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7551
    .local v1, mmsContext:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 7552
    const-string v2, "Mms/MessageUtils"

    const-string v3, "openThread, textData is null, return "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7567
    :goto_0
    return-void

    .line 7556
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7557
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7559
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7560
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7561
    const-string v2, "address"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7562
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7564
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7566
    const-string v2, "Mms/MessageUtils"

    const-string v3, "openThread startActivity()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static openMedia(Landroid/content/Context;Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V
    .locals 4
    .parameter "context"
    .parameter "slide"
    .parameter "mm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5023
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5024
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 5029
    .local v0, contentType:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5030
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 5038
    :goto_1
    return-void

    .line 5026
    .end local v0           #contentType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 5031
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5032
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callVideoPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 5033
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5034
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getPath()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/mms/util/PackageInfo;->callMusicPlayer(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5036
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callProperActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 2960
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2985
    .end local p0
    .local v0, retVal:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2964
    .end local v0           #retVal:Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2965
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2969
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2971
    .restart local v0       #retVal:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p0, v1

    .line 2972
    goto :goto_0

    .line 2975
    :cond_3
    if-eqz v0, :cond_4

    move-object p0, v0

    .line 2976
    goto :goto_0

    .line 2980
    :cond_4
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p0, v1

    .line 2985
    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 2860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2861
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2863
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2864
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2867
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2868
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2863
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2872
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2877
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2878
    const/4 v4, 0x0

    .line 2881
    .end local v1           #c:C
    :goto_2
    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 3018
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3019
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3023
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3025
    .local v0, retVal:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 3039
    .end local v0           #retVal:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 3029
    .restart local v0       #retVal:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_1

    .line 3034
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 3035
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 3039
    goto :goto_0
.end method

.method public static pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "act"
    .parameter "folderPath"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 1759
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1760
    .local v0, myFilesIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1764
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1765
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    const-string v1, "FOLDERPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1771
    :cond_0
    return-void
.end method

.method public static pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "act"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 1776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1777
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1778
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1781
    :cond_0
    return-void
.end method

.method public static queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 9
    .parameter "resolver"
    .parameter "threadUri"
    .parameter "selection"

    .prologue
    const/4 v8, 0x0

    .line 7651
    const/4 v7, 0x0

    .line 7652
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 7655
    .local v6, count:I
    :try_start_0
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 7656
    if-nez v7, :cond_1

    .line 7659
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 7662
    :goto_0
    return v0

    .line 7657
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 7659
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v6

    .line 7662
    goto :goto_0

    .line 7659
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "resolver"
    .parameter "threadUri"
    .parameter "projection"
    .parameter "selection"

    .prologue
    .line 7666
    const/4 v7, 0x0

    .line 7667
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 7670
    .local v6, count:I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 7671
    if-nez v7, :cond_1

    const/4 v0, 0x0

    .line 7674
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7677
    :cond_0
    :goto_0
    return v0

    .line 7672
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 7674
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v6

    .line 7677
    goto :goto_0

    .line 7674
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static recordSound(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;Z)V
    .locals 7
    .parameter "context"
    .parameter "requestCode"
    .parameter "slideshow"
    .parameter "toReplaceMedia"

    .prologue
    const/4 v6, 0x0

    .line 1693
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 1696
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1702
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.voicerecorder"

    const-string v5, "com.sec.android.app.voicerecorder.VoiceRecorder"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1704
    const-string v4, "location"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    .line 1708
    .local v1, maxContentSize:I
    if-eqz p2, :cond_5

    .line 1710
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v2

    .line 1711
    .local v2, remainSize:I
    const/4 v3, 0x0

    .line 1712
    .local v3, slideSize:I
    invoke-virtual {p2, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1713
    invoke-virtual {p2, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 1715
    :cond_0
    if-eqz p3, :cond_4

    .line 1716
    if-lez v3, :cond_3

    .line 1717
    add-int v4, v2, v3

    if-ge v4, v1, :cond_2

    .line 1718
    const-string v4, "remain_size"

    add-int v5, v2, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1731
    .end local v2           #remainSize:I
    .end local v3           #slideSize:I
    :goto_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1733
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #maxContentSize:I
    :cond_1
    return-void

    .line 1720
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #maxContentSize:I
    .restart local v2       #remainSize:I
    .restart local v3       #slideSize:I
    .restart local p0
    :cond_2
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1722
    :cond_3
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1726
    :cond_4
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1729
    .end local v2           #remainSize:I
    .end local v3           #slideSize:I
    :cond_5
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "context"
    .parameter "address"
    .parameter "isVideocall"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6893
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6894
    .local v2, values:Landroid/content/ContentValues;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6896
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "reject_number"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6897
    const-string v5, "reject_checked"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6898
    const-string v5, "reject_match"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6902
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->CheckAvailbleCallRejectList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6903
    const v5, 0x7f0a01e7

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6904
    const v5, 0x7f0a041d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6905
    const v5, 0x7f0a0517

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6906
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6907
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 6918
    :goto_0
    return v3

    .line 6912
    :cond_0
    if-nez p2, :cond_1

    .line 6913
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    :goto_1
    move v3, v4

    .line 6918
    goto :goto_0

    .line 6915
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1
.end method

.method public static registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6732
    const v1, 0x7f0a0386

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6758
    :goto_0
    return v0

    .line 6737
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6738
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6739
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkEnableStatus(Landroid/content/Context;ILjava/lang/String;)Z

    :goto_1
    move v0, v1

    .line 6743
    goto :goto_0

    .line 6741
    :cond_1
    invoke-static {p0, v0, p1, v1, v0}, Lcom/android/mms/spam/SpamFilter;->insert(Landroid/content/Context;ILjava/lang/String;ZI)Landroid/net/Uri;

    goto :goto_1

    .line 6747
    :cond_2
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6748
    const v1, 0x7f0a037b

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6751
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6752
    const v1, 0x7f0a0379

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6755
    :cond_4
    invoke-static {p0, v0, p1, v1, v0}, Lcom/android/mms/spam/SpamFilter;->insert(Landroid/content/Context;ILjava/lang/String;ZI)Landroid/net/Uri;

    .line 6756
    const v2, 0x7f0a039c

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 6758
    goto :goto_0
.end method

.method public static registerToCalendar(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "calendarstr"

    .prologue
    .line 7422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7423
    .local v0, Calendarintent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7424
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7425
    const-string v1, "allDay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7426
    const-string v1, "edit_mode"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7427
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7428
    return-void
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "cb"
    .parameter "append"
    .parameter "sendMultiple"

    .prologue
    .line 1922
    new-instance v7, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Landroid/content/Context;)V

    .line 1928
    .local v7, showProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1930
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1950
    return-void
.end method

.method public static saveRingtone(Landroid/content/Context;J)Z
    .locals 10
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 7723
    const/4 v5, 0x1

    .line 7724
    .local v5, result:Z
    const/4 v0, 0x0

    .line 7726
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7731
    :goto_0
    if-nez v0, :cond_0

    .line 7732
    const/4 v7, 0x0

    .line 7746
    :goto_1
    return v7

    .line 7728
    :catch_0
    move-exception v1

    .line 7729
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v7, "Mms/MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyToDrmProvider can\'t load pdu body: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7735
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 7736
    .local v4, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 7737
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 7738
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 7740
    .local v6, type:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7743
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v3, v7}, Lcom/android/mms/ui/MessageUtils;->copyPartDrmCheck(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 7736
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v6           #type:Ljava/lang/String;
    :cond_2
    move v7, v5

    .line 7746
    goto :goto_1
.end method

.method public static selectAudio(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    const/4 v2, 0x0

    .line 1680
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1683
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1684
    const-string v1, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1685
    const-string v1, "android.intent.extra.ringtone.TITLE"

    const v2, 0x7f0a00f8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1687
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1689
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1740
    const-string v0, "image/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 1741
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"
    .parameter "contentType"

    .prologue
    .line 1744
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1746
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1748
    .local v0, innerIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1752
    .local v1, wrapperIntent:Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1754
    .end local v0           #innerIntent:Landroid/content/Intent;
    .end local v1           #wrapperIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1736
    const-string v0, "video/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 1737
    return-void
.end method

.method public static sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "number"
    .parameter "msgType"

    .prologue
    .line 7055
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationBoradcastReceivedMsg()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7083
    :cond_0
    :goto_0
    return-void

    .line 7058
    :cond_1
    const/4 v1, 0x0

    .line 7059
    .local v1, intentNoti:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 7060
    .local v2, szAddr:Ljava/lang/String;
    const-string v4, "mms"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7061
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intentNoti:Landroid/content/Intent;
    const-string v4, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7062
    .restart local v1       #intentNoti:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 7071
    :goto_1
    move-object v3, v2

    .line 7072
    .local v3, szDisplayName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7073
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0188

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7081
    :cond_2
    :goto_2
    const-string v4, "DisplayName"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7082
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 7064
    .end local v3           #szDisplayName:Ljava/lang/String;
    :cond_3
    const-string v4, "sms"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7065
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intentNoti:Landroid/content/Intent;
    const-string v4, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7066
    .restart local v1       #intentNoti:Landroid/content/Intent;
    move-object v2, p2

    goto :goto_1

    .line 7075
    .restart local v3       #szDisplayName:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 7076
    .local v0, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_2

    .line 7078
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public static setAutoSmsEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 6366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autosms_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6367
    return-void
.end method

.method public static setAutoSmsType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 6382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autosms_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6383
    return-void
.end method

.method public static setCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .parameter "activity"
    .parameter "name"
    .parameter "isChecked"

    .prologue
    .line 7373
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7374
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7376
    return-void
.end method

.method public static setCountryDetector()V
    .locals 2

    .prologue
    .line 7469
    const-string v0, "Mms/MessageUtils"

    const-string v1, "setCountryDetector : update country detector info "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7470
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    .line 7471
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->updateCountryIso()V

    .line 7472
    return-void
.end method

.method public static setExpiryTime(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "expiryTime"

    .prologue
    .line 6429
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6431
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_mms_expiry_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setIndicatorBar(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/16 v2, 0x400

    .line 5178
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5179
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 5184
    :goto_0
    return-void

    .line 5181
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public static setfailedcase(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 347
    sput-boolean p0, Lcom/android/mms/ui/MessageUtils;->Usmtimesendfaid:Z

    .line 348
    return-void
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnKeyListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "clickListener"
    .parameter "listener"

    .prologue
    .line 1955
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    const-string v1, "GATE"

    const-string v2, "<GATE-M>MSG_DISCARD</GATE-M>"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a004c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a006a

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a006b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1965
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1967
    return-object v0
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "listener"
    .parameter "cancellistener"
    .parameter "dismissListener"

    .prologue
    .line 1843
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1845
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a006a

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1851
    new-instance v2, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$3;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1863
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1864
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1866
    invoke-virtual {v1, p5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1868
    return-object v1
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "listener"
    .parameter "cancellistener"

    .prologue
    .line 1833
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1837
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "mDismissListener"

    .prologue
    .line 1806
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1809
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1810
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1812
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1814
    const v2, 0x104000a

    new-instance v3, Lcom/android/mms/ui/MessageUtils$2;

    invoke-direct {v3}, Lcom/android/mms/ui/MessageUtils$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1822
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1823
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1824
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1826
    return-void
.end method

.method public static showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener_send"

    .prologue
    .line 1985
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0178

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0179

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a017a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1989
    return-void
.end method

.method public static showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "url"
    .parameter "text"

    .prologue
    .line 7592
    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v2

    .line 7593
    .local v2, linkifyType:Ljava/lang/String;
    const-string v3, "Extended"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "None"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Direct"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7611
    :cond_0
    :goto_0
    return-void

    .line 7596
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7599
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "link_action"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7604
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    .line 7605
    .local v1, fg:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "link_action"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7607
    .end local v1           #fg:Landroid/app/DialogFragment;
    :catch_0
    move-exception v0

    .line 7608
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showSaveDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener_yes"
    .parameter "listener_no"

    .prologue
    .line 1973
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a011c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a011e

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a011f

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1979
    return-void
.end method

.method public static showUsmWarningDialog(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 7613
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "usm_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7622
    :goto_0
    return-void

    .line 7617
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/mms/ui/UsmDialogFragment;->newInstance()Landroid/app/DialogFragment;

    move-result-object v1

    .line 7618
    .local v1, fg:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "usm_dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7619
    .end local v1           #fg:Landroid/app/DialogFragment;
    :catch_0
    move-exception v0

    .line 7620
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 5085
    new-array v0, p1, [B

    .line 5087
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5091
    :goto_0
    return-object v0

    .line 5088
    :catch_0
    move-exception v1

    .line 5089
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 18
    .parameter "context"
    .parameter "address"
    .parameter "isVideocall"

    .prologue
    .line 6922
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6923
    :cond_0
    const/16 v16, 0x0

    .line 6982
    :goto_0
    return v16

    .line 6924
    :cond_1
    const/4 v14, 0x0

    .line 6925
    .local v14, nReject_match:I
    const/4 v15, 0x1

    .line 6926
    .local v15, reject_checked:I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 6928
    .local v9, FIND_WHERE:Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 6929
    .local v13, idsBuilder:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 6930
    .local v16, retValue:Z
    const/4 v12, 0x0

    .line 6931
    .local v12, id:I
    const-string v17, ""

    .line 6932
    .local v17, spamAddress:Ljava/lang/String;
    const-string v8, "_id"

    .line 6933
    .local v8, AUTOREJECT_ID:Ljava/lang/String;
    const/4 v11, 0x0

    .line 6935
    .local v11, cur:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    if-lt v2, v3, :cond_2

    .line 6936
    const-string v2, "reject_number"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6937
    const-string v2, " LIKE \'%"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6944
    :goto_1
    const-string v2, " AND reject_match = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6945
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 6946
    const-string v2, " AND reject_checked = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6947
    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 6949
    if-nez p2, :cond_3

    .line 6950
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "reject_number"

    aput-object v6, v4, v5

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 6954
    :goto_2
    if-nez v11, :cond_4

    .line 6955
    const-string v2, "Mms/MessageUtils"

    const-string v3, "unregisterAsCallBlockNumber : cursor is null !!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 6956
    const/16 v16, 0x0

    goto :goto_0

    .line 6940
    :cond_2
    const-string v2, "reject_number"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6941
    const-string v2, "="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 6952
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "reject_number"

    aput-object v6, v4, v5

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_2

    .line 6958
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6959
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 6961
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 6962
    const-string v2, "reject_number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 6963
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6964
    const-string v2, "Mms/MessageUtils"

    const-string v3, "unregisterAsCallBlockNumber : true"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6965
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6966
    const-string v2, " , "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6967
    const/16 v16, 0x1

    .line 6969
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 6971
    const-string v2, "-1"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6975
    .local v10, REMOVE_WHERE:Ljava/lang/String;
    if-nez p2, :cond_8

    .line 6976
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6980
    .end local v10           #REMOVE_WHERE:Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6981
    const/4 v11, 0x0

    .line 6982
    goto/16 :goto_0

    .line 6978
    .restart local v10       #REMOVE_WHERE:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 6767
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6768
    const v1, 0x7f0a0386

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6779
    :cond_0
    :goto_0
    return v0

    .line 6771
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6772
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter;->delete(Landroid/content/Context;ILjava/lang/String;)I

    .line 6775
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateCountryIso()V
    .locals 3

    .prologue
    .line 7455
    const-string v1, "Mms/MessageUtils"

    const-string v2, "updateCountryIso : update country iso info "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7456
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    if-nez v1, :cond_0

    .line 7457
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    .line 7459
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    if-nez v1, :cond_2

    .line 7460
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    .line 7466
    .local v0, detectedCountry:Landroid/location/Country;
    :cond_1
    :goto_0
    return-void

    .line 7462
    .end local v0           #detectedCountry:Landroid/location/Country;
    :cond_2
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 7463
    .restart local v0       #detectedCountry:Landroid/location/Country;
    if-eqz v0, :cond_1

    .line 7464
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    goto :goto_0
.end method

.method public static viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;II)V
    .locals 9
    .parameter "context"
    .parameter "slideshow"
    .parameter "slideIndex"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v5, 0xa

    .line 4974
    invoke-virtual {p1, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 4975
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 4976
    .local v2, mm:Lcom/android/mms/model/MediaModel;
    const/4 v1, 0x0

    .line 4978
    .local v1, locmm:Lcom/samsung/mms/model/LocationVcardModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4979
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne p3, v8, :cond_2

    .line 4980
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v1

    .line 5000
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5001
    if-eqz v1, :cond_8

    if-ne p3, v8, :cond_8

    .line 5003
    const-string v4, "NGM"

    const-string v5, "launch locationMap Activity now !!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5004
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5005
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "extra_startup_flag"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5006
    const-string v4, "extra_map_url"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5007
    const-string v4, "extra_selected_place"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5008
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5018
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 4982
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne p3, v5, :cond_3

    .line 4983
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    goto :goto_0

    .line 4984
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p3, v6, :cond_4

    .line 4985
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_0

    .line 4986
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p3, v7, :cond_0

    .line 4987
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    goto :goto_0

    .line 4991
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne p3, v5, :cond_6

    .line 4992
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    goto :goto_0

    .line 4993
    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_7

    if-ne p3, v6, :cond_7

    .line 4994
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_0

    .line 4995
    :cond_7
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p3, v7, :cond_0

    .line 4996
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    goto/16 :goto_0

    .line 5013
    :cond_8
    if-eqz v2, :cond_1

    .line 5017
    invoke-static {p0, v3, v2}, Lcom/android/mms/ui/MessageUtils;->openMedia(Landroid/content/Context;Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V
    .locals 10
    .parameter "context"
    .parameter "msgUri"
    .parameter "slideshow"
    .parameter "mmsView"

    .prologue
    const/4 v9, 0x4

    .line 2552
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 2553
    .local v2, isSimple:Z
    :goto_0
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v7

    .line 2555
    .local v7, type:I
    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    if-eq v7, v9, :cond_1

    .line 2558
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2601
    :goto_1
    return-void

    .line 2552
    .end local v2           #isSimple:Z
    .end local v7           #type:I
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v2

    goto :goto_0

    .line 2559
    .restart local v2       #isSimple:Z
    .restart local v7       #type:I
    :catch_0
    move-exception v0

    .line 2561
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2565
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    if-eqz p2, :cond_2

    .line 2566
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 2568
    .local v6, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 2569
    .local v5, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v6, p1, v5}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 2570
    invoke-virtual {p2, v5}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2580
    .end local v5           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v6           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2581
    if-eqz p2, :cond_3

    .line 2582
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v3

    .line 2583
    .local v3, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v3, :cond_3

    .line 2585
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2586
    .local v4, locintent:Landroid/content/Intent;
    const-string v8, "extra_startup_flag"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2587
    const-string v8, "extra_map_url"

    invoke-virtual {v3}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2588
    const-string v8, "extra_selected_place"

    invoke-virtual {v3}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2589
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2571
    .end local v3           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    .end local v4           #locintent:Landroid/content/Intent;
    .restart local v6       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_1
    move-exception v0

    .line 2572
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v8, "Mms/MessageUtils"

    const-string v9, "Unable to save message for preview"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2574
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v0

    .line 2575
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v8, "Mms/MessageUtils"

    const-string v9, "NullPointerException occur. Unable to save message for preview"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2596
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v6           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2597
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2598
    const-string v8, "preview"

    const-string v9, "previewLaunch"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2599
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage;Z)V
    .locals 6
    .parameter "context"
    .parameter "msg"
    .parameter "viewMMS"

    .prologue
    const/4 v5, 0x0

    .line 2667
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 2668
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-nez v1, :cond_0

    .line 2669
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "msg.getSlideshow() == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2671
    :cond_0
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v2

    .line 2673
    .local v2, type:I
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    .line 2676
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 2677
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2686
    :goto_0
    return-void

    .line 2678
    :catch_0
    move-exception v0

    .line 2680
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2683
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v3

    .line 2684
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p0, v3, v1, p2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    goto :goto_0
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 16
    .parameter "context"
    .parameter "messageItem"
    .parameter "mmsView"

    .prologue
    .line 2604
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 2605
    .local v7, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 2606
    .local v10, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    .line 2607
    .local v5, msgId:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 2608
    .local v11, threadId:J
    if-nez v10, :cond_0

    const/4 v3, 0x0

    .line 2609
    .local v3, isSimple:Z
    :goto_0
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v13

    .line 2611
    .local v13, type:I
    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    const/4 v14, 0x4

    if-eq v13, v14, :cond_1

    .line 2614
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    :goto_1
    return-void

    .line 2608
    .end local v3           #isSimple:Z
    .end local v13           #type:I
    :cond_0
    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v3

    goto :goto_0

    .line 2615
    .restart local v3       #isSimple:Z
    .restart local v13       #type:I
    :catch_0
    move-exception v1

    .line 2617
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2621
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    if-eqz v10, :cond_2

    .line 2622
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 2624
    .local v9, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_1
    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v8

    .line 2625
    .local v8, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v9, v7, v8}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 2626
    invoke-virtual {v10, v8}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2638
    .end local v8           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v9           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    .line 2639
    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v4

    .line 2640
    .local v4, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v4, :cond_3

    .line 2643
    new-instance v2, Landroid/content/Intent;

    const-class v14, Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2644
    .local v2, intent:Landroid/content/Intent;
    const-string v14, "extra_startup_flag"

    const/4 v15, 0x4

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2645
    const-string v14, "extra_map_url"

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2646
    const-string v14, "extra_selected_place"

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2647
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2627
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    .restart local v9       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_1
    move-exception v1

    .line 2628
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v14, "Mms/MessageUtils"

    const-string v15, "Unable to save message for preview"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2630
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v1

    .line 2631
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v14, "Mms/MessageUtils"

    const-string v15, "NullPointerException occur. Unable to save message for preview"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2653
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v9           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2654
    new-instance v2, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2658
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2659
    const-string v14, "msgId"

    invoke-virtual {v2, v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2660
    const-string v14, "thread_id"

    invoke-virtual {v2, v14, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2661
    const-string v14, "preview"

    const-string v15, "previewLaunch"

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2662
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2657
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 4
    .parameter "context"
    .parameter "slideshow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1785
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1786
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1789
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1790
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    const/4 v0, 0x0

    .line 1791
    .local v0, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1792
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 1799
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 1803
    :goto_1
    return-void

    .line 1793
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1794
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    goto :goto_0

    .line 1795
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1796
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    goto :goto_0

    .line 1802
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/android/mms/ui/MessageUtils;->openMedia(Landroid/content/Context;Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1
.end method

.method public static writeHprofDataToFile()V
    .locals 5

    .prologue
    .line 2692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mms_oom_hprof_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2695
    .local v1, filename:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 2696
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### written hprof data to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2700
    :goto_0
    return-void

    .line 2697
    :catch_0
    move-exception v0

    .line 2698
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeHprofDataToFile: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
