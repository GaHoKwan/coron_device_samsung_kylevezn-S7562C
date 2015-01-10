.class public Lcom/android/mms/ui/VCardComposerMsg;
.super Lcom/android/vcard/VCardComposer;
.source "VCardComposerMsg.java"


# static fields
.field public static final ATTR_TYPE:Ljava/lang/String; = "TYPE"

.field public static final ATTR_TYPE_BBS:Ljava/lang/String; = "BBS"

.field public static final ATTR_TYPE_CAR:Ljava/lang/String; = "CAR"

.field public static final ATTR_TYPE_CELL:Ljava/lang/String; = "CELL"

.field public static final ATTR_TYPE_FAX:Ljava/lang/String; = "FAX"

.field public static final ATTR_TYPE_HOME:Ljava/lang/String; = "HOME"

.field public static final ATTR_TYPE_INTERNET:Ljava/lang/String; = "INTERNET"

.field public static final ATTR_TYPE_ISDN:Ljava/lang/String; = "ISDN"

.field public static final ATTR_TYPE_MODEM:Ljava/lang/String; = "MODEM"

.field public static final ATTR_TYPE_MSG:Ljava/lang/String; = "MSG"

.field public static final ATTR_TYPE_PAGER:Ljava/lang/String; = "PAGER"

.field public static final ATTR_TYPE_PHONE_EXTRA_ASSISTANT:Ljava/lang/String; = "ASSISTANT"

.field public static final ATTR_TYPE_PHONE_EXTRA_CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final ATTR_TYPE_PHONE_EXTRA_COMPANY_MAIN:Ljava/lang/String; = "COMPANY-MAIN"

.field public static final ATTR_TYPE_PHONE_EXTRA_OTHER:Ljava/lang/String; = "OTHER"

.field public static final ATTR_TYPE_PHONE_EXTRA_RADIO:Ljava/lang/String; = "RADIO"

.field public static final ATTR_TYPE_PHONE_EXTRA_TELEX:Ljava/lang/String; = "TELEX"

.field public static final ATTR_TYPE_PHONE_EXTRA_TTY_TDD:Ljava/lang/String; = "TTY-TDD"

.field public static final ATTR_TYPE_PREF:Ljava/lang/String; = "PREF"

.field public static final ATTR_TYPE_VIDEO:Ljava/lang/String; = "VIDEO"

.field public static final ATTR_TYPE_VOICE:Ljava/lang/String; = "VOICE"

.field public static final ATTR_TYPE_WORK:Ljava/lang/String; = "WORK"

.field public static final ATTR_TYPE_X_IRMC_N:Ljava/lang/String; = "X-IRMC-N"

.field private static final DEFAULT_EMAIL_TYPE:Ljava/lang/String; = "INTERNET"

