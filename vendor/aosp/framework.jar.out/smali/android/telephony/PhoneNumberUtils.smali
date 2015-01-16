.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final CLIDIGITS_KEY:Ljava/lang/String; = "Clidigits"

.field private static final CLIDIGITS_PREFERENCES_NAME:Ljava/lang/String; = "clidigits.preferences_name"

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z = null

.field public static final DASH:Ljava/lang/String; = "-"

.field protected static final DBG:Z = false

.field protected static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Drug_Report:I = 0x11

.field protected static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field protected static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_National_Intelligence_Service_KT:I = 0x7

.field private static final ECC_CATEGORY_National_Intelligence_Service_SKT:I = 0x6

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field protected static final ECC_CATEGORY_Police:I = 0x1

.field private static final ECC_CATEGORY_Smuggling_Report:I = 0x9

.field private static final ECC_CATEGORY_Spy_Report:I = 0x3

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field public static final LEFT_BRACKET:Ljava/lang/String; = "("

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MCC_OTA_URI:Landroid/net/Uri; = null

.field static final MIN_MATCH:I = 0x7

.field static final MIN_MATCH_CHINA:I = 0xb

.field static final MIN_MATCH_HK:I = 0x8

.field static final MIN_MATCH_TW:I = 0x9

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PAUSE:I = 0x5

.field private static final NANP_STATE_PLUS:I = 0x2

.field private static final NANP_STATE_WAIT:I = 0x6

.field public static final OTA_COUNTRY_MCC_KEY:Ljava/lang/String; = "otaCountryMccKey"

.field private static final OTA_COUNTRY_URI:Landroid/net/Uri; = null

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri; = null

.field public static final RIGHT_BRACKET:Ljava/lang/String; = ")"

.field public static final SPACE:Ljava/lang/String; = " "

.field public static final SQUARE:Ljava/lang/String; = "^"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field public static isAssistedDialingNumber:Z

.field private static isCDMARegistered:Z

.field private static isGSMRegistered:Z

.field private static isNANPCountry:Z

.field private static isNBPCDSupported:Z

.field private static isNetRoaming:Z

.field private static isOTANANPCountry:Z

.field private static isOTANBPCDSupported:Z

.field private static mCursor:Landroid/database/Cursor;

.field private static mCursorContry:Landroid/database/Cursor;

.field private static mPlaceEmergencyCallInAirplanemode:Z

.field private static numberLength:I

.field private static otaCountryCountryCode:Ljava/lang/String;

.field private static otaCountryIDDPrefix:Ljava/lang/String;

.field private static otaCountryMCC:Ljava/lang/String;

.field private static otaCountryNDDPrefix:Ljava/lang/String;

.field private static otaCountryName:Ljava/lang/String;

.field private static phoneType:I

.field private static refCountryAreaCode:Ljava/lang/String;

.field private static refCountryCountryCode:Ljava/lang/String;

.field private static refCountryIDDPrefix:Ljava/lang/String;

.field private static refCountryMCC:Ljava/lang/String;

.field private static refCountryNDDPrefix:Ljava/lang/String;

.field private static refCountryName:Ljava/lang/String;

