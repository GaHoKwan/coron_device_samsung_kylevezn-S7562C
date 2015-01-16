.class Lcom/android/org/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ECNamedCurveSpecParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 641
    .local v1, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v2

    .line 643
    .local v2, params:Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    if-nez v2, :cond_0

    .line 645
    new-instance v3, Ljava/io/IOException;

    const-string v4, "object ID not found in EC curve table"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 650
    .end local v1           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v2           #params:Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Ljava/io/IOException;
    throw v0

    .line 654
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 656
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception extracting EC named curve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 648
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v2       #params:Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    :cond_0
    return-object v2
.end method