.field private static final ENCODE64:[C = null

.field private static final LOG_TAG:Ljava/lang/String; = "vcard.VCardComposerMsg"

.field private static PAD:C = '\u0000'

.field public static final PROPERTY_X_AIM:Ljava/lang/String; = "X-AIM"

.field public static final PROPERTY_X_GOOGLE_TALK:Ljava/lang/String; = "X-GOOGLE-TALK"

.field public static final PROPERTY_X_GOOGLE_TALK_WITH_SPACE:Ljava/lang/String; = "X-GOOGLE TALK"

.field public static final PROPERTY_X_ICQ:Ljava/lang/String; = "X-ICQ"

.field public static final PROPERTY_X_JABBER:Ljava/lang/String; = "X-JABBER"

.field public static final PROPERTY_X_MSN:Ljava/lang/String; = "X-MSN"

.field public static final PROPERTY_X_SKYPE_PSTNNUMBER:Ljava/lang/String; = "X-SKYPE-PSTNNUMBER"

.field public static final PROPERTY_X_SKYPE_USERNAME:Ljava/lang/String; = "X-SKYPE-USERNAME"

.field public static final PROPERTY_X_YAHOO:Ljava/lang/String; = "X-YAHOO"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VCARD_ATTR_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_ATTR_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_ATTR_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_COL_SEPARATOR:Ljava/lang/String; = "\r\n"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PROPERTY_ADR:Ljava/lang/String; = "ADR"

.field private static final VCARD_PROPERTY_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final VCARD_PROPERTY_BIRTHDAY:Ljava/lang/String; = "BDAY"

.field private static final VCARD_PROPERTY_CALLTYPE_INCOMING:Ljava/lang/String; = "INCOMING"

.field private static final VCARD_PROPERTY_CALLTYPE_MISSED:Ljava/lang/String; = "MISSED"

.field private static final VCARD_PROPERTY_CALLTYPE_OUTGOING:Ljava/lang/String; = "OUTGOING"

.field private static final VCARD_PROPERTY_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final VCARD_PROPERTY_END:Ljava/lang/String; = "END"

.field private static final VCARD_PROPERTY_FULL_NAME:Ljava/lang/String; = "FN"

.field private static final VCARD_PROPERTY_NAME:Ljava/lang/String; = "N"

.field private static final VCARD_PROPERTY_NICKNAME:Ljava/lang/String; = "NICKNAME"

.field private static final VCARD_PROPERTY_NOTE:Ljava/lang/String; = "NOTE"

.field private static final VCARD_PROPERTY_ORG:Ljava/lang/String; = "ORG"

.field private static final VCARD_PROPERTY_PHOTO:Ljava/lang/String; = "PHOTO"

.field private static final VCARD_PROPERTY_SORT_STRING:Ljava/lang/String; = "SORT-STRING"

.field private static final VCARD_PROPERTY_SOUND:Ljava/lang/String; = "SOUND"

.field private static final VCARD_PROPERTY_TEL:Ljava/lang/String; = "TEL"

.field private static final VCARD_PROPERTY_TITLE:Ljava/lang/String; = "TITLE"

.field private static final VCARD_PROPERTY_URL:Ljava/lang/String; = "URL"

.field private static final VCARD_PROPERTY_VERSION:Ljava/lang/String; = "VERSION"

.field private static final VCARD_PROPERTY_X_CLASS:Ljava/lang/String; = "X-CLASS"

.field private static final VCARD_PROPERTY_X_DCM_HMN_MODE:Ljava/lang/String; = "X-DCM-HMN-MODE"

.field private static final VCARD_PROPERTY_X_NICKNAME:Ljava/lang/String; = "X-NICKNAME"

.field private static final VCARD_PROPERTY_X_NO:Ljava/lang/String; = "X-NO"

.field private static final VCARD_PROPERTY_X_PHONETIC_FIRST_NAME:Ljava/lang/String; = "X-PHONETIC-FIRST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_LAST_NAME:Ljava/lang/String; = "X-PHONETIC-LAST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "X-PHONETIC-MIDDLE-NAME"

.field private static final VCARD_PROPERTY_X_REDUCTION:Ljava/lang/String; = "X-REDUCTION"

.field private static final VCARD_PROPERTY_X_TIMESTAMP:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field public static final VERSION_V21:Ljava/lang/String; = "2.1"

.field public static final VERSION_V30:Ljava/lang/String; = "3.0"


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharsetString:Ljava/lang/String;

.field private final mContentResolverEx:Landroid/content/ContentResolver;

.field private final mContextEx:Landroid/content/Context;

.field private mCursorEx:Landroid/database/Cursor;

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30:Z

.field private mNeedPhotoForVCard:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mUsesQPToPrimaryProperties:Z

.field private final mUsesQuotedPrintable:Z

.field private final mVCardAttributeCharset:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1907
    const/16 v0, 0x3d

    sput-char v0, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    .line 1909
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    return-void

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "needPhotoInVCard"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 413
    iput-object p1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContextEx:Landroid/content/Context;

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContentResolverEx:Landroid/content/ContentResolver;

    .line 417
    iput p2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    .line 419
    iput-boolean p3, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCareHandlerErrors:Z

    .line 421
    iput-boolean p4, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 423
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    .line 425
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    .line 427
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    .line 429
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    .line 433
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    .line 437
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    .line 441
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    .line 447
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    .line 452
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "SHIFT_JIS"

    const-string v1, "docomo"

    invoke-static {v0, v1}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 465
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    .line 481
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 477
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "isCallLogComposer"
    .parameter "needPhotoInVCard"

    .prologue
    const/4 v1, 0x1

    .line 489
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 352
    iput-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 491
    iput-object p1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContextEx:Landroid/content/Context;

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContentResolverEx:Landroid/content/ContentResolver;

    .line 495
    iput p2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    .line 497
    iput-boolean p3, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCareHandlerErrors:Z

    .line 503
    iput-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 505
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    .line 507
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    .line 509
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    .line 511
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    .line 515
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    .line 519
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    .line 523
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    .line 529
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    .line 534
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "SHIFT_JIS"

    const-string v1, "docomo"

    invoke-static {v0, v1}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 547
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    .line 563
    :goto_0
    return-void

    .line 557
    :cond_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 559
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "vcardTypeStr"
    .parameter "careHandlerErrors"

    .prologue
    .line 403
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;IZZ)V

    .line 406
    return-void
.end method