.field private static refCountryNationalNumberLength:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    const/4 v2, 0x0

    .line 134
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 135
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 136
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 137
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 138
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 139
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 140
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    .line 142
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 144
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 145
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 148
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 149
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 150
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 151
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 152
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 153
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 154
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 157
    sput v2, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    .line 158
    sput v2, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 160
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 161
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    .line 162
    const-string v0, "content://assisteddialing/ota_country"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    .line 164
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 165
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 169
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    .line 175
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1419
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 3072
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 3074
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3075
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3077
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3078
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3080
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3081
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3083
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3084
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3086
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3087
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3089
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3090
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3092
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3093
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3095
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3096
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3556
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3568
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 3556
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3591
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1296
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 18
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1366
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 1367
    .local v9, numberLenReal:I
    move v8, v9

    .line 1368
    .local v8, numberLenEffective:I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    const/4 v4, 0x1

    .line 1369
    .local v4, hasPlus:Z
    :goto_0
    const/16 v15, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/4 v5, 0x1

    .line 1370
    .local v5, hasSharp:Z
    :goto_1
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/4 v6, 0x1

    .line 1372
    .local v6, hasStar:Z
    :goto_2
    if-eqz v4, :cond_0

    add-int/lit8 v8, v8, -0x1

    .line 1374
    :cond_0
    if-nez v8, :cond_5

    const/4 v12, 0x0

    .line 1403
    :cond_1
    :goto_3
    return-object v12

    .line 1368
    .end local v4           #hasPlus:Z
    .end local v5           #hasSharp:Z
    .end local v6           #hasStar:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1369
    .restart local v4       #hasPlus:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1370
    .restart local v5       #hasSharp:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 1376
    .restart local v6       #hasStar:Z
    :cond_5
    add-int/lit8 v15, v8, 0x1

    div-int/lit8 v13, v15, 0x2

    .line 1377
    .local v13, resultLen:I
    const/4 v3, 0x1

    .line 1378
    .local v3, extraBytes:I
    if-eqz p1, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 1379
    :cond_6
    add-int/2addr v13, v3

    .line 1381
    new-array v12, v13, [B

    .line 1383
    .local v12, result:[B
    const/4 v2, 0x0

    .line 1384
    .local v2, digitCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    if-ge v7, v9, :cond_9

    .line 1385
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1386
    .local v1, c:C
    const/16 v15, 0x2b

    if-ne v1, v15, :cond_7

    .line 1384
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1387
    :cond_7
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const/4 v14, 0x4

    .line 1388
    .local v14, shift:I
    :goto_6
    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v17

    and-int/lit8 v17, v17, 0xf

    shl-int v17, v17, v14

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1389
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1387
    .end local v14           #shift:I
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 1393
    .end local v1           #c:C
    :cond_9
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0xf0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1395
    :cond_a
    const/4 v10, 0x0

    .line 1396
    .local v10, offset:I
    if-eqz p1, :cond_b

    add-int/lit8 v11, v10, 0x1

    .end local v10           #offset:I
    .local v11, offset:I
    add-int/lit8 v15, v13, -0x1

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    move v10, v11

    .line 1397
    .end local v11           #offset:I
    .restart local v10       #offset:I
    :cond_b
    if-eqz v4, :cond_d

    const/16 v15, 0x91

    :goto_7
    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1399
    if-nez v5, :cond_c

    if-eqz v6, :cond_1

    .line 1400
    :cond_c
    aget-byte v15, v12, v10

    and-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    goto/16 :goto_3

    .line 1397
    :cond_d
    const/16 v15, 0x81

    goto :goto_7
.end method

.method public static IsPlaceEmergencyCallInAirplanemode()Z
    .locals 3

    .prologue
    .line 5036
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlaceEmergencyCallInAirplanemode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    sget-boolean v0, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    return v0
.end method

.method private static KorMsgbcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    .line 1211
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1212
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1219
    :goto_0
    return v0

    .line 1213
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1219
    const/4 v0, 0x0

    goto :goto_0

    .line 1214
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1215
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1216
    :pswitch_2
    const/16 v0, 0x61

    goto :goto_0

    .line 1217
    :pswitch_3
    const/16 v0, 0x62

    goto :goto_0

    .line 1218
    :pswitch_4
    const/16 v0, 0x63

    goto :goto_0

    .line 1213
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static SetPlaceEmergencyCallInAirplanemode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 5031
    sput-boolean p0, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    .line 5033
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 3416
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 3417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3418
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3426
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3423
    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3424
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_0
.end method

.method public static assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 28
    .parameter "phoneNumber"
    .parameter "context"

    .prologue
    .line 3928
    :try_start_0
    const-string v5, "PhoneNumberUtils"

    const-string v6, "Called assistedDialFromContactList : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3930
    :cond_0
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4465
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 3934
    .restart local p0
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3935
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3937
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 3938
    .local v11, ch:C
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x2b

    if-ne v5, v11, :cond_4

    .line 3940
    :cond_3
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3951
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4462
    .end local v11           #ch:C
    :catch_0
    move-exception v12

    .line 4463
    .local v12, e:Ljava/lang/Exception;
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot assist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 3944
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v11       #ch:C
    :cond_4
    :try_start_1
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 3956
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3958
    .local v18, newPhoneNumber:Ljava/lang/StringBuilder;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    .line 3959
    .local v26, numberBeginsWithRefCountryNDDPrefix:Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 3960
    .local v25, numberBeginsWithRefCountryIDDPrefix:Z
    const-string v5, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const/16 v22, 0x1

    .line 3961
    .local v22, numberBeginsWithNonUSIDDPrefix:Z
    :goto_1
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 3962
    .local v23, numberBeginsWithOTAIDDPrefix:Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 3965
    .local v24, numberBeginsWithOTANDDPrefix:Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 3967
    .local v10, c:C
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v5, :cond_2d

    .line 3970
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3972
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v5, :cond_13

    .line 3975
    if-eqz v22, :cond_e

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_e

    const/16 v5, 0x31

    if-eq v5, v10, :cond_e

    .line 3977
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    add-int/lit8 v13, v5, -0xa

    .line 3978
    .local v13, extralength:I
    const/16 v16, 0x0

    .line 3979
    .local v16, match:Z
    const/4 v14, 0x0

    .line 3980
    .local v14, findIDDLen:I
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_9

    .line 3986
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3987
    .local v2, iddcr:Landroid/content/ContentResolver;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 3989
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 3990
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3992
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3993
    .local v3, ContryCode:Landroid/content/ContentResolver;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 3994
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    .line 3995
    :goto_2
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3997
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3998
    :goto_3
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_6

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4000
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4002
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    .line 4003
    const/16 v16, 0x1

    .line 4009
    :cond_6
    if-eqz v16, :cond_c

    .line 4016
    :cond_7
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_8

    .line 4018
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4020
    :cond_8
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_9

    .line 4022
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4026
    .end local v2           #iddcr:Landroid/content/ContentResolver;
    .end local v3           #ContryCode:Landroid/content/ContentResolver;
    :cond_9
    if-nez v16, :cond_d

    .line 4030
    const-string v5, "011"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4031
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4035
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 3960
    .end local v10           #c:C
    .end local v13           #extralength:I
    .end local v14           #findIDDLen:I
    .end local v16           #match:Z
    .end local v22           #numberBeginsWithNonUSIDDPrefix:Z
    .end local v23           #numberBeginsWithOTAIDDPrefix:Z
    .end local v24           #numberBeginsWithOTANDDPrefix:Z
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 4006
    .restart local v2       #iddcr:Landroid/content/ContentResolver;
    .restart local v3       #ContryCode:Landroid/content/ContentResolver;
    .restart local v10       #c:C
    .restart local v13       #extralength:I
    .restart local v14       #findIDDLen:I
    .restart local v16       #match:Z
    .restart local v22       #numberBeginsWithNonUSIDDPrefix:Z
    .restart local v23       #numberBeginsWithOTAIDDPrefix:Z
    .restart local v24       #numberBeginsWithOTANDDPrefix:Z
    :cond_b
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 4013
    :cond_c
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 4039
    .end local v2           #iddcr:Landroid/content/ContentResolver;
    .end local v3           #ContryCode:Landroid/content/ContentResolver;
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4040
    const/4 v5, 0x0

    const-string v6, "011"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v14, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4042
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4044
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4046
    .end local v13           #extralength:I
    .end local v14           #findIDDLen:I
    .end local v16           #match:Z
    :cond_e
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_12

    .line 4048
    if-eqz v26, :cond_10

    .line 4050
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_f

    .line 4053
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4054
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4058
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4064
    :cond_f
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4069
    :cond_10
    if-eqz v24, :cond_12

    .line 4071
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_11

    .line 4074
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4077
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-3] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4079
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4085
    :cond_11
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-4] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4092
    :cond_12
    if-eqz v25, :cond_25

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4094
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    const-string v6, "011"

    if-ne v5, v6, :cond_25

    .line 4097
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing5-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4106
    :cond_13
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_19

    .line 4108
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_16

    .line 4110
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 4112
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_14

    .line 4115
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4119
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4121
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4126
    :cond_14
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4127
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4130
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4132
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4139
    :cond_15
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-3] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4144
    :cond_16
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_19

    .line 4146
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 4148
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_17

    .line 4151
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4152
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4153
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4154
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4156
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4158
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4163
    :cond_17
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4164
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4166
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4170
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4177
    :cond_18
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-3] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4184
    :cond_19
    const/4 v15, 0x0

    .local v15, iddPrefix:Ljava/lang/String;
    const/16 v19, 0x0

    .line 4185
    .local v19, numberAfterIDDPrefix:Ljava/lang/String;
    if-nez v25, :cond_1a

    if-eqz v23, :cond_20

    .line 4187
    :cond_1a
    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_1b

    .line 4189
    sget-object v15, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 4190
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 4199
    :goto_4
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4201
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_1c

    .line 4204
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4205
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4207
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4209
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4194
    :cond_1b
    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4195
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 4214
    :cond_1c
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4215
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4219
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4224
    :cond_1d
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_1e

    .line 4227
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4228
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4230
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-3] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4232
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4236
    :cond_1e
    if-eqz v25, :cond_1f

    .line 4239
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4242
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-4] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4244
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4246
    :cond_1f
    if-eqz v23, :cond_25

    .line 4250
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-5] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4259
    :cond_20
    if-nez v26, :cond_21

    if-eqz v24, :cond_25

    :cond_21
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_25

    .line 4262
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 4264
    const/16 v17, 0x0

    .line 4265
    .local v17, nddPrefix:Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_22

    .line 4267
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 4273
    :goto_5
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_23

    .line 4276
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4277
    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4279
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4281
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4271
    :cond_22
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    goto :goto_5

    .line 4286
    :cond_23
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    .line 4287
    .local v27, temp:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4288
    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4290
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4292
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4299
    .end local v17           #nddPrefix:Ljava/lang/String;
    .end local v27           #temp:Ljava/lang/String;
    :cond_24
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-3] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4309
    .end local v15           #iddPrefix:Ljava/lang/String;
    .end local v19           #numberAfterIDDPrefix:Ljava/lang/String;
    :cond_25
    const/16 v5, 0x2b

    if-ne v5, v10, :cond_2d

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v5, :cond_2d

    .line 4311
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 4312
    .local v20, numberAfterPlus:Ljava/lang/String;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    .line 4314
    .local v21, numberAfterPlusContainsOTACountryCode:Z
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v5, :cond_27

    .line 4317
    if-eqz v21, :cond_26

    .line 4319
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4320
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4324
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4328
    :cond_26
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4329
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4331
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4333
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4339
    :cond_27
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2d

    .line 4341
    const/16 v5, 0xb

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_28

    const/16 v5, 0x31

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_28

    .line 4345
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4350
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4351
    .local v4, pluscr:Landroid/content/ContentResolver;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 4352
    const/16 v16, 0x0

    .line 4353
    .restart local v16       #match:Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 4354
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4358
    :goto_6
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_29

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_29

    .line 4360
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 4362
    const/16 v16, 0x1

    .line 4368
    :cond_29
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2a

    if-nez v16, :cond_2c

    .line 4372
    :cond_2a
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_0

    .line 4365
    :cond_2b
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 4376
    :cond_2c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2d

    .line 4378
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4380
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4381
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-3] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4385
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4392
    .end local v4           #pluscr:Landroid/content/ContentResolver;
    .end local v16           #match:Z
    .end local v20           #numberAfterPlus:Ljava/lang/String;
    .end local v21           #numberAfterPlusContainsOTACountryCode:Z
    :cond_2d
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v5, :cond_32

    .line 4394
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 4396
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_2f

    .line 4398
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2e

    .line 4401
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4402
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4403
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4405
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4407
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4409
    :cond_2e
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_32

    .line 4411
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4412
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4413
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4414
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4416
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4418
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4423
    :cond_2f
    if-eqz v25, :cond_30

    .line 4426
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4427
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4429
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4431
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4433
    :cond_30
    if-eqz v26, :cond_32

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_32

    .line 4435
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    .line 4436
    .restart local v27       #temp:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4437
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4439
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-2] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4441
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4444
    .end local v27           #temp:Ljava/lang/String;
    :cond_31
    const-string v5, "+011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 4445
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4447
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4448
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4453
    :cond_32
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing13-1] "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4456
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4458
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "phoneNumber"
    .parameter "context"

    .prologue
    .line 4589
    :try_start_0
    const-string v11, "PhoneNumberUtils"

    const-string v12, "Called assistedDialFromDialPad : "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4592
    :cond_0
    const/4 v11, 0x0

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4761
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 4596
    .restart local p0
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4597
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4599
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4600
    .local v1, ch:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v11

    if-nez v11, :cond_3

    const/16 v11, 0x2b

    if-ne v11, v1, :cond_4

    .line 4602
    :cond_3
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 4613
    const/4 v11, 0x0

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4758
    .end local v1           #ch:C
    :catch_0
    move-exception v2

    .line 4759
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot assist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    const/4 v11, 0x0

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 4606
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #ch:C
    :cond_4
    :try_start_1
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    const/4 v11, 0x0

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_0

    .line 4618
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4619
    .local v4, newPhoneNumber:Ljava/lang/StringBuilder;
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 4620
    .local v10, numberBeginsWithRefCountryIDDPrefix:Z
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 4622
    .local v9, numberBeginsWithOTAIDDPrefix:Z
    sget-boolean v11, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v11, :cond_12

    .line 4624
    sget-boolean v11, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v11, :cond_7

    .line 4627
    const-string v11, "011"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v8, 0x1

    .line 4628
    .local v8, numberBeginsWithNonUSIDDPrefix:Z
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4629
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 4631
    if-eqz v8, :cond_12

    sget v11, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_12

    const/16 v11, 0x31

    if-eq v11, v0, :cond_12

    .line 4633
    const-string v11, "011"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4634
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4636
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[AssistDialingA-1] "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4638
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4627
    .end local v0           #c:C
    .end local v8           #numberBeginsWithNonUSIDDPrefix:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 4645
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4646
    .restart local v0       #c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v11

    if-nez v11, :cond_8

    const/16 v11, 0x2b

    if-ne v11, v0, :cond_12

    .line 4648
    :cond_8
    sget v11, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_12

    sget v11, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_9

    const/16 v11, 0x31

    if-eq v11, v0, :cond_12

    .line 4650
    :cond_9
    const/4 v3, 0x0

    .local v3, iddPrefix:Ljava/lang/String;
    const/4 v5, 0x0

    .line 4651
    .local v5, numberAfterIDDPrefix:Ljava/lang/String;
    if-nez v10, :cond_a

    if-eqz v9, :cond_b

    .line 4653
    :cond_a
    const/4 v11, 0x1

    if-ne v11, v10, :cond_c

    .line 4655
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 4656
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4665
    :cond_b
    :goto_2
    const/16 v11, 0x2b

    if-ne v11, v0, :cond_e

    sget-boolean v11, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v11, :cond_e

    .line 4667
    const/4 v11, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4668
    .local v6, numberAfterPlus:Ljava/lang/String;
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 4669
    .local v7, numberAfterPlusContainsOTACountryCode:Z
    if-eqz v7, :cond_d

    .line 4672
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4673
    const/4 v11, 0x0

    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4675
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[AssistDialingB-2] "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4677
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4660
    .end local v6           #numberAfterPlus:Ljava/lang/String;
    .end local v7           #numberAfterPlusContainsOTACountryCode:Z
    :cond_c
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4661
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 4682
    .restart local v6       #numberAfterPlus:Ljava/lang/String;
    .restart local v7       #numberAfterPlusContainsOTACountryCode:Z
    :cond_d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4683
    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4685
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[AssistDialingB-3] "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4687
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4690
    .end local v6           #numberAfterPlus:Ljava/lang/String;
    .end local v7           #numberAfterPlusContainsOTACountryCode:Z
    :cond_e
    if-nez v10, :cond_f

    if-eqz v9, :cond_12

    .line 4692
    :cond_f
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 4694
    sget-boolean v11, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v11, :cond_10

    .line 4697
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4698
    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "+"

    invoke-virtual {v4, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4700
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[AssistDialingC-1] "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4702
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4708
    :cond_10
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4709
    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4711
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[AssistDialingC-2] "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4713
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4716
    :cond_11
    if-eqz v10, :cond_12

    .line 4719
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4720
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4722
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[AssistDialingC-3] "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4724
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4732
    .end local v0           #c:C
    .end local v3           #iddPrefix:Ljava/lang/String;
    .end local v5           #numberAfterIDDPrefix:Ljava/lang/String;
    :cond_12
    sget-boolean v11, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v11, :cond_14

    .line 4733
    if-eqz v10, :cond_13

    .line 4735
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4736
    const/4 v11, 0x0

    sget-object v12, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, "+"

    invoke-virtual {v4, v11, v12, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4737
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4738
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4739
    :cond_13
    const-string v11, "+011"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 4740
    const-string v11, "+"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4741
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4742
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4743
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4749
    :cond_14
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[AssistDialingD-1] "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    const/4 v11, 0x0

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4752
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 4754
    const/4 v11, 0x1

    sput-boolean v11, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    .line 1197
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1198
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1205
    :goto_0
    return v0

    .line 1199
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1205
    const/4 v0, 0x0

    goto :goto_0

    .line 1200
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1201
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1202
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 1203
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1189
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 1035
    const/4 v2, 0x0

    .line 1036
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1038
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_0

    .line 1039
    const-string v5, ""

    .line 1130
    :goto_0
    return-object v5

    .line 1043
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    .line 1044
    const/4 v2, 0x1

    .line 1047
    :cond_1
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1050
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 1052
    const-string v5, ""

    goto :goto_0

    .line 1055
    :cond_2
    if-eqz v2, :cond_3

    .line 1081
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1082
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1083
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1084
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1085
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1089
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1099
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1108
    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1109
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1123
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 3134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3135
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3137
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3138
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3139
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3140
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 3146
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormat"

    .prologue
    const/4 v7, 0x1

    .line 3178
    move-object v3, p0

    .line 3181
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3185
    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    .line 3187
    const/4 v2, 0x0

    .line 3188
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 3191
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3198
    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3200
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3204
    if-nez v3, :cond_3

    .line 3205
    move-object v3, v1

    .line 3216
    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3217
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3218
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 3221
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_5

    .line 3222
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3225
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3237
    .end local v0           #dialableIndex:I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object p0, v3

    .line 3245
    .end local p0
    :goto_3
    return-object p0

    .line 3207
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    .restart local p0
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3213
    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3230
    .restart local v0       #dialableIndex:I
    :cond_5
    if-gez v0, :cond_6

    .line 3231
    const-string v2, ""

    .line 3233
    :cond_6
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3242
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_7
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static charToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 1225
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1226
    add-int/lit8 v0, p0, -0x30

    .line 1234
    :goto_0
    return v0

    .line 1227
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 1228
    const/16 v0, 0xa

    goto :goto_0

    .line 1229
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 1230
    const/16 v0, 0xb

    goto :goto_0

    .line 1231
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 1232
    const/16 v0, 0xc

    goto :goto_0

    .line 1233
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 1234
    const/16 v0, 0xd

    goto :goto_0

    .line 1236
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v1, 0x0

    .line 3719
    const/4 v0, 0x0

    .line 3720
    .local v0, trunk_prefix_was_read:Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 3721
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 3722
    if-eqz v0, :cond_0

    .line 3737
    :goto_1
    return v1

    .line 3728
    :cond_0
    const/4 v0, 0x1

    .line 3734
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3730
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3737
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 599
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 606
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "a"
    .parameter "b"

    .prologue
    .line 627
    const/4 v7, 0x0

    .line 628
    .local v7, numNonDialableCharsInA:I
    const/4 v8, 0x0

    .line 630
    .local v8, numNonDialableCharsInB:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v11, 0x1

    .line 764
    :goto_0
    return v11

    .line 630
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 633
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 636
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 637
    .local v4, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 638
    .local v5, ib:I
    const/4 v6, 0x0

    .line 640
    .local v6, matched:I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 642
    const/4 v10, 0x0

    .line 644
    .local v10, skipCmp:Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 646
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_6

    .line 647
    add-int/lit8 v4, v4, -0x1

    .line 648
    const/4 v10, 0x1

    .line 649
    add-int/lit8 v7, v7, 0x1

    .line 652
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 654
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_7

    .line 655
    add-int/lit8 v5, v5, -0x1

    .line 656
    const/4 v10, 0x1

    .line 657
    add-int/lit8 v8, v8, 0x1

    .line 660
    :cond_7
    if-nez v10, :cond_5

    .line 661
    if-eq v1, v0, :cond_a

    const/16 v11, 0x4e

    if-eq v0, v11, :cond_a

    const/16 v11, 0x4e

    if-eq v1, v11, :cond_a

    .line 668
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v10           #skipCmp:Z
    :cond_8
    const-string/jumbo v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 670
    .local v9, salesCode:Ljava/lang/String;
    const-string v11, "CHN"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "CHU"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "CHM"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "CTC"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 671
    :cond_9
    const/16 v11, 0xb

    if-ge v6, v11, :cond_c

    .line 672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 673
    .local v2, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 676
    .local v3, effectiveBLen:I
    if-ne v2, v3, :cond_b

    if-ne v2, v6, :cond_b

    .line 677
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 664
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    .end local v9           #salesCode:Ljava/lang/String;
    .restart local v0       #ca:C
    .restart local v1       #cb:C
    .restart local v10       #skipCmp:Z
    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 679
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v10           #skipCmp:Z
    .restart local v2       #effectiveALen:I
    .restart local v3       #effectiveBLen:I
    .restart local v9       #salesCode:Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 682
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_c
    const/16 v11, 0xb

    if-lt v6, v11, :cond_1b

    if-ltz v4, :cond_d

    if-gez v5, :cond_1b

    .line 683
    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 686
    :cond_e
    const-string v11, "FET"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "TWM"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "CWT"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "BRI"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 687
    :cond_f
    const/16 v11, 0x9

    if-ge v6, v11, :cond_11

    .line 688
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 689
    .restart local v2       #effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 692
    .restart local v3       #effectiveBLen:I
    if-ne v2, v3, :cond_10

    if-ne v2, v6, :cond_10

    .line 693
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 695
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 698
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_11
    const/16 v11, 0x9

    if-lt v6, v11, :cond_1b

    if-ltz v4, :cond_12

    if-gez v5, :cond_1b

    .line 699
    :cond_12
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 702
    :cond_13
    const-string v11, "TGY"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 703
    const/16 v11, 0x8

    if-ge v6, v11, :cond_15

    .line 704
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 705
    .restart local v2       #effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 708
    .restart local v3       #effectiveBLen:I
    if-ne v2, v3, :cond_14

    if-ne v2, v6, :cond_14

    .line 709
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 711
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 714
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_15
    const/16 v11, 0x8

    if-lt v6, v11, :cond_1b

    if-ltz v4, :cond_16

    if-gez v5, :cond_1b

    .line 715
    :cond_16
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 718
    :cond_17
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v11

    if-ge v6, v11, :cond_19

    .line 719
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 720
    .restart local v2       #effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 725
    .restart local v3       #effectiveBLen:I
    if-ne v2, v3, :cond_18

    if-ne v2, v6, :cond_18

    .line 726
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 728
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 732
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_19
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v11

    if-lt v6, v11, :cond_1b

    if-ltz v4, :cond_1a

    if-gez v5, :cond_1b

    .line 733
    :cond_1a
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 746
    :cond_1b
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1c

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 749
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 752
    :cond_1c
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1d

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 755
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 758
    :cond_1d
    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1e

    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 761
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 764
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 772
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 780
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 781
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 918
    :goto_0
    return v18

    .line 781
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 782
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 783
    const/16 v18, 0x0

    goto :goto_0

    .line 786
    :cond_3
    const/4 v10, 0x0

    .line 787
    .local v10, forwardIndexA:I
    const/4 v11, 0x0

    .line 789
    .local v11, forwardIndexB:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 791
    .local v6, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 793
    .local v7, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 794
    .local v5, bothHasCountryCallingCode:Z
    const/4 v13, 0x1

    .line 795
    .local v13, okToIgnorePrefix:Z
    const/16 v16, 0x0

    .line 796
    .local v16, trunkPrefixIsOmittedA:Z
    const/16 v17, 0x0

    .line 797
    .local v17, trunkPrefixIsOmittedB:Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 798
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 800
    const/16 v18, 0x0

    goto :goto_0

    .line 804
    :cond_4
    const/4 v13, 0x0

    .line 805
    const/4 v5, 0x1

    .line 806
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 807
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 833
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 834
    .local v3, backwardIndexA:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 835
    .local v4, backwardIndexB:I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 836
    const/4 v14, 0x0

    .line 837
    .local v14, skip_compare:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 838
    .local v8, chA:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 839
    .local v9, chB:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 840
    add-int/lit8 v3, v3, -0x1

    .line 841
    const/4 v14, 0x1

    .line 843
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 844
    add-int/lit8 v4, v4, -0x1

    .line 845
    const/4 v14, 0x1

    .line 848
    :cond_8
    if-nez v14, :cond_6

    .line 849
    if-eq v8, v9, :cond_e

    .line 850
    const/16 v18, 0x0

    goto :goto_0

    .line 808
    .end local v3           #backwardIndexA:I
    .end local v4           #backwardIndexB:I
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 811
    const/4 v13, 0x0

    goto :goto_1

    .line 813
    :cond_a
    if-eqz v6, :cond_c

    .line 814
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 822
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 823
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 816
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 817
    .local v15, tmp:I
    if-ltz v15, :cond_b

    .line 818
    move v10, v15

    .line 819
    const/16 v16, 0x1

    goto :goto_3

    .line 825
    .end local v15           #tmp:I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 826
    .restart local v15       #tmp:I
    if-ltz v15, :cond_5

    .line 827
    move v11, v15

    .line 828
    const/16 v17, 0x1

    goto :goto_1

    .line 852
    .end local v15           #tmp:I
    .restart local v3       #backwardIndexA:I
    .restart local v4       #backwardIndexB:I
    .restart local v8       #chA:C
    .restart local v9       #chB:C
    .restart local v14       #skip_compare:Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 853
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 857
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_f
    if-eqz v13, :cond_17

    .line 858
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 860
    :cond_11
    if-eqz p2, :cond_12

    .line 870
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 872
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 875
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 877
    :cond_15
    if-eqz p2, :cond_16

    .line 878
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 880
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 893
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 894
    .local v12, maybeNamp:Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 895
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 896
    .restart local v8       #chA:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 897
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 898
    const/4 v12, 0x0

    .line 903
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 904
    goto :goto_4

    .line 893
    .end local v8           #chA:C
    .end local v12           #maybeNamp:Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 900
    .restart local v8       #chA:C
    .restart local v12       #maybeNamp:Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 905
    .end local v8           #chA:C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 906
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 907
    .restart local v9       #chB:C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 908
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 909
    const/4 v12, 0x0

    .line 914
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 915
    goto :goto_5

    .line 911
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 918
    .end local v9           #chB:C
    .end local v12           #maybeNamp:Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 484
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 3049
    if-nez p0, :cond_1

    .line 3065
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3052
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3053
    .local v2, len:I
    if-eqz v2, :cond_0

    .line 3057
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 3059
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3060
    aget-char v0, v3, v1

    .line 3062
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 3059
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3065
    .end local v0           #c:C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 494
    if-nez p0, :cond_0

    .line 495
    const/4 v4, 0x0

    .line 510
    :goto_0
    return-object v4

    .line 497
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 498
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 500
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 501
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 503
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    const/16 v0, 0x2c

    .line 508
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const/16 v0, 0x3b

    goto :goto_2

    .line 510
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static convertSMSDestinationAddress(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 17
    .parameter "phoneNumber"
    .parameter "context"
    .parameter "fixedNetwork"

    .prologue
    .line 4828
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 4830
    .local v13, numberLength:I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4831
    .local v1, c:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0x2b

    if-ne v14, v1, :cond_1

    .line 4832
    :cond_0
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SMS Destination Number is OK "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    :try_start_0
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_2

    .line 5022
    .end local p0
    :goto_0
    return-object p0

    .line 4834
    .restart local p0
    :cond_1
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SMS Destination Number might be email address"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4844
    :cond_2
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v14, 0x80

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4846
    .local v8, newPhoneNumber:Ljava/lang/StringBuilder;
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 4847
    .local v12, numberBeginsWithOTAIDDPrefix:Z
    const-string v14, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v11, 0x1

    .line 4848
    .local v11, numberBeginsWithNonUSIDDPrefix:Z
    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4850
    .local v2, debugNumber:Ljava/lang/String;
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SMS Destination numberLength: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " numberBeginsWithOTAIDDPrefix: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " numberBeginsWithNonUSIDDPrefix: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " otaCountryIDDPrefix: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " number : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "**********"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    packed-switch p2, :pswitch_data_0

    .line 4879
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    .line 4881
    .local v4, findIDDLen:I
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v14, :cond_10

    .line 4882
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v14, :cond_6

    .line 4883
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Address Rule in VZW Network"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4884
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 4885
    if-eqz v11, :cond_5

    const/16 v14, 0xb

    if-lt v13, v14, :cond_5

    const/16 v14, 0xb

    if-ne v13, v14, :cond_3

    const/16 v14, 0x31

    if-eq v14, v1, :cond_5

    .line 4886
    :cond_3
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 4887
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4888
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4889
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4847
    .end local v2           #debugNumber:Ljava/lang/String;
    .end local v4           #findIDDLen:I
    .end local v11           #numberBeginsWithNonUSIDDPrefix:Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 4861
    .restart local v2       #debugNumber:Ljava/lang/String;
    .restart local v11       #numberBeginsWithNonUSIDDPrefix:Z
    :pswitch_1
    const/4 v14, 0x1

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4862
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 4863
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5020
    .end local v2           #debugNumber:Ljava/lang/String;
    .end local v8           #newPhoneNumber:Ljava/lang/StringBuilder;
    .end local v11           #numberBeginsWithNonUSIDDPrefix:Z
    .end local v12           #numberBeginsWithOTAIDDPrefix:Z
    :catch_0
    move-exception v3

    .line 5021
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot convert: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4866
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #debugNumber:Ljava/lang/String;
    .restart local v8       #newPhoneNumber:Ljava/lang/StringBuilder;
    .restart local v11       #numberBeginsWithNonUSIDDPrefix:Z
    .restart local v12       #numberBeginsWithOTAIDDPrefix:Z
    :pswitch_2
    const/4 v14, 0x1

    :try_start_2
    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4867
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 4868
    const/4 v14, 0x1

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    goto :goto_2

    .line 4871
    :pswitch_3
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4872
    const/4 v14, 0x1

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    goto :goto_2

    .line 4894
    .restart local v4       #findIDDLen:I
    :cond_5
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4896
    :cond_6
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Address Rule in CDMA Internatinal Roaming"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-nez v14, :cond_7

    const/16 v14, 0x2b

    if-ne v14, v1, :cond_10

    .line 4898
    :cond_7
    const/16 v14, 0xb

    if-lt v13, v14, :cond_10

    const/16 v14, 0xb

    if-ne v13, v14, :cond_8

    const/16 v14, 0x31

    if-eq v14, v1, :cond_10

    .line 4899
    :cond_8
    add-int/lit8 v14, v13, -0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 4900
    .local v7, nanpStr:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, iddPrefix:Ljava/lang/String;
    const/4 v10, 0x0

    .line 4902
    .local v10, numberAfterIDDPrefix:Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 4903
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4904
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 4907
    :cond_9
    if-eqz v12, :cond_c

    .line 4908
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    .line 4909
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 4911
    .local v9, newStr:Ljava/lang/String;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v15, v4, 0xb

    if-ne v14, v15, :cond_a

    .line 4912
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4922
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4913
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 4914
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Found Country Code after IDD"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4916
    const/4 v14, 0x0

    const-string v15, "011"

    invoke-virtual {v8, v14, v4, v15}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4918
    :cond_b
    const-string v14, "PhoneNumberUtils"

    const-string v15, "No Condition"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4925
    .end local v9           #newStr:Ljava/lang/String;
    :cond_c
    const/16 v14, 0x2b

    if-ne v14, v1, :cond_f

    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v14, :cond_f

    .line 4926
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 4928
    .restart local v9       #newStr:Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xc

    if-ne v14, v15, :cond_d

    .line 4929
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4938
    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4930
    :cond_d
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 4931
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4932
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4934
    :cond_e
    const-string v14, "PhoneNumberUtils"

    const-string v15, "1NANP is not matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4935
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4941
    .end local v9           #newStr:Ljava/lang/String;
    :cond_f
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 4942
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4944
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4951
    .end local v5           #iddPrefix:Ljava/lang/String;
    .end local v7           #nanpStr:Ljava/lang/String;
    .end local v10           #numberAfterIDDPrefix:Ljava/lang/String;
    :cond_10
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v14, :cond_1b

    .line 4952
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Address Rule in GSM/UMTS"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4954
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-nez v14, :cond_11

    const/16 v14, 0x2b

    if-ne v14, v1, :cond_1b

    .line 4955
    :cond_11
    const/16 v14, 0xb

    if-lt v13, v14, :cond_1b

    const/16 v14, 0xb

    if-ne v13, v14, :cond_12

    const/16 v14, 0x31

    if-eq v14, v1, :cond_1b

    .line 4956
    :cond_12
    add-int/lit8 v14, v13, -0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 4957
    .restart local v7       #nanpStr:Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #iddPrefix:Ljava/lang/String;
    const/4 v10, 0x0

    .line 4960
    .restart local v10       #numberAfterIDDPrefix:Ljava/lang/String;
    if-eqz v12, :cond_13

    .line 4961
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4962
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 4965
    :cond_13
    if-eqz v12, :cond_16

    .line 4968
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    .line 4969
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 4971
    .restart local v9       #newStr:Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v15, v4, 0xb

    if-ne v14, v15, :cond_14

    .line 4972
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4973
    const/4 v14, 0x0

    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, "+"

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4974
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4975
    :cond_14
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 4976
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4977
    const/4 v14, 0x0

    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, "011"

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4978
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4980
    :cond_15
    const-string v14, "PhoneNumberUtils"

    const-string v15, "No condition is matched in IDD"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4984
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4987
    .end local v9           #newStr:Ljava/lang/String;
    :cond_16
    const/16 v14, 0x2b

    if-ne v14, v1, :cond_1a

    .line 4988
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 4989
    .local v6, iddStr:Ljava/lang/String;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xc

    if-ne v14, v15, :cond_17

    .line 4991
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5004
    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4992
    :cond_17
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 4994
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 4995
    .restart local v9       #newStr:Ljava/lang/String;
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4996
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4997
    .end local v9           #newStr:Ljava/lang/String;
    :cond_18
    const-string v14, "011"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 4998
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5000
    :cond_19
    const-string v14, "PhoneNumberUtils"

    const-string v15, "No condition is matched in \'+\'"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 5008
    .end local v6           #iddStr:Ljava/lang/String;
    :cond_1a
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 5009
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5010
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5011
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 5017
    .end local v5           #iddPrefix:Ljava/lang/String;
    .end local v7           #nanpStr:Ljava/lang/String;
    .end local v10           #numberAfterIDDPrefix:Ljava/lang/String;
    :cond_1b
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Can\'t find any match in this number"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4857
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "phoneNumber"

    .prologue
    .line 300
    if-nez p0, :cond_0

    .line 301
    const/4 v6, 0x0

    .line 326
    :goto_0
    return-object v6

    .line 304
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 305
    .local v3, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 307
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 308
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 310
    .local v0, c:C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 311
    .local v1, digit:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 312
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 315
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, prefix:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 317
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 319
    .end local v4           #prefix:Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 320
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 321
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 339
    if-nez p0, :cond_0

    .line 340
    const/4 v5, 0x0

    .line 362
    :goto_0
    return-object v5

    .line 343
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 344
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 347
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 348
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 349
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 350
    if-eqz v1, :cond_2

    .line 347
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    :cond_2
    const/4 v1, 0x1

    .line 355
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 356
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 357
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    const/4 v6, 0x0

    .line 399
    :goto_0
    return-object v6

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 372
    .local v4, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 375
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .line 377
    .local v2, firstCharPause:Z
    const/4 v6, 0x0

    .line 379
    .local v6, tempstrng:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 380
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 382
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 384
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    if-nez v3, :cond_3

    .line 387
    const/4 v2, 0x1

    .line 394
    .end local v0           #c:C
    :cond_3
    if-nez v2, :cond_4

    .line 395
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 397
    goto :goto_0

    :cond_4
    move-object v6, p1

    .line 399
    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 563
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 579
    :goto_0
    return-object v5

    .line 566
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 570
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 571
    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 573
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 574
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 575
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 579
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .parameter "postDialStr"

    .prologue
    .line 3400
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3401
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3402
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3406
    .end local v0           #c:C
    .end local v1           #index:I
    :goto_1
    return v1

    .line 3400
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3406
    .end local v0           #c:C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1950
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1951
    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .locals 12
    .parameter "text"

    .prologue
    .line 1590
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1593
    .local v3, length:I
    const/16 v9, 0xe

    if-le v3, v9, :cond_1

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    const/4 v9, 0x2

    if-lt v3, v9, :cond_0

    .line 1601
    const/4 v8, 0x5

    .line 1602
    .local v8, state:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, Digits:Ljava/lang/String;
    const/4 v9, 0x6

    if-ge v3, v9, :cond_3

    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1605
    const/4 v5, 0x0

    .line 1606
    .local v5, p:I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 1607
    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2

    .line 1608
    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v5, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1610
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1616
    .end local v5           #p:I
    :cond_3
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_7

    .line 1617
    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x32

    if-ne v9, v10, :cond_4

    .line 1618
    const/4 v8, 0x6

    .line 1658
    :goto_2
    const/4 v9, 0x0

    invoke-interface {p0, v9, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1660
    .local v7, saved:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1661
    .restart local v5       #p:I
    :goto_3
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v5, v9, :cond_f

    .line 1662
    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_e

    .line 1663
    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v5, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3

    .line 1620
    .end local v5           #p:I
    .end local v7           #saved:Ljava/lang/CharSequence;
    :cond_4
    const/4 v9, 0x3

    if-lt v3, v9, :cond_0

    .line 1621
    const-string v9, "0505"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "050-5"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1622
    :cond_5
    const/16 v8, 0xe

    goto :goto_2

    .line 1624
    :cond_6
    const/4 v8, 0x7

    goto :goto_2

    .line 1626
    :cond_7
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2a

    if-ne v9, v10, :cond_a

    .line 1627
    const/4 v9, 0x4

    if-lt v3, v9, :cond_0

    .line 1628
    const-string v9, "*23#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "*22#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "*31#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1629
    :cond_8
    const/4 v9, 0x5

    if-gt v3, v9, :cond_0

    .line 1630
    const/16 v8, 0xa

    goto :goto_2

    .line 1631
    :cond_9
    const-string v9, "*230#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1632
    const/4 v9, 0x6

    if-gt v3, v9, :cond_0

    .line 1633
    const/16 v8, 0xb

    goto :goto_2

    .line 1638
    :cond_a
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_c

    .line 1639
    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-ne v9, v10, :cond_b

    .line 1640
    const/4 v9, 0x3

    if-gt v3, v9, :cond_0

    .line 1641
    const/16 v8, 0x8

    goto/16 :goto_2

    .line 1642
    :cond_b
    const-string v9, "#31#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1643
    const/4 v9, 0x5

    if-gt v3, v9, :cond_0

    .line 1644
    const/16 v8, 0xa

    goto/16 :goto_2

    .line 1649
    :cond_c
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_d

    .line 1650
    const/4 v9, 0x6

    if-lt v3, v9, :cond_0

    const/16 v9, 0xb

    if-gt v3, v9, :cond_0

    .line 1651
    const/16 v8, 0x9

    goto/16 :goto_2

    .line 1653
    :cond_d
    const/4 v9, 0x5

    if-lt v3, v9, :cond_0

    const/16 v9, 0xb

    if-gt v3, v9, :cond_0

    .line 1654
    const/4 v8, 0x5

    goto/16 :goto_2

    .line 1665
    .restart local v5       #p:I
    .restart local v7       #saved:Ljava/lang/CharSequence;
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 1669
    :cond_f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1671
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3003003000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1672
    const/4 v9, 0x0

    const-string v10, "300-300-3000"

    invoke-interface {p0, v9, v3, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1679
    :cond_10
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 1680
    .local v1, dashPositions:[I
    const/4 v4, 0x0

    .line 1683
    .local v4, numDashes:I
    packed-switch v8, :pswitch_data_0

    .line 1792
    :pswitch_0
    const/4 v9, 0x0

    invoke-interface {p0, v9, v3, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    .line 1685
    :pswitch_1
    const/4 v9, 0x3

    if-gt v3, v9, :cond_12

    .line 1686
    const/4 v4, 0x0

    .line 1797
    :cond_11
    :goto_4
    if-eqz v4, :cond_0

    .line 1798
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v4, :cond_0

    .line 1799
    aget v6, v1, v2

    .line 1800
    .local v6, pos:I
    add-int v9, v6, v2

    add-int v10, v6, v2

    const-string v11, "-"

    invoke-interface {p0, v9, v10, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1798
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1688
    .end local v2           #i:I
    .end local v6           #pos:I
    :cond_12
    const/4 v9, 0x7

    if-gt v3, v9, :cond_13

    .line 1689
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1690
    const/4 v4, 0x1

    .line 1691
    goto :goto_4

    .line 1692
    :cond_13
    const/4 v9, 0x7

    if-le v3, v9, :cond_14

    const/16 v9, 0xa

    if-gt v3, v9, :cond_14

    .line 1693
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1694
    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1695
    const/4 v4, 0x2

    .line 1696
    goto :goto_4

    .line 1697
    :cond_14
    const/16 v9, 0xa

    if-le v3, v9, :cond_11

    .line 1698
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1699
    const/4 v9, 0x1

    const/4 v10, 0x7

    aput v10, v1, v9

    .line 1700
    const/4 v4, 0x2

    goto :goto_4

    .line 1704
    :pswitch_2
    const/4 v9, 0x4

    if-gt v3, v9, :cond_15

    .line 1705
    const/4 v4, 0x0

    .line 1706
    goto :goto_4

    .line 1707
    :cond_15
    const/16 v9, 0x8

    if-gt v3, v9, :cond_16

    .line 1708
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1709
    const/4 v4, 0x1

    .line 1710
    goto :goto_4

    .line 1711
    :cond_16
    const/16 v9, 0x8

    if-le v3, v9, :cond_17

    const/16 v9, 0xb

    if-gt v3, v9, :cond_17

    .line 1712
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1713
    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1714
    const/4 v4, 0x2

    .line 1715
    goto :goto_4

    .line 1716
    :cond_17
    const/16 v9, 0xb

    if-le v3, v9, :cond_11

    .line 1717
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1718
    const/4 v9, 0x1

    const/16 v10, 0x8

    aput v10, v1, v9

    .line 1719
    const/4 v4, 0x2

    goto :goto_4

    .line 1723
    :pswitch_3
    const/4 v9, 0x2

    if-gt v3, v9, :cond_18

    .line 1724
    const/4 v4, 0x0

    .line 1725
    goto :goto_4

    .line 1726
    :cond_18
    const/4 v9, 0x6

    if-gt v3, v9, :cond_19

    .line 1727
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1728
    const/4 v4, 0x1

    .line 1729
    goto :goto_4

    .line 1730
    :cond_19
    const/4 v9, 0x6

    if-le v3, v9, :cond_1a

    const/16 v9, 0x9

    if-gt v3, v9, :cond_1a

    .line 1731
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1732
    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1733
    const/4 v4, 0x2

    .line 1734
    goto/16 :goto_4

    .line 1735
    :cond_1a
    const/16 v9, 0x9

    if-le v3, v9, :cond_11

    .line 1736
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1737
    const/4 v9, 0x1

    const/4 v10, 0x6

    aput v10, v1, v9

    .line 1738
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 1742
    :pswitch_4
    const/4 v9, 0x2

    if-gt v3, v9, :cond_1b

    .line 1743
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1745
    :cond_1b
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1746
    const/4 v4, 0x1

    .line 1748
    goto/16 :goto_4

    .line 1750
    :pswitch_5
    const/4 v9, 0x4

    if-gt v3, v9, :cond_1c

    .line 1751
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1753
    :cond_1c
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1754
    const/4 v4, 0x1

    .line 1756
    goto/16 :goto_4

    .line 1758
    :pswitch_6
    const/4 v9, 0x5

    if-gt v3, v9, :cond_1d

    .line 1759
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1761
    :cond_1d
    const/4 v9, 0x0

    const/4 v10, 0x5

    aput v10, v1, v9

    .line 1762
    const/4 v4, 0x1

    .line 1764
    goto/16 :goto_4

    .line 1766
    :pswitch_7
    const/16 v9, 0x8

    if-gt v3, v9, :cond_1e

    .line 1767
    const/4 v9, 0x0

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1768
    const/4 v4, 0x1

    .line 1769
    goto/16 :goto_4

    .line 1770
    :cond_1e
    const/16 v9, 0x8

    if-le v3, v9, :cond_11

    .line 1771
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1772
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 1776
    :pswitch_8
    const/4 v9, 0x3

    if-gt v3, v9, :cond_1f

    .line 1777
    const/4 v4, 0x0

    .line 1778
    goto/16 :goto_4

    .line 1780
    :cond_1f
    const/4 v9, 0x7

    if-gt v3, v9, :cond_20

    .line 1781
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1782
    const/4 v4, 0x1

    .line 1783
    goto/16 :goto_4

    .line 1784
    :cond_20
    const/4 v9, 0x7

    if-le v3, v9, :cond_11

    .line 1785
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1786
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 1683
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 14
    .parameter "text"

    .prologue
    .line 1828
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1829
    .local v4, length:I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1832
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1837
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1840
    .local v9, saved:Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1841
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1846
    const/4 v11, 0x3

    new-array v1, v11, [I

    .line 1847
    .local v1, dashPositions:[I
    const/4 v5, 0x0

    .line 1849
    .local v5, numDashes:I
    const/4 v10, 0x1

    .line 1850
    .local v10, state:I
    const/4 v7, 0x0

    .line 1851
    .local v7, numDigits:I
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v5

    .end local v5           #numDashes:I
    .local v6, numDashes:I
    :goto_1
    if-ge v2, v4, :cond_9

    .line 1852
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1853
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 1906
    :cond_2
    :pswitch_0
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1855
    :pswitch_1
    if-eqz v7, :cond_3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 1856
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1851
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_1

    .line 1871
    :cond_4
    :pswitch_2
    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    const/4 v11, 0x5

    if-eq v10, v11, :cond_5

    const/4 v11, 0x6

    if-ne v10, v11, :cond_6

    .line 1873
    :cond_5
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1875
    :cond_6
    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 1877
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    .line 1882
    :goto_3
    const/4 v10, 0x1

    .line 1883
    add-int/lit8 v7, v7, 0x1

    .line 1884
    goto :goto_2

    .line 1878
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_7
    const/4 v11, 0x4

    if-eq v10, v11, :cond_c

    const/4 v11, 0x3

    if-eq v7, v11, :cond_8

    const/4 v11, 0x6

    if-ne v7, v11, :cond_c

    .line 1880
    :cond_8
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    goto :goto_3

    .line 1887
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1888
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1891
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_4
    const/4 v10, 0x5

    move v5, v6

    .line 1892
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1894
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_5
    const/4 v10, 0x6

    move v5, v6

    .line 1895
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1898
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_6
    if-nez v2, :cond_2

    .line 1900
    const/4 v10, 0x2

    move v5, v6

    .line 1901
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_2

    .line 1911
    .end local v0           #c:C
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_9
    const/4 v11, 0x7

    if-ne v7, v11, :cond_b

    .line 1913
    add-int/lit8 v5, v6, -0x1

    .line 1917
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_a

    .line 1918
    aget v8, v1, v2

    .line 1919
    .local v8, pos:I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1917
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1923
    .end local v8           #pos:I
    :cond_a
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1924
    .local v3, len:I
    :goto_6
    if-lez v3, :cond_0

    .line 1925
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1926
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1927
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3           #len:I
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_b
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_4

    .end local v5           #numDashes:I
    .restart local v0       #c:C
    .restart local v6       #numDashes:I
    :cond_c
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_3

    .line 1853
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 1455
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1456
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1457
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1472
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1473
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1474
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 2017
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2039
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2021
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 2022
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 2024
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2025
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2029
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_1
    if-nez v1, :cond_2

    .line 2031
    const-string v3, "[Exception] return original phonenumber"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2034
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 2036
    const-string v3, "[Exception_2] return original phonenumber"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p0, v1

    .line 2039
    goto :goto_0

    .line 2026
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"
    .parameter "phoneNumberE164"
    .parameter "defaultCountryIso"

    .prologue
    .line 2064
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2065
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2066
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2088
    .end local p0
    :goto_1
    return-object p0

    .line 2065
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2070
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 2072
    .local v5, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 2077
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2078
    .local v2, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2079
    .local v3, regionCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 2082
    move-object p2, v3

    .line 2087
    .end local v2           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3           #regionCode:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2088
    .local v4, result:Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4           #result:Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 2084
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1499
    move v0, p1

    .line 1501
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1502
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1503
    const/4 v0, 0x1

    .line 1516
    :cond_0
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 1532
    :goto_1
    :sswitch_0
    return-void

    .line 1504
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1506
    const/4 v0, 0x2

    goto :goto_0

    .line 1512
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1518
    :sswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1521
    :sswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1529
    :sswitch_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1516
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1988
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1989
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1991
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1992
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1993
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1997
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v1

    .line 1995
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getCurrentOtaCountryIdd(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 3020
    const-string v2, ""

    .line 3022
    .local v2, idd:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3023
    .local v1, enableAssistedDialing:I
    if-ne v1, v3, :cond_2

    :goto_0
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 3025
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3026
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3029
    :cond_0
    if-eqz v0, :cond_1

    .line 3030
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3033
    :cond_1
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentOtaCountryIdd(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    return-object v2

    .line 3023
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3250
    const/4 v0, 0x0

    .line 3251
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3253
    const-string v0, "011"

    .line 3255
    :cond_0
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "number"

    .prologue
    .line 2288
    const/4 v3, 0x0

    .line 2289
    .local v3, clir:I
    const/4 v12, 0x0

    .line 2293
    .local v12, isRoaming:I
    if-nez p0, :cond_1

    const/4 v6, 0x0

    .line 2388
    :cond_0
    :goto_0
    return-object v6

    .line 2296
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 2297
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    .line 2302
    :cond_3
    const-string v20, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 2317
    .local v19, words:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v4, v19, v20

    .line 2321
    .local v4, dialNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2326
    const-string v16, ""

    .line 2328
    .local v16, numbers:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2330
    .local v11, isCdma:Z
    :try_start_0
    const-string/jumbo v20, "phone"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 2331
    .local v17, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v17, :cond_4

    .line 2332
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/4 v11, 0x1

    .line 2338
    .end local v17           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :goto_1
    if-eqz v11, :cond_7

    .line 2339
    const-string/jumbo v20, "ro.ril.ecclist"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2355
    :cond_5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 2358
    const-string v20, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v14, v2

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v14, :cond_9

    aget-object v8, v2, v10

    .line 2359
    .local v8, emergencyNum:Ljava/lang/String;
    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2360
    .local v18, splitStr:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v7, v18, v20

    .line 2361
    .local v7, eccNum:Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    const/16 v20, 0x1

    aget-object v6, v18, v20

    .line 2362
    .local v6, eccCat:Ljava/lang/String;
    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 2358
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2332
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #eccCat:Ljava/lang/String;
    .end local v7           #eccNum:Ljava/lang/String;
    .end local v8           #emergencyNum:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v18           #splitStr:[Ljava/lang/String;
    .restart local v17       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 2334
    .end local v17           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v5

    .line 2335
    .local v5, e:Landroid/os/RemoteException;
    const-string v20, "PhoneNumberUtils"

    const-string/jumbo v21, "phone.getActivePhoneType() failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2341
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_7
    const/4 v9, 0x0

    .line 2342
    .local v9, i:I
    :goto_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ril.ecclist"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2343
    .local v13, key:Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2344
    .local v15, n:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_5

    .line 2346
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2347
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2341
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2361
    .end local v9           #i:I
    .end local v13           #key:Ljava/lang/String;
    .end local v15           #n:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v7       #eccNum:Ljava/lang/String;
    .restart local v8       #emergencyNum:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v14       #len$:I
    .restart local v18       #splitStr:[Ljava/lang/String;
    :cond_8
    const-string v6, ""

    goto :goto_3

    .line 2381
    .end local v7           #eccNum:Ljava/lang/String;
    .end local v8           #emergencyNum:Ljava/lang/String;
    .end local v18           #splitStr:[Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2385
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    :cond_a
    const-string v20, "112"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "911"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 2386
    :cond_b
    const-string v6, ""

    goto/16 :goto_0

    .line 2388
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public static getEmergencyServiceCategoryforkor(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .parameter "number"

    .prologue
    .line 2396
    const-string v16, "112,911,999,000,08,110,118,119,122,113,125,127,111"

    .line 2397
    .local v16, korDefaultECCList:Ljava/lang/String;
    const-string/jumbo v26, "ro.csc.sales_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2400
    .local v22, salesCode:Ljava/lang/String;
    if-nez p0, :cond_0

    const/16 v26, 0x0

    .line 2703
    :goto_0
    return-object v26

    .line 2404
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2412
    .local v5, dialNumber:Ljava/lang/String;
    const-string v20, ""

    .line 2414
    .local v20, numbers:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2415
    .local v11, i:I
    :goto_1
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "ril.ecclist"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2416
    .local v15, key:Ljava/lang/String;
    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2418
    .local v18, n:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_2

    .line 2434
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 2435
    move-object/from16 v20, v16

    .line 2442
    :goto_2
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_3c

    .line 2445
    const-string/jumbo v26, "ril.currentplmn"

    const-string v27, "domestic"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2446
    .local v4, currPlmn:Ljava/lang/String;
    const-string v26, "domestic"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    const-string/jumbo v26, "unknown"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_4

    :cond_1
    const/4 v14, 0x1

    .line 2451
    .local v14, isDomestic:Z
    :goto_3
    const-string v26, "SKT"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 2478
    const-string v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v0, v2

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_4
    move/from16 v0, v17

    if-ge v12, v0, :cond_3c

    aget-object v10, v2, v12

    .line 2479
    .local v10, emergencyNum:Ljava/lang/String;
    const-string v26, "/"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 2480
    .local v25, splitStr:[Ljava/lang/String;
    const/16 v26, 0x0

    aget-object v9, v25, v26

    .line 2481
    .local v9, eccNum:Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    const/16 v26, 0x1

    aget-object v8, v25, v26

    .line 2485
    .local v8, eccCat:Ljava/lang/String;
    :goto_5
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 2486
    const-string v26, "112"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 2489
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2421
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #currPlmn:Ljava/lang/String;
    .end local v8           #eccCat:Ljava/lang/String;
    .end local v9           #eccNum:Ljava/lang/String;
    .end local v10           #emergencyNum:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #isDomestic:Z
    .end local v17           #len$:I
    .end local v25           #splitStr:[Ljava/lang/String;
    :cond_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2423
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2414
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2437
    :cond_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 2446
    .restart local v4       #currPlmn:Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 2481
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v9       #eccNum:Ljava/lang/String;
    .restart local v10       #emergencyNum:Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #isDomestic:Z
    .restart local v17       #len$:I
    .restart local v25       #splitStr:[Ljava/lang/String;
    :cond_5
    const-string v8, ""

    goto :goto_5

    .line 2490
    .restart local v8       #eccCat:Ljava/lang/String;
    :cond_6
    const-string v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2491
    const-string/jumbo v26, "ril.skt119Cat"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2493
    .local v7, ecc119:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_7

    move-object/from16 v26, v7

    .line 2494
    goto/16 :goto_0

    .line 2495
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_8

    move-object/from16 v26, v8

    .line 2496
    goto/16 :goto_0

    .line 2498
    :cond_8
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2500
    .end local v7           #ecc119:Ljava/lang/String;
    :cond_9
    const-string v26, "911"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 2501
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2502
    :cond_a
    const-string v26, "122"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 2503
    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2504
    :cond_b
    const-string v26, "113"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 2505
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_c

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2506
    :cond_d
    const-string v26, "125"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 2507
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_e

    const/16 v26, 0x9

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2508
    :cond_f
    const-string v26, "127"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2509
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_10

    const/16 v26, 0x11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2510
    :cond_11
    const-string v26, "111"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 2511
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_12

    const/16 v26, 0x6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2512
    :cond_13
    const-string v26, "118"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "000"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "08"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "110"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "999"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 2517
    :cond_14
    if-nez v14, :cond_15

    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    :cond_15
    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v26, v8

    .line 2520
    goto/16 :goto_0

    .line 2478
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 2524
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v8           #eccCat:Ljava/lang/String;
    .end local v9           #eccNum:Ljava/lang/String;
    .end local v10           #emergencyNum:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v17           #len$:I
    .end local v25           #splitStr:[Ljava/lang/String;
    :cond_18
    const-string v26, "KTT"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_26

    .line 2537
    const-string v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v0, v2

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    :goto_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_3c

    aget-object v10, v2, v12

    .line 2538
    .restart local v10       #emergencyNum:Ljava/lang/String;
    const-string v26, "/"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 2539
    .restart local v25       #splitStr:[Ljava/lang/String;
    const/16 v26, 0x0

    aget-object v9, v25, v26

    .line 2540
    .restart local v9       #eccNum:Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_19

    const/16 v26, 0x1

    aget-object v8, v25, v26

    .line 2544
    .restart local v8       #eccCat:Ljava/lang/String;
    :goto_7
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1a

    move-object/from16 v26, v8

    .line 2546
    goto/16 :goto_0

    .line 2540
    .end local v8           #eccCat:Ljava/lang/String;
    :cond_19
    const-string v8, ""

    goto :goto_7

    .line 2549
    .restart local v8       #eccCat:Ljava/lang/String;
    :cond_1a
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_25

    .line 2550
    const-string v26, "112"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 2551
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2552
    :cond_1b
    const-string v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 2553
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2554
    :cond_1c
    const-string v26, "911"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 2555
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2556
    :cond_1d
    const-string v26, "122"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 2557
    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2558
    :cond_1e
    const-string v26, "113"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 2559
    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2560
    :cond_1f
    const-string v26, "125"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 2561
    const/16 v26, 0x9

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2562
    :cond_20
    const-string v26, "127"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 2563
    const/16 v26, 0x11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2564
    :cond_21
    const-string v26, "111"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 2565
    const/16 v26, 0x7

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2566
    :cond_22
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_23

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 2568
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2569
    :cond_23
    const-string v26, "118"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_24

    const-string v26, "000"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_24

    const-string v26, "08"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_24

    const-string v26, "110"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_24

    const-string v26, "999"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25

    .line 2574
    :cond_24
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2537
    :cond_25
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 2580
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v8           #eccCat:Ljava/lang/String;
    .end local v9           #eccNum:Ljava/lang/String;
    .end local v10           #emergencyNum:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v17           #len$:I
    .end local v25           #splitStr:[Ljava/lang/String;
    :cond_26
    const-string v26, "LGT"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3c

    .line 2613
    const-string/jumbo v26, "ril.currentplmn"

    const-string v27, "domestic"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2617
    .local v3, currIso:Ljava/lang/String;
    const-string v26, "gsm.sim.state"

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2618
    .local v23, simstate:Ljava/lang/String;
    const-string v26, "gsm.network.type"

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2619
    .local v19, network_type:Ljava/lang/String;
    const-string/jumbo v26, "ril.simtype"

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2620
    .local v24, simtype:Ljava/lang/String;
    const/4 v13, 0x0

    .line 2622
    .local v13, isCdma:Z
    :try_start_0
    const-string/jumbo v26, "phone"

    invoke-static/range {v26 .. v26}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v21

    .line 2623
    .local v21, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v21, :cond_27

    .line 2624
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    const/4 v13, 0x1

    .line 2630
    .end local v21           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_27
    :goto_8
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "isCdma = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2633
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_2c

    const-string v26, "domestic"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2c

    const-string v26, "3"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_28

    const-string v26, "18"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2c

    .line 2634
    :cond_28
    const-string v26, "112"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "122"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "113"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "125"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "127"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "111"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "114"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2b

    .line 2637
    :cond_29
    const-string v26, ""

    goto/16 :goto_0

    .line 2624
    .restart local v21       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_2a
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 2626
    .end local v21           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v6

    .line 2627
    .local v6, e:Landroid/os/RemoteException;
    const-string v26, "PhoneNumberUtils"

    const-string/jumbo v27, "phone.getActivePhoneType() failed"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 2639
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2b
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2641
    :cond_2c
    const-string/jumbo v26, "oversea"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_32

    .line 2642
    const-string v26, "112"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2d

    .line 2643
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2644
    :cond_2d
    const-string v26, "122"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2e

    .line 2645
    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2646
    :cond_2e
    const-string v26, "911"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 2647
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2648
    :cond_2f
    const-string v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_31

    .line 2649
    const-string/jumbo v26, "ril.skt119Cat"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2651
    .restart local v7       #ecc119:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_30

    move-object/from16 v26, v7

    .line 2652
    goto/16 :goto_0

    .line 2654
    :cond_30
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2657
    .end local v7           #ecc119:Ljava/lang/String;
    :cond_31
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2660
    :cond_32
    const-string v26, "112"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_33

    .line 2661
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2662
    :cond_33
    const-string v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_34

    .line 2663
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2664
    :cond_34
    const-string v26, "122"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_35

    .line 2665
    const/16 v26, 0x8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2666
    :cond_35
    const-string v26, "113"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_36

    .line 2667
    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2668
    :cond_36
    const-string v26, "125"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_37

    .line 2669
    const/16 v26, 0x9

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2670
    :cond_37
    const-string v26, "127"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_38

    .line 2671
    const/16 v26, 0x11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2672
    :cond_38
    const-string v26, "111"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_39

    .line 2673
    const/16 v26, 0x6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2674
    :cond_39
    if-eqz v13, :cond_3a

    const-string v26, "114"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3a

    .line 2675
    const-string v26, ""

    goto/16 :goto_0

    .line 2676
    :cond_3a
    const-string v26, "911"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3b

    .line 2677
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .line 2679
    :cond_3b
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2686
    .end local v3           #currIso:Ljava/lang/String;
    .end local v4           #currPlmn:Ljava/lang/String;
    .end local v13           #isCdma:Z
    .end local v14           #isDomestic:Z
    .end local v19           #network_type:Ljava/lang/String;
    .end local v23           #simstate:Ljava/lang/String;
    .end local v24           #simtype:Ljava/lang/String;
    :cond_3c
    const-string/jumbo v26, "ril.currentplmn"

    const-string v27, "domestic"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2689
    .restart local v3       #currIso:Ljava/lang/String;
    const-string v26, "domestic"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3d

    const-string/jumbo v26, "unknown"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_40

    .line 2690
    :cond_3d
    const-string v26, "112"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3e

    const-string v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3e

    const-string v26, "122"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3e

    const-string v26, "113"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3e

    const-string v26, "125"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3e

    const-string v26, "127"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3e

    const-string v26, "111"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3f

    .line 2693
    :cond_3e
    const-string v26, ""

    goto/16 :goto_0

    .line 2695
    :cond_3f
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 2698
    :cond_40
    const-string v26, "000"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "08"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "110"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "999"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "118"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "112"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "911"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_41

    const-string v26, "122"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_42

    .line 2701
    :cond_41
    const-string v26, ""

    goto/16 :goto_0

    .line 2703
    :cond_42
    const/16 v26, 0x0

    goto/16 :goto_0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 1485
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .parameter "country"

    .prologue
    .line 3268
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 3274
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3275
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 3276
    const/4 v2, 0x1

    .line 3282
    :goto_1
    return v2

    .line 3274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3279
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3280
    const/4 v2, 0x2

    goto :goto_1

    .line 3282
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .locals 15
    .parameter "context"

    .prologue
    .line 3744
    const/4 v5, 0x7

    .line 3745
    .local v5, length:I
    const/4 v7, 0x0

    .local v7, mcc:I
    const/4 v8, 0x0

    .line 3746
    .local v8, mnc:I
    const/4 v1, 0x0

    .line 3747
    .local v1, SimOperator:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3749
    .local v6, matchLength:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3751
    .local v2, currSimSlot:I
    const-string v12, "clidigits.preferences_name"

    const/4 v13, 0x3

    invoke-virtual {p0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 3752
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v12, "Clidigits"

    const/4 v13, 0x7

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3754
    .local v0, Clidigits:I
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3757
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 3759
    .local v11, telephonyService:Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v12, "persist.radio.calldefault.simid"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 3761
    .local v9, simSlot:I
    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v12

    if-nez v12, :cond_1

    .line 3860
    .end local v0           #Clidigits:I
    :cond_0
    :goto_0
    return v0

    .line 3766
    .restart local v0       #Clidigits:I
    :cond_1
    if-eqz v11, :cond_2

    .line 3768
    :try_start_0
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3776
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 3778
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 3780
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3781
    const/4 v12, 0x3

    const/4 v13, 0x5

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3788
    sparse-switch v7, :sswitch_data_0

    .line 3850
    const/4 v5, 0x7

    .line 3854
    :goto_2
    if-eq v0, v5, :cond_3

    .line 3856
    const-string v12, "Clidigits"

    invoke-interface {v3, v12, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3857
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    move v0, v5

    .line 3860
    goto :goto_0

    .line 3770
    :catch_0
    move-exception v4

    .line 3771
    .local v4, ex:Landroid/os/RemoteException;
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ITelephony threw RemoteException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3800
    .end local v4           #ex:Landroid/os/RemoteException;
    :sswitch_0
    const/4 v5, 0x7

    .line 3801
    goto :goto_2

    .line 3814
    :sswitch_1
    const/16 v5, 0x8

    .line 3815
    goto :goto_2

    .line 3822
    :sswitch_2
    const/16 v5, 0xa

    .line 3823
    goto :goto_2

    .line 3827
    :sswitch_3
    const/4 v12, 0x1

    if-ne v8, v12, :cond_4

    .line 3828
    const/16 v5, 0x8

    goto :goto_2

    .line 3830
    :cond_4
    const/4 v5, 0x7

    .line 3831
    goto :goto_2

    .line 3835
    :sswitch_4
    const/4 v12, 0x1

    if-eq v8, v12, :cond_5

    const/4 v12, 0x2

    if-eq v8, v12, :cond_5

    const/4 v12, 0x3

    if-ne v8, v12, :cond_6

    .line 3836
    :cond_5
    const/4 v5, 0x7

    goto :goto_2

    .line 3838
    :cond_6
    const/16 v5, 0xa

    .line 3839
    goto :goto_2

    .line 3843
    :sswitch_5
    const/16 v12, 0x32

    if-eq v8, v12, :cond_7

    const/4 v12, 0x5

    if-eq v8, v12, :cond_7

    const/4 v12, 0x3

    if-ne v8, v12, :cond_8

    .line 3844
    :cond_7
    const/4 v5, 0x7

    goto :goto_2

    .line 3846
    :cond_8
    const/16 v5, 0x8

    .line 3847
    goto :goto_2

    .line 3788
    :sswitch_data_0
    .sparse-switch
        0xd6 -> :sswitch_0
        0x14a -> :sswitch_2
        0x14e -> :sswitch_5
        0x152 -> :sswitch_0
        0x16b -> :sswitch_0
        0x170 -> :sswitch_1
        0x172 -> :sswitch_2
        0x176 -> :sswitch_0
        0x2c0 -> :sswitch_1
        0x2c2 -> :sswitch_1
        0x2c4 -> :sswitch_0
        0x2c6 -> :sswitch_1
        0x2c8 -> :sswitch_1
        0x2ca -> :sswitch_0
        0x2cc -> :sswitch_0
        0x2d2 -> :sswitch_0
        0x2d4 -> :sswitch_1
        0x2da -> :sswitch_1
        0x2dc -> :sswitch_2
        0x2de -> :sswitch_4
        0x2e0 -> :sswitch_1
        0x2e4 -> :sswitch_1
        0x2e8 -> :sswitch_0
        0x2ec -> :sswitch_3
    .end sparse-switch
.end method

.method public static getMinMatch()I
    .locals 3

    .prologue
    .line 2173
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2175
    const/4 v0, 0x7

    .line 2181
    .local v0, ret:I
    :goto_0
    return v0

    .line 2177
    .end local v0           #ret:I
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 242
    const/4 v8, 0x0

    .line 244
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 245
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 285
    :cond_1
    :goto_0
    return-object v3

    .line 253
    :cond_2
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 257
    :cond_3
    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 262
    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 265
    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    const-string/jumbo v9, "number"

    .line 272
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 275
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 277
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 281
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v3, v8

    .line 285
    goto :goto_0

    .line 268
    .end local v7           #c:Landroid/database/Cursor;
    :cond_7
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    const-string v9, "data1"

    goto :goto_1

    .line 281
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "useSharedPreference"

    .prologue
    const/4 v2, 0x0

    .line 4767
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 4768
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v1, "otaCountryMccKey"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4770
    .local v8, spOtaCountryMcc:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4771
    .local v0, otacr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4773
    .local v6, c:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    if-nez v8, :cond_1

    .line 4775
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 4776
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4784
    :goto_0
    return-object v6

    .line 4780
    :cond_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 4781
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 956
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 960
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 3356
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3357
    .local v0, delimiterIndex:I
    if-gez v0, :cond_0

    .line 3358
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3360
    :cond_0
    if-gez v0, :cond_1

    .line 3361
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3365
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoiceMailNumberForGlobalMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    .line 2993
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 2994
    .local v1, isRoaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 2995
    .local v3, mdn:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 2996
    .local v2, iso:Ljava/lang/String;
    const-string v4, "gsm.current.phone-type"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2999
    .local v0, currentPhone:I
    if-eqz v1, :cond_1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 3000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3015
    .end local v3           #mdn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 3002
    .restart local v3       #mdn:Ljava/lang/String;
    :cond_1
    const-string v4, "VZW"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-ne v0, v6, :cond_2

    const-string/jumbo v4, "us"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3003
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getCurrentOtaCountryIdd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3005
    :cond_2
    const-string v4, "VZW"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3006
    const-string v3, "*86"

    goto :goto_0

    .line 3008
    :cond_3
    const-string v4, "SPR"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3011
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3015
    const-string v3, "*86"

    goto :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .parameter "a"

    .prologue
    .line 539
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 541
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 542
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 544
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 546
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 547
    add-int/lit8 v4, v0, -0x1

    .line 549
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1136
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 1143
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1146
    .local v1, c:C
    if-nez v1, :cond_1

    .line 1178
    .end local v1           #c:C
    :cond_0
    return-void

    .line 1149
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1158
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1160
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 1168
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1171
    if-eqz v1, :cond_0

    .line 1175
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 969
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 982
    :goto_0
    return-object v5

    .line 971
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 972
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 974
    .local v2, length:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    move v4, v2

    .line 975
    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 977
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 979
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 975
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 982
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 187
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCheckInvalidNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x1

    .line 3893
    if-nez p0, :cond_1

    .line 3905
    :cond_0
    :goto_0
    return v3

    .line 3897
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3898
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3899
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3900
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckValidRange(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3898
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3905
    .end local v0           #c:C
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isCheckValidRange(C)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 3909
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 3919
    :cond_0
    :goto_0
    return v0

    .line 3911
    :cond_1
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    .line 3919
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 3574
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultPlusCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0x31

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    move v0, v1

    .line 441
    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 193
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1264
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1265
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1266
    const/4 v2, 0x0

    .line 1269
    :goto_1
    return v2

    .line 1264
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1269
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 2255
    const/4 v0, 0x0

    .line 2260
    .local v0, cat:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    if-nez v0, :cond_0

    .line 2266
    const/4 v1, 0x0

    .line 2268
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 2726
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "useExactMatch"

    .prologue
    .line 2779
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "number"
    .parameter "useExactMatch"

    .prologue
    .line 2251
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    const/4 v1, 0x0

    .line 1260
    :goto_0
    return v1

    .line 1259
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1260
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 181
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "strNumber"

    .prologue
    const/4 v3, 0x0

    .line 3866
    const/4 v0, 0x0

    .line 3868
    .local v0, bIsDigit:Z
    if-nez p0, :cond_1

    .line 3887
    :cond_0
    :goto_0
    return v3

    .line 3873
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3874
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3875
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3876
    const/4 v0, 0x1

    .line 3881
    .end local v1           #c:C
    :cond_2
    if-nez v0, :cond_0

    .line 3887
    const/4 v3, 0x1

    goto :goto_0

    .line 3873
    .restart local v1       #c:C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 2868
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .parameter "number"
    .parameter "context"
    .parameter "useExactMatch"

    .prologue
    .line 2925
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2927
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 2928
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2935
    .local v0, countryIso:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2930
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2931
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2932
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 3290
    const/4 v2, 0x0

    .line 3291
    .local v2, retVal:Z
    if-eqz p0, :cond_2

    .line 3292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 3293
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3295
    const/4 v2, 0x1

    .line 3296
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3297
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3298
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3299
    const/4 v2, 0x0

    .line 3308
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 3296
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3306
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 205
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1273
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1274
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    const/4 v2, 0x0

    .line 1278
    :goto_1
    return v2

    .line 1273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1278
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 3315
    const/4 v1, 0x0

    .line 3316
    .local v1, retVal:Z
    if-eqz p0, :cond_1

    .line 3317
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3318
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3319
    const/4 v1, 0x1

    .line 3324
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 3322
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 219
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2227
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 2757
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "number"
    .parameter "context"

    .prologue
    .line 2900
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 199
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 230
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 214
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 224
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 3259
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3260
    const/4 v0, 0x1

    .line 3262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 3340
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 2953
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2960
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2964
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2954
    :catch_0
    move-exception v0

    .line 2955
    .local v0, ex:Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isVoiceMailNumberForGlobalMode(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "number"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2972
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2985
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2989
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    .local v0, ex:Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1246
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 528
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3447
    const/4 v2, 0x0

    .line 3448
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 3449
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3451
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 3470
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3476
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 3453
    .restart local v0       #c:C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 3448
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3454
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 3455
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3459
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 3460
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 3461
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3465
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 3466
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 3476
    .end local v0           #c:C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 3451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 3486
    const/4 v2, 0x0

    .line 3487
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 3488
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3490
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 3522
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3526
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 3492
    .restart local v0       #c:C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 3487
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3493
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 3494
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3498
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 3499
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 3500
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3504
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 3505
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3511
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 3512
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3517
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3518
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 3526
    .end local v0           #c:C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 3490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a"
    .parameter "len"

    .prologue
    .line 3534
    const/4 v1, 0x0

    .line 3536
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 3537
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3539
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 3540
    const/4 v1, 0x1

    .line 3536
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3541
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3542
    const/4 v1, 0x0

    .line 3546
    .end local v0           #c:C
    .end local v1           #found:Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 516
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 517
    if-ge p0, p1, :cond_1

    .line 523
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    move p0, p1

    .line 517
    goto :goto_0

    .line 518
    :cond_2
    if-gez p0, :cond_0

    .line 520
    if-ltz p1, :cond_3

    move p0, p1

    .line 521
    goto :goto_0

    .line 523
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1288
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1307
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 2103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2104
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2105
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 2106
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2108
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2109
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 2110
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2105
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2111
    :cond_1
    if-nez v2, :cond_2

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_3

    :cond_2
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_3

    const/16 v5, 0x23

    if-ne v0, v5, :cond_4

    .line 2112
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2113
    :cond_4
    const/16 v5, 0x61

    if-lt v0, v5, :cond_5

    const/16 v5, 0x7a

    if-le v0, v5, :cond_6

    :cond_5
    const/16 v5, 0x41

    if-lt v0, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_0

    .line 2114
    :cond_6
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2117
    .end local v0           #c:C
    .end local v1           #digit:I
    :goto_2
    return-object v5

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"

    .prologue
    .line 1320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1330
    .local v6, numberLenReal:I
    move v5, v6

    .line 1331
    .local v5, numberLenEffective:I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 1332
    .local v3, hasPlus:Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1334
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1359
    :goto_1
    return-object v9

    .line 1331
    .end local v3           #hasPlus:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1336
    .restart local v3       #hasPlus:Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1337
    .local v10, resultLen:I
    const/4 v2, 0x1

    .line 1338
    .local v2, extraBytes:I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1339
    :cond_3
    add-int/2addr v10, v2

    .line 1341
    new-array v9, v10, [B

    .line 1343
    .local v9, result:[B
    const/4 v1, 0x0

    .line 1344
    .local v1, digitCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 1345
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1346
    .local v0, c:C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4

    .line 1344
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1347
    :cond_4
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v11, 0x4

    .line 1348
    .local v11, shift:I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1349
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1347
    .end local v11           #shift:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1353
    .end local v0           #c:C
    :cond_6
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1355
    :cond_7
    const/4 v7, 0x0

    .line 1356
    .local v7, offset:I
    if-eqz p1, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7           #offset:I
    .local v8, offset:I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1357
    .end local v8           #offset:I
    .restart local v7       #offset:I
    :cond_8
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    :cond_9
    const/16 v12, 0x81

    goto :goto_5
.end method

.method private static processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "networkDialStr"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 405
    move-object v2, p1

    .line 411
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, newStr:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 413
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "country_code"

    const-string v8, "011"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, value:Ljava/lang/String;
    const-string/jumbo v5, "toggle_country_name"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 416
    .local v0, isChecked:Z
    if-eqz p1, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2b

    if-ne v8, v9, :cond_0

    move v7, v6

    :cond_0
    and-int/2addr v5, v7

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 420
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDefaultPlusCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 422
    move-object v2, v1

    .line 430
    :cond_1
    :goto_1
    return-object v2

    :cond_2
    move v5, v7

    .line 416
    goto :goto_0

    .line 426
    :cond_3
    const-string v5, "[+]"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 3375
    move-object v2, p0

    .line 3380
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 3383
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3384
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3386
    move-object v2, v1

    .line 3394
    .end local v1           #newStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 3388
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 3390
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1959
    const/4 v0, 0x0

    .line 1960
    .local v0, p:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1961
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1962
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1964
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1967
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 2129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2130
    .local v5, normalizedDigits:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 2131
    .local v1, c:C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 2132
    .local v2, digit:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 2133
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2130
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2135
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2138
    .end local v1           #c:C
    .end local v2           #digit:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12
    .parameter "phoneNumber"
    .parameter "context"

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4471
    const-string v1, "gsm.current.phone-type"

    invoke-static {v1, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    .line 4473
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 4475
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 4478
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 4480
    .local v6, mdn:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v10, :cond_1

    .line 4582
    :cond_0
    :goto_0
    return v9

    .line 4485
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4486
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 4488
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 4489
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 4494
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4498
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 4499
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4500
    .local v7, refmcc:Ljava/lang/String;
    const-string v1, "310 to 316"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v7, "310"

    .end local v7           #refmcc:Ljava/lang/String;
    :cond_2
    :goto_1
    sput-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 4501
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 4502
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 4503
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NANP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v8

    :goto_2
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 4504
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 4505
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    .line 4507
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 4508
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 4510
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 4511
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v10, :cond_a

    .line 4512
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 4519
    :cond_3
    :goto_3
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 4520
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v10, :cond_b

    .line 4521
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 4528
    :cond_4
    :goto_4
    const-string v1, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refCountryMCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4531
    sget v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    if-ne v1, v8, :cond_c

    move v1, v8

    :goto_5
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 4532
    sget v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    if-ne v1, v11, :cond_d

    move v1, v8

    :goto_6
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 4534
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 4536
    sput-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 4537
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_6

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4538
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 4539
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 4541
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4542
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 4543
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 4544
    const-string v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 4547
    :cond_5
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v8

    :goto_7
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 4548
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 4549
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    .line 4550
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "310"

    :goto_8
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 4553
    :cond_6
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 4554
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4557
    :cond_7
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 4558
    const-string v1, "PhoneNumberUtils"

    const-string v2, "OTA country not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4500
    .restart local v7       #refmcc:Ljava/lang/String;
    :cond_8
    const-string v1, "430 to 431"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v7, "430"

    goto/16 :goto_1

    .end local v7           #refmcc:Ljava/lang/String;
    :cond_9
    move v1, v9

    .line 4503
    goto/16 :goto_2

    .line 4515
    :cond_a
    const-string v1, "123"

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    goto/16 :goto_3

    .line 4524
    :cond_b
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    goto/16 :goto_4

    :cond_c
    move v1, v9

    .line 4531
    goto/16 :goto_5

    :cond_d
    move v1, v9

    .line 4532
    goto/16 :goto_6

    :cond_e
    move v1, v9

    .line 4547
    goto :goto_7

    .line 4550
    :cond_f
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "430"

    goto :goto_8

    :cond_10
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    goto :goto_8

    .line 4562
    :cond_11
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " refCountryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryMCC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryIDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryNDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryAreaCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryNationalNumberLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isNANPCountry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryCountryCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isNBPCDSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isGSMRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isCDMARegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isNetRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numberLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryMCC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryIDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryNDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOTANANPCountry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryCountryCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOTANBPCDSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 4582
    goto/16 :goto_0
.end method

.method private static startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .parameter "number"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 4788
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    .line 4789
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "65"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4791
    :cond_0
    const-string v1, "PhoneNumberUtils"

    const-string v2, "length 12 - 7,20,65,90 is detected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 4823
    :goto_0
    return v1

    .line 4796
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-lt v1, v3, :cond_5

    .line 4798
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4799
    const-string v1, "PhoneNumberUtils"

    const-string v2, "US country code is detected with more than 11 digits"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 4800
    goto :goto_0

    .line 4803
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4804
    .local v0, ContryCode:Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 4805
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    .line 4807
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4808
    :goto_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4809
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4810
    const-string v1, "PhoneNumberUtils"

    const-string v2, "contry code is detected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4812
    const/4 v1, 0x1

    goto :goto_0

    .line 4814
    :cond_3
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 4817
    :cond_4
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 4818
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v0           #ContryCode:Landroid/content/ContentResolver;
    :cond_5
    move v1, v6

    .line 4823
    goto :goto_0
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 993
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 999
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 995
    .restart local p0
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 453
    if-nez p0, :cond_0

    .line 454
    const/4 v5, 0x0

    .line 470
    :goto_0
    return-object v5

    .line 456
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 457
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 459
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 460
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 462
    .local v0, c:C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 463
    .local v1, digit:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 464
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 465
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 466
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 470
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 932
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, np:Ljava/lang/String;
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, salesCode:Ljava/lang/String;
    const-string v2, "CHN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    :cond_0
    const/16 v2, 0xb

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 943
    :goto_0
    return-object v2

    .line 937
    :cond_1
    const-string v2, "FET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TWM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CWT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 938
    :cond_2
    const/16 v2, 0x9

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 940
    :cond_3
    const-string v2, "TGY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 941
    const/16 v2, 0x8

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 943
    :cond_4
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 1009
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 1010
    const/16 v0, 0x91

    .line 1013
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 3613
    const/4 v5, 0x0

    .line 3614
    .local v5, state:I
    const/4 v0, 0x0

    .line 3615
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 3616
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 3617
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3618
    .local v1, ch:C
    packed-switch v5, :pswitch_data_0

    .line 3687
    .end local v1           #ch:C
    :cond_0
    :goto_1
    return-object v6

    .line 3620
    .restart local v1       #ch:C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 3616
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3621
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 3622
    :cond_3
    if-ne v1, v8, :cond_4

    .line 3623
    if-eqz p1, :cond_0

    .line 3624
    const/16 v5, 0x8

    goto :goto_2

    .line 3628
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3634
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 3635
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 3636
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3642
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 3643
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3654
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 3655
    .local v4, ret:I
    if-lez v4, :cond_c

    .line 3656
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 3657
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3658
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 3660
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 3661
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 3663
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3665
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3671
    .end local v4           #ret:I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 3672
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 3677
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 3678
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 3618
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 3584
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 3585
    add-int/lit8 v0, p0, -0x30

    .line 3587
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v3, -0x1

    .line 3700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3701
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3702
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3703
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 3704
    add-int/lit8 v3, v1, 0x1

    .line 3709
    .end local v0           #ch:C
    :cond_0
    return v3

    .line 3705
    .restart local v0       #ch:C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
