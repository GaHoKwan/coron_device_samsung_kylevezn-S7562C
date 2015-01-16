.class public Lcom/android/org/bouncycastle/asn1/x500/RDN;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "RDN.java"


# instance fields
.field private values:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .parameter "oid"
    .parameter "value"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 45
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 46
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 48
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .parameter "attrTAndV"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 54
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .parameter "aAndVs"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 62
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 32
    .end local p0
    :goto_0
    return-object p0

    .line 27
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    move-object p0, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .locals 3

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    .line 83
    .local v1, tmp:[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v1
.end method

.method public isMultiValued()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
