.class public Lcom/android/mms/util/HangulUtils;
.super Ljava/lang/Object;
.source "HangulUtils.java"


# static fields
.field private static KOREAN_JAUM_CONVERT_MAP:[I

.field private static KOREAN_JAUM_CONVERT_MAP_COUNT:I

.field private static KOREAN_RANGE_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    .line 55
    sput v1, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/util/HangulUtils;->KOREAN_RANGE_MAP:[I

    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
    .end array-data

    .line 57
    :array_1
    .array-data 0x4
        0x0t 0xact 0x0t 0x0t
        0x4ct 0xaet 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x98t 0xb0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe4t 0xb2t 0x0t 0x0t
        0x30t 0xb5t 0x0t 0x0t
        0x7ct 0xb7t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc8t 0xb9t 0x0t 0x0t
        0x14t 0xbct 0x0t 0x0t
        0x60t 0xbet 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xact 0xc0t 0x0t 0x0t
        0xf8t 0xc2t 0x0t 0x0t
        0x44t 0xc5t 0x0t 0x0t
        0x90t 0xc7t 0x0t 0x0t
        0xdct 0xc9t 0x0t 0x0t
        0x28t 0xcct 0x0t 0x0t
        0x74t 0xcet 0x0t 0x0t
        0xc0t 0xd0t 0x0t 0x0t
        0xct 0xd3t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsonants(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "source"

    .prologue
    const v8, 0xac00

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, position:I
    const/4 v1, 0x0

    .line 94
    .local v1, consonantLength:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 97
    .local v5, stringLength:I
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 100
    .local v0, character:I
    const/16 v6, 0x20

    if-ne v0, v6, :cond_1

    .line 132
    :goto_1
    if-lt v3, v5, :cond_4

    .line 134
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 112
    :cond_1
    if-lt v0, v8, :cond_3

    .line 116
    sub-int v6, v0, v8

    div-int/lit16 v6, v6, 0x24c

    add-int/lit16 v0, v6, 0x1100

    .line 130
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_3
    const/16 v6, 0x3131

    if-lt v0, v6, :cond_2

    .line 120
    add-int/lit16 v6, v0, -0x3131

    sget v7, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    if-ge v6, v7, :cond_0

    .line 124
    sget-object v6, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v7, v0, -0x3131

    aget v0, v6, v7

    .line 125
    if-nez v0, :cond_2

    goto :goto_2

    :cond_4
    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_0
.end method

.method public static isIncludingKorean(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v2

    .line 142
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 145
    .local v0, character:I
    const/16 v3, 0x1100

    if-lt v0, v3, :cond_4

    const/16 v3, 0x1112

    if-le v0, v3, :cond_2

    const/16 v3, 0x3131

    if-lt v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x314e

    if-le v0, v3, :cond_3

    const v3, 0xac00

    if-lt v0, v3, :cond_4

    :cond_3
    const v3, 0xd7a3

    if-gt v0, v3, :cond_4

    .line 148
    const/4 v2, 0x1

    goto :goto_0

    .line 142
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
