.class public Lcom/android/org/bouncycastle/asn1/ASN1Integer;
.super Lcom/android/org/bouncycastle/asn1/DERInteger;
.source "ASN1Integer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    .line 16
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>([B)V

    .line 11
    return-void
.end method
