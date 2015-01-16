.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Null;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Null.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 25
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "NULL"

    return-object v0
.end method
