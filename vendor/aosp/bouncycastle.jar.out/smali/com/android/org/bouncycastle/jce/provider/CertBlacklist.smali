.class public Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
.super Ljava/lang/Object;
.source "CertBlacklist.java"


# static fields
.field private static final ANDROID_DATA:Ljava/lang/String;

.field private static final BLACKLIST_ROOT:Ljava/lang/String;

.field public static final DEFAULT_PUBKEY_BLACKLIST_PATH:Ljava/lang/String;

.field public static final DEFAULT_SERIAL_BLACKLIST_PATH:Ljava/lang/String;


# instance fields
.field public final pubkeyBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end field

.field public final serialBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->ANDROID_DATA:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->ANDROID_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->BLACKLIST_ROOT:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->BLACKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pubkey_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->DEFAULT_PUBKEY_BLACKLIST_PATH:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->BLACKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serial_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->DEFAULT_SERIAL_BLACKLIST_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->DEFAULT_PUBKEY_BLACKLIST_PATH:Ljava/lang/String;

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->DEFAULT_SERIAL_BLACKLIST_PATH:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pubkeyBlacklistPath"
    .parameter "serialBlacklistPath"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    .line 53
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    .line 54
    return-void
.end method

.method private static isHex(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 58
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse hex value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPubkeyHash(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pubkey hash length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isHex(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static readBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Could not read blacklist"

    invoke-static {v1, v0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 77
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static final readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/util/HashSet;

    const/16 v6, 0x9

    new-array v6, v6, [[B

    const/4 v7, 0x0

    const-string v8, "410f36363258f30b347d12ce4863e433437806a8"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "e8f91200c65cee16e039b9f883841661635f81c5"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "783333c9687df63377efceddd82efa9101913e8e"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v1, bl:Ljava/util/Set;,"Ljava/util/Set<[B>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, pubkeyBlacklist:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 158
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 159
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPubkeyHash(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to blacklist invalid pubkey "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static final readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;
    .locals 12
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    .line 87
    new-instance v1, Ljava/util/HashSet;

    const/16 v7, 0xd

    new-array v7, v7, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "077a59bcd53459601ca6907267a6dd1c"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "047ecbe9fca55f7bd09eae36e10cae1e"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "d8f35f4eb7872b2dab0692e315382fb0"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "b0b7133ed096f9b56fae91c874bd3ac0"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "9239d5348f40d1695a745470e1f23f43"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "e9028b9578e415dc1a710a2b88154447"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "d7558fdaf5f1105bb213282b707729a3"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/4 v8, 0x7

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "f5c86af36162f13a64f54f6dc9587c06"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0x8

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "392a434f0e07df1f8aa305de34e0c229"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0x9

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "3e75ced46b693021218830ae86a82a71"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0xa

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "864"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0xb

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "827"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    const/16 v8, 0xc

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "31da7"

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v1, bl:Ljava/util/Set;,"Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, serialBlacklist:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 108
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 110
    .local v6, value:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/math/BigInteger;

    const/16 v8, 0x10

    invoke-direct {v7, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tried to blacklist invalid serial number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 118
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .locals 7
    .parameter "publicKey"

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 173
    .local v2, encoded:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    .line 174
    .local v1, digest:Lcom/android/org/bouncycastle/crypto/Digest;
    array-length v6, v2

    invoke-interface {v1, v2, v5, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 175
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v4, v6, [B

    .line 176
    .local v4, out:[B
    invoke-interface {v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 177
    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 178
    .local v0, blacklisted:[B
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    const/4 v5, 0x1

    .line 182
    .end local v0           #blacklisted:[B
    :cond_1
    return v5
.end method

.method public isSerialNumberBlackListed(Ljava/math/BigInteger;)Z
    .locals 1
    .parameter "serial"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