.method private appendBirthday(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 6
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v5, 0x0

    .line 1803
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1807
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1809
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data2"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1812
    .local v2, eventType:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1841
    .end local v2           #eventType:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 1825
    .restart local v2       #eventType:Ljava/lang/Integer;
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data1"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, birthday:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1830
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1832
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1834
    const-string v3, "BDAY"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendEmails(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1527
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1531
    .local v2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 1533
    .local v4, emailAddressExists:Z
    if-eqz v2, :cond_3

    .line 1535
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1537
    .local v0, addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1539
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v9, "data2"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1541
    .local v8, typeAsObject:Ljava/lang/Integer;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1545
    .local v7, type:I
    :goto_1
    const-string v9, "data3"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1547
    .local v6, label:Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1549
    .local v3, emailAddress:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1551
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1555
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1561
    const/4 v4, 0x1

    .line 1563
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1565
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1567
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, p1, v9, v6, v3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1541
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #type:I
    :cond_2
    const/4 v7, 0x3

    goto :goto_1

    .line 1575
    .end local v0           #addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #typeAsObject:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_4

    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v9, :cond_4

    .line 1577
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_4
    return-void
.end method

.method private appendIms(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 7
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1726
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v5, "vnd.android.cursor.item/im"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1730
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_2

    .line 1732
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1734
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "data5"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1736
    .local v4, protocol:Ljava/lang/Integer;
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1738
    .local v2, data:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1740
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1744
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1750
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 1752
    iget v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 1754
    const-string v5, "X-GOOGLE-TALK"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #protocol:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private appendNickNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 10
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1337
    const-string v9, "vnd.android.cursor.item/nickname"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1341
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_6

    .line 1345
    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v9, :cond_3

    .line 1347
    const-string v5, "NICKNAME"

    .line 1361
    .local v5, propertyNickname:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1363
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v9, "data1"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1366
    .local v4, nickname:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1374
    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v9, :cond_4

    new-array v9, v7, [Ljava/lang/String;

    aput-object v4, v9, v8

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    move v6, v7

    .line 1380
    .local v6, reallyUseQuotedPrintable:Z
    :goto_2
    if-eqz v6, :cond_5

    .line 1382
    invoke-direct {p0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1390
    .local v2, encodedNickname:Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    invoke-direct {p0, v5}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1394
    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    iget-object v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    :cond_1
    if-eqz v6, :cond_2

    .line 1402
    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :cond_2
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1349
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #encodedNickname:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #nickname:Ljava/lang/String;
    .end local v5           #propertyNickname:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_3
    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v9, :cond_6

    .line 1351
    const-string v5, "X-NICKNAME"

    .restart local v5       #propertyNickname:Ljava/lang/String;
    goto :goto_0

    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #nickname:Ljava/lang/String;
    :cond_4
    move v6, v8

    .line 1374
    goto :goto_2

    .line 1386
    .restart local v6       #reallyUseQuotedPrintable:Z
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodedNickname:Ljava/lang/String;
    goto :goto_3

    .line 1418
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #encodedNickname:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #nickname:Ljava/lang/String;
    .end local v5           #propertyNickname:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_6
    return-void
.end method

.method private appendNotes(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2072
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v0, "vnd.android.cursor.item/note"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2076
    .local v7, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_4

    .line 2078
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v0, :cond_7

    .line 2080
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2082
    .local v11, noteBuilder:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 2084
    .local v8, first:Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 2086
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2088
    .local v10, note:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 2090
    const-string v10, ""

    .line 2094
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2096
    if-eqz v8, :cond_2

    .line 2098
    const/4 v8, 0x0

    .line 2106
    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2102
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2112
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v10           #note:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2119
    .local v3, noteStr:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v4, 0x1

    .line 2123
    .local v4, shouldAppendCharsetInfo:Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v5, 0x1

    .line 2129
    .local v5, reallyUseQuotedPrintable:Z
    :goto_3
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2163
    .end local v3           #noteStr:Ljava/lang/String;
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    .end local v8           #first:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #noteBuilder:Ljava/lang/StringBuilder;
    :cond_4
    return-void

    .line 2119
    .restart local v3       #noteStr:Ljava/lang/String;
    .restart local v8       #first:Z
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #noteBuilder:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 2123
    .restart local v4       #shouldAppendCharsetInfo:Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 2135
    .end local v3           #noteStr:Ljava/lang/String;
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v8           #first:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #noteBuilder:Ljava/lang/StringBuilder;
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 2137
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2139
    .restart local v3       #noteStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x1

    .line 2145
    .restart local v4       #shouldAppendCharsetInfo:Z
    :goto_5
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v5, 0x1

    .line 2151
    .restart local v5       #reallyUseQuotedPrintable:Z
    :goto_6
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 2141
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 2145
    .restart local v4       #shouldAppendCharsetInfo:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_6
.end method

.method private appendOrganizations(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 13
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1847
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1851
    .local v11, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_8

    .line 1853
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 1855
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1859
    .local v3, company:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1861
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1865
    :cond_1
    const-string v0, "data4"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1869
    .local v7, title:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1871
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1875
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1877
    const-string v2, "ORG"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x1

    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1887
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1889
    const-string v6, "TITLE"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v8, 0x1

    :goto_3
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1877
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1889
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 1903
    .end local v3           #company:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method private appendPhones(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v9, 0x1

    .line 1424
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1428
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 1430
    .local v4, phoneLineExists:Z
    if-eqz v1, :cond_3

    .line 1432
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1434
    .local v6, phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1436
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v10, "data2"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1439
    .local v8, typeAsObject:Ljava/lang/Integer;
    const-string v10, "data3"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1441
    .local v3, label:Ljava/lang/String;
    const-string v10, "data1"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1443
    .local v5, phoneNumber:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1445
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1449
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1455
    const/4 v4, 0x1

    .line 1457
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1466
    .local v7, type:I
    :goto_1
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1468
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1470
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, p1, v10, v3, v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v7           #type:I
    :cond_2
    move v7, v9

    .line 1457
    goto :goto_1

    .line 1478
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #label:Ljava/lang/String;
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #typeAsObject:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_4

    iget-boolean v10, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v10, :cond_4

    .line 1480
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_4
    return-void
.end method

.method private appendPhotos(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 13
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v12, 0x47

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1995
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1999
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_4

    .line 2001
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2003
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v6, "data15"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 2005
    .local v2, data:[B
    if-eqz v2, :cond_0

    .line 2018
    array-length v6, v2

    if-lt v6, v11, :cond_1

    aget-byte v6, v2, v8

    if-ne v6, v12, :cond_1

    aget-byte v6, v2, v9

    const/16 v7, 0x49

    if-ne v6, v7, :cond_1

    aget-byte v6, v2, v10

    const/16 v7, 0x46

    if-ne v6, v7, :cond_1

    .line 2022
    const-string v5, "GIF"

    .line 2054
    .local v5, photoType:Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lcom/android/mms/ui/VCardComposerMsg;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    .line 2056
    .local v4, photoString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 2058
    invoke-direct {p0, p1, v4, v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2024
    .end local v4           #photoString:Ljava/lang/String;
    .end local v5           #photoType:Ljava/lang/String;
    :cond_1
    array-length v6, v2

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    aget-byte v6, v2, v8

    const/16 v7, -0x77

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v9

    const/16 v7, 0x50

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v10

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v11

    if-ne v6, v12, :cond_2

    .line 2038
    const-string v5, "PNG"

    .restart local v5       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 2040
    .end local v5           #photoType:Ljava/lang/String;
    :cond_2
    array-length v6, v2

    if-lt v6, v10, :cond_3

    aget-byte v6, v2, v8

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    aget-byte v6, v2, v9

    const/16 v7, -0x28

    if-ne v6, v7, :cond_3

    .line 2044
    const-string v5, "JPEG"

    .restart local v5       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 2048
    .end local v5           #photoType:Ljava/lang/String;
    :cond_3
    const-string v6, "vcard.VCardComposerMsg"

    const-string v7, "Unknown photo type. Ignore."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2066
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #data:[B
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private appendPostals(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1587
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1591
    .local v0, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_2

    .line 1593
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    .line 1595
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 1603
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1605
    const-string v1, "ADR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    const-string v1, "HOME"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1636
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1652
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    const-string v0, "vcard.VCardComposerMsg"

    const-string v1, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z
    .locals 5
    .parameter "builder"
    .parameter
    .parameter "preferedType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1678
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1680
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1683
    .local v3, type:Ljava/lang/Integer;
    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1686
    .local v2, label:Ljava/lang/String;
    if-ne v3, p3, :cond_0

    .line 1688
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1690
    const/4 v4, 0x1

    .line 1696
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/Integer;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1704
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1706
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1709
    .local v3, type:Ljava/lang/Integer;
    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1712
    .local v2, label:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1714
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1720
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private appendStructuredNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 645
    .local v0, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 646
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_2

    .line 648
    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v1, :cond_0

    .line 653
    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v1, "FN"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 37
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v28, 0x0

    .line 704
    .local v28, primaryContentValues:Landroid/content/ContentValues;
    const/16 v34, 0x0

    .line 706
    .local v34, subprimaryContentValues:Landroid/content/ContentValues;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 708
    .local v9, contentValues:Landroid/content/ContentValues;
    if-eqz v9, :cond_0

    .line 714
    const-string v3, "is_super_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 717
    .local v22, isSuperPrimary:Ljava/lang/Integer;
    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_17

    .line 721
    move-object/from16 v28, v9

    .line 757
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v22           #isSuperPrimary:Ljava/lang/Integer;
    :cond_1
    if-nez v28, :cond_2

    .line 759
    if-eqz v34, :cond_19

    .line 764
    move-object/from16 v28, v34

    .line 777
    :cond_2
    :goto_1
    const-string v3, "data3"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 781
    .local v17, familyName:Ljava/lang/String;
    const-string v3, "data5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 785
    .local v23, middleName:Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 789
    .local v19, givenName:Ljava/lang/String;
    const-string v3, "data4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 793
    .local v27, prefix:Ljava/lang/String;
    const-string v3, "data6"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 797
    .local v35, suffix:Ljava/lang/String;
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 801
    .local v10, displayName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 813
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v17, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v19, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v23, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v27, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v35, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_4
    const/16 v32, 0x1

    .line 827
    .local v32, reallyUseQuotedPrintableToName:Z
    :goto_2
    if-eqz v32, :cond_1b

    .line 829
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 835
    .local v5, encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 856
    .local v8, encodedSuffix:Ljava/lang/String;
    :goto_3
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v17, v3, v36

    const/16 v36, 0x1

    aput-object v19, v3, v36

    const/16 v36, 0x2

    aput-object v23, v3, v36

    const/16 v36, 0x3

    aput-object v27, v3, v36

    const/16 v36, 0x4

    aput-object v35, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 862
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_5
    if-eqz v32, :cond_6

    .line 870
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_6
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 905
    .local v18, fullname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v18, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/16 v31, 0x1

    .line 911
    .local v31, reallyUseQuotedPrintableToFullname:Z
    :goto_4
    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 921
    .local v12, encodedFullname:Ljava/lang/String;
    :goto_5
    const-string v3, "FN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 925
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :cond_7
    if-eqz v31, :cond_8

    .line 933
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    :cond_8
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .end local v4           #encodedFamily:Ljava/lang/String;
    .end local v5           #encodedMiddle:Ljava/lang/String;
    .end local v6           #encodedGiven:Ljava/lang/String;
    .end local v7           #encodedPrefix:Ljava/lang/String;
    .end local v8           #encodedSuffix:Ljava/lang/String;
    .end local v12           #encodedFullname:Ljava/lang/String;
    .end local v18           #fullname:Ljava/lang/String;
    .end local v31           #reallyUseQuotedPrintableToFullname:Z
    .end local v32           #reallyUseQuotedPrintableToName:Z
    :cond_9
    :goto_6
    const-string v3, "data9"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1009
    .local v24, phoneticFamilyName:Ljava/lang/String;
    const-string v3, "data8"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1013
    .local v26, phoneticMiddleName:Ljava/lang/String;
    const-string v3, "data7"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1017
    .local v25, phoneticGivenName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1023
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    if-eqz v3, :cond_b

    .line 1025
    invoke-static/range {v24 .. v24}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1029
    invoke-static/range {v26 .. v26}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1033
    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1039
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v3, :cond_25

    .line 1041
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v3, v0, v1, v2}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1051
    .local v33, sortString:Ljava/lang/String;
    const-string v3, "SORT-STRING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1058
    .local v16, encodedSortString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1060
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_c
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .end local v16           #encodedSortString:Ljava/lang/String;
    .end local v33           #sortString:Ljava/lang/String;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    if-eqz v3, :cond_16

    .line 1188
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1190
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v25, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    const/16 v29, 0x1

    .line 1199
    .local v29, reallyUseQuotedPrintable:Z
    :goto_8
    if-eqz v29, :cond_2c

    .line 1201
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1209
    .local v14, encodedPhoneticGivenName:Ljava/lang/String;
    :goto_9
    const-string v3, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1213
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :cond_e
    if-eqz v29, :cond_f

    .line 1221
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    :cond_f
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_10
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v26, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/16 v29, 0x1

    .line 1246
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_a
    if-eqz v29, :cond_2e

    .line 1248
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1256
    .local v15, encodedPhoneticMiddleName:Ljava/lang/String;
    :goto_b
    const-string v3, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1260
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_11
    if-eqz v29, :cond_12

    .line 1268
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_12
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_13
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1284
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v24, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    const/16 v29, 0x1

    .line 1293
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_c
    if-eqz v29, :cond_30

    .line 1295
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1303
    .local v13, encodedPhoneticFamilyName:Ljava/lang/String;
    :goto_d
    const-string v3, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1307
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    :cond_14
    if-eqz v29, :cond_15

    .line 1315
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    :cond_15
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_16
    return-void

    .line 725
    .end local v10           #displayName:Ljava/lang/String;
    .end local v17           #familyName:Ljava/lang/String;
    .end local v19           #givenName:Ljava/lang/String;
    .end local v23           #middleName:Ljava/lang/String;
    .end local v24           #phoneticFamilyName:Ljava/lang/String;
    .end local v25           #phoneticGivenName:Ljava/lang/String;
    .end local v26           #phoneticMiddleName:Ljava/lang/String;
    .end local v27           #prefix:Ljava/lang/String;
    .end local v35           #suffix:Ljava/lang/String;
    .restart local v9       #contentValues:Landroid/content/ContentValues;
    .restart local v22       #isSuperPrimary:Ljava/lang/Integer;
    :cond_17
    if-nez v28, :cond_0

    .line 731
    const-string v3, "is_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 734
    .local v21, isPrimary:Ljava/lang/Integer;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/ui/VCardComposerMsg;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 738
    move-object/from16 v28, v9

    goto/16 :goto_0

    .line 745
    :cond_18
    if-nez v34, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/ui/VCardComposerMsg;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    move-object/from16 v34, v9

    goto/16 :goto_0

    .line 768
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v21           #isPrimary:Ljava/lang/Integer;
    .end local v22           #isSuperPrimary:Ljava/lang/Integer;
    :cond_19
    const-string v3, "vcard.VCardComposerMsg"

    const-string v36, "All ContentValues given from database is empty."

    move-object/from16 v0, v36

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v28, Landroid/content/ContentValues;

    .end local v28           #primaryContentValues:Landroid/content/ContentValues;
    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .restart local v28       #primaryContentValues:Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 813
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v17       #familyName:Ljava/lang/String;
    .restart local v19       #givenName:Ljava/lang/String;
    .restart local v23       #middleName:Ljava/lang/String;
    .restart local v27       #prefix:Ljava/lang/String;
    .restart local v35       #suffix:Ljava/lang/String;
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 841
    .restart local v32       #reallyUseQuotedPrintableToName:Z
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 843
    .restart local v4       #encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 845
    .restart local v6       #encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 847
    .restart local v5       #encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 849
    .restart local v7       #encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #encodedSuffix:Ljava/lang/String;
    goto/16 :goto_3

    .line 905
    .restart local v18       #fullname:Ljava/lang/String;
    :cond_1c
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 911
    .restart local v31       #reallyUseQuotedPrintableToFullname:Z
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 945
    .end local v4           #encodedFamily:Ljava/lang/String;
    .end local v5           #encodedMiddle:Ljava/lang/String;
    .end local v6           #encodedGiven:Ljava/lang/String;
    .end local v7           #encodedPrefix:Ljava/lang/String;
    .end local v8           #encodedSuffix:Ljava/lang/String;
    .end local v18           #fullname:Ljava/lang/String;
    .end local v31           #reallyUseQuotedPrintableToFullname:Z
    .end local v32           #reallyUseQuotedPrintableToName:Z
    :cond_1e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 947
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v10, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const/16 v30, 0x1

    .line 953
    .local v30, reallyUseQuotedPrintableToDisplayName:Z
    :goto_e
    if-eqz v30, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 961
    .local v11, encodedDisplayName:Ljava/lang/String;
    :goto_f
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 965
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    :cond_1f
    if-eqz v30, :cond_20

    .line 973
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    :cond_20
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 947
    .end local v11           #encodedDisplayName:Ljava/lang/String;
    .end local v30           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_21
    const/16 v30, 0x0

    goto :goto_e

    .line 953
    .restart local v30       #reallyUseQuotedPrintableToDisplayName:Z
    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    .line 993
    .end local v30           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v3, :cond_24

    .line 995
    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 997
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v3, :cond_9

    .line 999
    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v3, "FN"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1086
    .restart local v24       #phoneticFamilyName:Ljava/lang/String;
    .restart local v25       #phoneticGivenName:Ljava/lang/String;
    .restart local v26       #phoneticMiddleName:Ljava/lang/String;
    :cond_25
    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v24, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v26, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v25, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    const/16 v29, 0x1

    .line 1114
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_10
    if-eqz v29, :cond_29

    .line 1116
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1118
    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1120
    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1132
    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    :goto_11
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v13, v3, v36

    const/16 v36, 0x1

    aput-object v15, v3, v36

    const/16 v36, 0x2

    aput-object v14, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1138
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :cond_27
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1092
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_10

    .line 1124
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1126
    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1128
    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_11

    .line 1164
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v3, :cond_d

    .line 1166
    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1190
    :cond_2b
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 1205
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_9

    .line 1237
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2d
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 1252
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    goto/16 :goto_b

    .line 1284
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2f
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 1299
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    goto/16 :goto_d
.end method

.method private appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 3069
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v0, :cond_0

    .line 3071
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    return-void
.end method

.method private appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3043
    .local p2, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 3045
    .local v0, first:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3047
    .local v2, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3049
    const/4 v0, 0x0

    .line 3057
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 3053
    :cond_0
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3061
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 2953
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 2959
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2978
    :goto_0
    return-void

    .line 2963
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 2965
    .local v0, phoneAttribute:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2967
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 2971
    :cond_1
    const-string v1, "vcard.VCardComposerMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "data"

    .prologue
    .line 2706
    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    if-nez p2, :cond_0

    .line 2712
    const/4 v0, 0x3

    .line 2722
    .local v0, typeAsPrimitive:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2790
    const-string v2, "vcard.VCardComposerMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    const-string v1, "INTERNET"

    .line 2800
    .local v1, typeAsString:Ljava/lang/String;
    :goto_1
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2804
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    return-void

    .line 2716
    .end local v0           #typeAsPrimitive:I
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #typeAsPrimitive:I
    goto :goto_0

    .line 2734
    :pswitch_0
    const-string v2, "_AUTO_CELL"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2738
    const-string v1, "CELL"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 2740
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 2748
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_2
    const-string v1, "INTERNET"

    .line 2752
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 2758
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 2760
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 2766
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 2768
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 2774
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_3
    const-string v1, "INTERNET"

    .line 2776
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 2782
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 2784
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 2722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "builder"
    .parameter "propertyName"
    .parameter "rawData"

    .prologue
    const/4 v4, 0x0

    .line 2984
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2986
    return-void
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "builder"
    .parameter "field"
    .parameter "rawData"
    .parameter "needCharset"
    .parameter "needQuotedPrintable"

    .prologue
    .line 2994
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    if-eqz p4, :cond_0

    .line 2998
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    iget-object v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    :cond_0
    if-eqz p5, :cond_1

    .line 3008
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    const-string v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    invoke-direct {p0, p3}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3025
    .local v0, encodedData:Ljava/lang/String;
    :goto_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3031
    return-void

    .line 3021
    .end local v0           #encodedData:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedData:Ljava/lang/String;
    goto :goto_0
.end method

.method private appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "builder"
    .parameter "encodedData"
    .parameter "photoType"

    .prologue
    .line 2322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2324
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v5, "PHOTO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_1

    .line 2330
    const-string v5, "ENCODING=b"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    :goto_0
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    invoke-direct {p0, v3, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2342
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2348
    .local v4, tmpStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2350
    .restart local v3       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2352
    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2354
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2356
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2358
    add-int/lit8 v2, v2, 0x1

    .line 2360
    const/16 v5, 0x48

    if-le v2, v5, :cond_0

    .line 2362
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    const/4 v2, 0x0

    .line 2354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2334
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_1
    const-string v5, "ENCODING=BASE64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2372
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    return-void
.end method

.method private appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 18
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "contentValues"

    .prologue
    .line 2454
    const-string v15, "ADR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2465
    const/4 v6, 0x0

    .line 2467
    .local v6, dataExists:Z
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/VCardComposerMsg;->getVCardPostalElements(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    .line 2469
    .local v5, dataArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2471
    .local v2, actuallyUseQuotedPrintable:Z
    const/4 v12, 0x0

    .line 2473
    .local v12, shouldAppendCharset:Z
    move-object v3, v5

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v4, v3, v8

    .line 2475
    .local v4, data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2477
    const/4 v6, 0x1

    .line 2479
    if-nez v12, :cond_0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 2482
    const/4 v12, 0x1

    .line 2486
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 2489
    const/4 v2, 0x1

    .line 2499
    .end local v4           #data:Ljava/lang/String;
    :cond_1
    array-length v10, v5

    .line 2501
    .local v10, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 2503
    aget-object v4, v5, v7

    .line 2505
    .restart local v4       #data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2507
    if-eqz v2, :cond_4

    .line 2509
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    .line 2501
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2473
    .end local v7           #i:I
    .end local v10           #length:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2513
    .restart local v7       #i:I
    .restart local v10       #length:I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    goto :goto_2

    .line 2523
    .end local v4           #data:Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_d

    .line 2525
    const/4 v13, 0x3

    .line 2533
    .local v13, typeAsPrimitive:I
    :goto_3
    const/4 v14, 0x0

    .line 2535
    .local v14, typeAsString:Ljava/lang/String;
    packed-switch v13, :pswitch_data_0

    .line 2587
    const-string v15, "vcard.VCardComposerMsg"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown StructuredPostal type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    :cond_6
    :goto_4
    :pswitch_0
    const/4 v11, 0x0

    .line 2601
    .local v11, shouldAppendAttrSeparator:Z
    if-eqz v14, :cond_7

    .line 2603
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2605
    const/4 v11, 0x1

    .line 2609
    :cond_7
    if-eqz v6, :cond_b

    .line 2611
    if-eqz v12, :cond_9

    .line 2624
    if-eqz v11, :cond_8

    .line 2626
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    const/4 v11, 0x1

    .line 2636
    :cond_9
    if-eqz v2, :cond_b

    .line 2638
    if-eqz v11, :cond_a

    .line 2640
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    :cond_a
    const-string v15, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2656
    :cond_b
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    if-eqz v6, :cond_c

    .line 2670
    const/4 v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2672
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    const/4 v15, 0x1

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2676
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2678
    const/4 v15, 0x2

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2682
    const/4 v15, 0x3

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2686
    const/4 v15, 0x4

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2688
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    const/4 v15, 0x5

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    const/4 v15, 0x6

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    :cond_c
    const-string v15, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    return-void

    .line 2529
    .end local v11           #shouldAppendAttrSeparator:Z
    .end local v13           #typeAsPrimitive:I
    .end local v14           #typeAsString:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .restart local v13       #typeAsPrimitive:I
    goto/16 :goto_3

    .line 2539
    .restart local v14       #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v14, "HOME"

    .line 2541
    goto/16 :goto_4

    .line 2547
    :pswitch_2
    const-string v14, "WORK"

    .line 2549
    goto/16 :goto_4

    .line 2555
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v15, :cond_6

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p3, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2567
    const-string v15, "X-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 2535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "encodedData"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2818
    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    if-nez p2, :cond_0

    .line 2828
    const/4 v0, -0x1

    .line 2838
    .local v0, typeAsPrimitive:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2929
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 2935
    :goto_1
    :pswitch_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    return-void

    .line 2832
    .end local v0           #typeAsPrimitive:I
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #typeAsPrimitive:I
    goto :goto_0

    .line 2842
    :pswitch_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 2850
    :pswitch_2
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 2858
    :pswitch_3
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 2866
    :pswitch_4
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 2874
    :pswitch_5
    const-string v1, "CELL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2880
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    .line 2889
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2893
    :cond_1
    const-string v1, "PAGER"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 2901
    :pswitch_7
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 2907
    :pswitch_8
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    aput-object p3, v1, v3

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2917
    :cond_2
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2838
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private appendWebsites(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v4, "vnd.android.cursor.item/website"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1776
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1

    .line 1778
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1780
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1782
    .local v3, website:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1784
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1786
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1788
    const-string v4, "URL"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1797
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #website:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "contentValues"

    .prologue
    .line 663
    const-string v6, "data3"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, familyName:Ljava/lang/String;
    const-string v6, "data5"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, middleName:Ljava/lang/String;
    const-string v6, "data2"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, givenName:Ljava/lang/String;
    const-string v6, "data4"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, prefix:Ljava/lang/String;
    const-string v6, "data6"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, suffix:Ljava/lang/String;
    const-string v6, "data1"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 7
    .parameter "data"

    .prologue
    .line 1927
    if-nez p0, :cond_0

    .line 1929
    const-string v5, ""

    .line 1987
    :goto_0
    return-object v5

    .line 1933
    :cond_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    new-array v1, v5, [C

    .line 1935
    .local v1, charBuffer:[C
    const/4 v3, 0x0

    .line 1937
    .local v3, position:I
    const/4 v0, 0x0

    .line 1939
    .local v0, _3byte:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_1

    .line 1941
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int v0, v5, v6

    .line 1944
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .local v4, position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1946
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1948
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1950
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    and-int/lit8 v6, v0, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1939
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 1954
    :cond_1
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    .line 1987
    :goto_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 1958
    :pswitch_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x10

    .line 1960
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1962
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1964
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v3

    .line 1966
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v4

    goto :goto_2

    .line 1972
    :pswitch_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int v0, v5, v6

    .line 1975
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1977
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1979
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1981
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v4

    goto :goto_2

    .line 1954
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "str"

    .prologue
    const/16 v9, 0xa

    .line 3157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3159
    const-string v8, ""

    .line 3255
    :goto_0
    return-object v8

    .line 3167
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3169
    .local v7, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 3171
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 3173
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3175
    .local v0, ch:C
    const/16 v8, 0xd

    if-ne v0, v8, :cond_2

    .line 3177
    add-int/lit8 v8, v2, 0x1

    if-ge v8, v4, :cond_1

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 3179
    add-int/lit8 v2, v2, 0x1

    .line 3183
    :cond_1
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3171
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3185
    :cond_2
    if-ne v0, v9, :cond_3

    .line 3187
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3191
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3197
    .end local v0           #ch:C
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3201
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3203
    .restart local v7       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 3205
    .local v3, index:I
    const/4 v5, 0x0

    .line 3207
    .local v5, lineCount:I
    const/4 v6, 0x0

    .line 3211
    .local v6, strArray:[B
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3223
    :cond_5
    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_6

    .line 3225
    const-string v8, "=%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-byte v11, v6, v3

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    add-int/lit8 v3, v3, 0x1

    .line 3229
    add-int/lit8 v5, v5, 0x3

    .line 3231
    const/16 v8, 0x43

    if-lt v5, v8, :cond_5

    .line 3247
    const-string v8, "=\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3249
    const/4 v5, 0x0

    goto :goto_3

    .line 3213
    :catch_0
    move-exception v1

    .line 3215
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "vcard.VCardComposerMsg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Charset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot be used. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Try default charset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_3

    .line 3255
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "unescaped"

    .prologue
    const/16 v6, 0x5c

    .line 2188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2190
    const-string v5, ""

    .line 2314
    :goto_0
    return-object v5

    .line 2194
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2196
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2198
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 2200
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2202
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 2304
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2198
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2206
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2208
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2216
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 2218
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2220
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 2244
    .end local v3           #nextChar:C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2252
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_3

    .line 2254
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2270
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 2272
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2274
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2278
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2288
    :sswitch_5
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_5

    .line 2290
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2294
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2314
    .end local v0           #ch:C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2202
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static getVCardPostalElements(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 8
    .parameter "contentValues"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2384
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    .line 2386
    .local v0, dataArray:[Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2388
    aget-object v2, v0, v3

    if-nez v2, :cond_0

    .line 2390
    const-string v2, ""

    aput-object v2, v0, v3

    .line 2396
    :cond_0
    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    .line 2398
    const-string v2, "data4"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 2400
    aget-object v2, v0, v4

    if-nez v2, :cond_1

    .line 2402
    const-string v2, ""

    aput-object v2, v0, v4

    .line 2408
    :cond_1
    const-string v2, "data7"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 2410
    aget-object v2, v0, v5

    if-nez v2, :cond_2

    .line 2412
    const-string v2, ""

    aput-object v2, v0, v5

    .line 2416
    :cond_2
    const-string v2, "data8"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2418
    .local v1, region:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2420
    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2428
    :goto_0
    const-string v2, "data9"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 2430
    aget-object v2, v0, v6

    if-nez v2, :cond_3

    .line 2432
    const-string v2, ""

    aput-object v2, v0, v6

    .line 2436
    :cond_3
    const-string v2, "data10"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 2438
    aget-object v2, v0, v7

    if-nez v2, :cond_4

    .line 2440
    const-string v2, ""

    aput-object v2, v0, v7

    .line 2444
    :cond_4
    return-object v0

    .line 2424
    :cond_5
    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method private shouldAppendCharsetAttribute(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyValue"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3128
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private shouldAppendCharsetAttribute(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, propertyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3137
    const/4 v2, 0x0

    .line 3139
    .local v2, shouldAppendBasically:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3141
    .local v1, propertyValue:Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v4

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3143
    const/4 v2, 0x1

    .line 3151
    .end local v1           #propertyValue:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-nez v5, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private splitIfSeveralPhoneNumbersExist(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1489
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v4, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1493
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1495
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1497
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1499
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1495
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1503
    :cond_1
    const/16 v5, 0x3b

    if-eq v1, v5, :cond_2

    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1513
    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    :cond_4
    return-object v4
.end method


# virtual methods
.method public composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "EmailAddr"
    .parameter "vcardVer21"

    .prologue
    const/4 v5, 0x0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    if-nez p4, :cond_2

    .line 609
    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :goto_0
    const/4 v4, 0x0

    .line 615
    .local v4, needCharset:Z
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    const/4 v4, 0x1

    .line 622
    :cond_0
    const-string v2, "FN"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 624
    const-string v2, "N"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 627
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v6           #label:Ljava/lang/String;
    :cond_1
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 611
    .end local v4           #needCharset:Z
    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "phoneNumber"
    .parameter "vcardVer21"

    .prologue
    const/4 v5, 0x0

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-nez p4, :cond_2

    .line 571
    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :goto_0
    const/4 v4, 0x0

    .line 578
    .local v4, needCharset:Z
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    const/4 v4, 0x1

    .line 585
    :cond_0
    const-string v2, "FN"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 588
    const-string v2, "N"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 591
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .end local v6           #label:Ljava/lang/String;
    :cond_1
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    .end local v4           #needCharset:Z
    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
