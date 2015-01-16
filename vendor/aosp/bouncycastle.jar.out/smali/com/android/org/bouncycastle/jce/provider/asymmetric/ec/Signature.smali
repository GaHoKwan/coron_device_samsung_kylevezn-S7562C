.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;
.super Lcom/android/org/bouncycastle/jce/provider/DSABase;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$1;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA512;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA384;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA256;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSAnone;,
        Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;)V
    .locals 0
    .parameter "digest"
    .parameter "signer"
    .parameter "encoder"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/DSABase;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 4
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 92
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/interfaces/ECKey;

    if-eqz v1, :cond_0

    .line 94
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 101
    .local v0, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 103
    if-eqz p2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 111
    :goto_0
    return-void

    .line 98
    .end local v0           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .restart local v0       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    invoke-interface {v1, v3, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 54
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_0

    .line 56
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 81
    .local v2, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 82
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 83
    return-void

    .line 62
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 64
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    .line 66
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_1

    .line 68
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 72
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
