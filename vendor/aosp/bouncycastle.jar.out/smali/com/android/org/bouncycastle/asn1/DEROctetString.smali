.class public Lcom/android/org/bouncycastle/asn1/DEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "string"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 15
    return-void
.end method

.method static encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V
    .locals 1
    .parameter "derOut"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 36
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 28
    return-void
.end method
