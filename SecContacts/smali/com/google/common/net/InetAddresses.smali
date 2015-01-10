.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 124
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "ipString"

    .prologue
    const/4 v7, 0x0

    .line 341
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 342
    .local v2, lastColon:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, initialPart:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, dottedQuad:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 345
    .local v4, quad:[B
    if-nez v4, :cond_0

    .line 346
    const/4 v6, 0x0

    .line 350
    :goto_0
    return-object v6

    .line 348
    :cond_0
    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, penultimate:Ljava/lang/String;
    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, ultimate:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .parameter "ipString"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 189
    .local v0, addr:[B
    if-nez v0, :cond_0

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' is not an IP string literal."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' is extremely broken."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static hash64To32(J)I
    .locals 4
    .parameter "key"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 998
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p0

    const/16 v2, 0x12

    shl-long v2, p0, v2

    add-long p0, v0, v2

    .line 999
    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 1000
    const-wide/16 v0, 0x15

    mul-long/2addr p0, v0

    .line 1001
    const/16 v0, 0xb

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 1002
    const/4 v0, 0x6

    shl-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1003
    const/16 v0, 0x16

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 1004
    long-to-int v0, p0

    return v0
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .parameter "ipString"

    .prologue
    const/4 v4, 0x0

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, hasColon:Z
    const/4 v2, 0x0

    .line 230
    .local v2, hasDot:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 231
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 232
    .local v0, c:C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_1

    .line 233
    const/4 v2, 0x1

    .line 230
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_1
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_4

    .line 235
    if-eqz v2, :cond_3

    .line 256
    .end local v0           #c:C
    :cond_2
    :goto_2
    return-object v4

    .line 238
    .restart local v0       #c:C
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 239
    :cond_4
    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 245
    .end local v0           #c:C
    :cond_5
    if-eqz v1, :cond_7

    .line 246
    if-eqz v2, :cond_6

    .line 247
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    if-eqz p0, :cond_2

    .line 252
    :cond_6
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2

    .line 253
    :cond_7
    if-eqz v2, :cond_2

    .line 254
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .parameter "ipPart"

    .prologue
    .line 366
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, hextet:I
    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 368
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 370
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3
    .parameter "ipPart"

    .prologue
    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, octet:I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 359
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 361
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 8
    .parameter "ipString"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    .line 260
    const-string v5, "\\."

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, address:[Ljava/lang/String;
    array-length v5, v0

    if-eq v5, v7, :cond_1

    move-object v1, v4

    .line 274
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    new-array v1, v7, [B

    .line 267
    .local v1, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 268
    aget-object v5, v0, v3

    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 270
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/NumberFormatException;
    move-object v1, v4

    .line 271
    goto :goto_0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 12
    .parameter "ipString"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 279
    const-string v9, ":"

    const/16 v10, 0xa

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, parts:[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    array-length v9, v2

    const/16 v10, 0x9

    if-le v9, v10, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v8

    .line 286
    :cond_1
    const/4 v7, -0x1

    .line 287
    .local v7, skipIndex:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_3

    .line 288
    aget-object v9, v2, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 289
    if-gez v7, :cond_0

    .line 292
    move v7, v1

    .line 287
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    :cond_3
    if-ltz v7, :cond_7

    .line 300
    move v3, v7

    .line 301
    .local v3, partsHi:I
    array-length v9, v2

    sub-int/2addr v9, v7

    add-int/lit8 v4, v9, -0x1

    .line 302
    .local v4, partsLo:I
    aget-object v9, v2, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    .line 305
    :cond_4
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_0

    .line 317
    :cond_5
    :goto_2
    add-int v9, v3, v4

    rsub-int/lit8 v5, v9, 0x8

    .line 318
    .local v5, partsSkipped:I
    if-ltz v7, :cond_8

    const/4 v9, 0x1

    if-lt v5, v9, :cond_0

    .line 323
    :cond_6
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 325
    .local v6, rawBytes:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_9

    .line 326
    :try_start_0
    aget-object v9, v2, v1

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 311
    .end local v3           #partsHi:I
    .end local v4           #partsLo:I
    .end local v5           #partsSkipped:I
    .end local v6           #rawBytes:Ljava/nio/ByteBuffer;
    :cond_7
    array-length v3, v2

    .line 312
    .restart local v3       #partsHi:I
    const/4 v4, 0x0

    .restart local v4       #partsLo:I
    goto :goto_2

    .line 318
    .restart local v5       #partsSkipped:I
    :cond_8
    if-eqz v5, :cond_6

    goto :goto_0

    .line 328
    .restart local v6       #rawBytes:Ljava/nio/ByteBuffer;
    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_a

    .line 329
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 331
    :cond_a
    move v1, v4

    :goto_5
    if-lez v1, :cond_b

    .line 332
    array-length v9, v2

    sub-int/2addr v9, v1

    aget-object v9, v2, v9

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 331
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 337
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_b
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    goto :goto_0
.end method
