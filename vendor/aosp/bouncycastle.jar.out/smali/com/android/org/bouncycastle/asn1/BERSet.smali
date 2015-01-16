.class public Lcom/android/org/bouncycastle/asn1/BERSet;
.super Lcom/android/org/bouncycastle/asn1/DERSet;
.source "BERSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .locals 0
    .parameter "v"
    .parameter "needsSorting"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 23
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2

    .line 52
    :cond_0
    const/16 v1, 0x31

    invoke-virtual {p1, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 53
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 56
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/FilterOutputStream;->write(I)V

    .line 62
    invoke-virtual {p1, v2}, Ljava/io/FilterOutputStream;->write(I)V

    .line 68
    .end local v0           #e:Ljava/util/Enumeration;
    :goto_1
    return-void

    .line 66
    :cond_2
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_1
.end method
