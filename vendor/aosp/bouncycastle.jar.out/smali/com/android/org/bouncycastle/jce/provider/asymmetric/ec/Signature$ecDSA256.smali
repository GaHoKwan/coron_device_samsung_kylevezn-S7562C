.class public Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA256;
.super Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecDSA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;-><init>(Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature$1;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/asymmetric/ec/Signature;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;)V

    .line 148
    return-void
.end method
