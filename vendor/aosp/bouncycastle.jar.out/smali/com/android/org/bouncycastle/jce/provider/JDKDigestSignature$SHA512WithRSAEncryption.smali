.class public Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA512WithRSAEncryption;
.super Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;
.source "JDKDigestSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA512WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 308
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    new-instance v2, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 309
    return-void
.end method