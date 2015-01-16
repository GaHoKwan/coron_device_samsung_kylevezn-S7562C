.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# static fields
.field private static final blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 49
    .parameter "certPath"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 50
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/security/cert/PKIXParameters;

    if-nez v4, :cond_0

    .line 52
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parameters must be a "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " instance."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_0
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v4, :cond_1

    move-object/from16 v21, p2

    .line 59
    check-cast v21, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 65
    .end local p2
    .local v21, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :goto_0
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_2

    .line 67
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    .end local v21           #paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local p2
    :cond_1
    check-cast p2, Ljava/security/cert/PKIXParameters;

    .end local p2
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v21

    .restart local v21       #paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v29

    .line 79
    .local v29, certs:Ljava/util/List;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v40

    .line 81
    .local v40, n:I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Certification path is empty."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 87
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/X509Certificate;

    .line 89
    .local v27, cert:Ljava/security/cert/X509Certificate;
    if-eqz v27, :cond_4

    .line 90
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v44

    .line 91
    .local v44, serial:Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isSerialNumberBlackListed(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation of serial 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 94
    .local v39, message:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 96
    .local v32, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 110
    .end local v32           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v39           #message:Ljava/lang/String;
    .end local v44           #serial:Ljava/math/BigInteger;
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v22

    .line 118
    .local v22, userInitialPolicySet:Ljava/util/Set;
    :try_start_0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v45

    .line 126
    .local v45, trust:Ljava/security/cert/TrustAnchor;
    if-nez v45, :cond_5

    .line 128
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Trust anchor for certification path not found."

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 121
    .end local v45           #trust:Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v32

    .line 123
    .restart local v32       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 135
    .end local v32           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v45       #trust:Ljava/security/cert/TrustAnchor;
    :cond_5
    const/4 v9, 0x0

    .line 146
    .local v9, index:I
    add-int/lit8 v4, v40, 0x1

    new-array v0, v4, [Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 147
    .local v18, policyNodes:[Ljava/util/List;
    const/16 v37, 0x0

    .local v37, j:I
    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v37

    if-ge v0, v4, :cond_6

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v18, v37

    .line 147
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 152
    :cond_6
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v6, policySet:Ljava/util/Set;
    const-string v4, "2.5.29.32.0"

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "2.5.29.32.0"

    .end local v9           #index:I
    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 159
    .local v3, validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v41, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 169
    .local v41, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 171
    .local v16, acceptablePolicies:Ljava/util/Set;
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 173
    const/16 v34, 0x0

    .line 185
    .local v34, explicitPolicy:I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 187
    const/16 v19, 0x0

    .line 199
    .local v19, inhibitAnyPolicy:I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 201
    const/16 v43, 0x0

    .line 214
    .local v43, policyMapping:I
    :goto_4
    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v13

    .line 217
    .local v13, sign:Ljava/security/cert/X509Certificate;
    if-eqz v13, :cond_a

    .line 219
    :try_start_1
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 220
    .local v12, workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v13}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 234
    .local v10, workingPublicKey:Ljava/security/PublicKey;
    :goto_5
    const/16 v46, 0x0

    .line 237
    .local v46, workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_2
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v46

    .line 244
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v47

    .line 245
    .local v47, workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v48

    .line 250
    .local v48, workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    move/from16 v38, v40

    .line 256
    .local v38, maxPathLength:I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v4}, Lcom/android/org/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 259
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Target certificate in certification path does not match targetConstraints."

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v8}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 177
    .end local v10           #workingPublicKey:Ljava/security/PublicKey;
    .end local v12           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .end local v13           #sign:Ljava/security/cert/X509Certificate;
    .end local v19           #inhibitAnyPolicy:I
    .end local v34           #explicitPolicy:I
    .end local v38           #maxPathLength:I
    .end local v43           #policyMapping:I
    .end local v46           #workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v47           #workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v48           #workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_7
    add-int/lit8 v34, v40, 0x1

    .restart local v34       #explicitPolicy:I
    goto :goto_2

    .line 191
    :cond_8
    add-int/lit8 v19, v40, 0x1

    .restart local v19       #inhibitAnyPolicy:I
    goto :goto_3

    .line 205
    :cond_9
    add-int/lit8 v43, v40, 0x1

    .restart local v43       #policyMapping:I
    goto :goto_4

    .line 224
    .restart local v13       #sign:Ljava/security/cert/X509Certificate;
    :cond_a
    :try_start_3
    new-instance v12, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v12       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v45 .. v45}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .restart local v10       #workingPublicKey:Ljava/security/PublicKey;
    goto :goto_5

    .line 228
    .end local v10           #workingPublicKey:Ljava/security/PublicKey;
    .end local v12           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    :catch_1
    move-exception v33

    .line 230
    .local v33, ex:Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Subject of trust anchor could not be (re)encoded."

    const/4 v7, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 239
    .end local v33           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v10       #workingPublicKey:Ljava/security/PublicKey;
    .restart local v12       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .restart local v46       #workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_2
    move-exception v32

    .line 241
    .local v32, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v7}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 266
    .end local v32           #e:Ljava/security/cert/CertPathValidatorException;
    .restart local v38       #maxPathLength:I
    .restart local v47       #workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v48       #workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v42

    .line 267
    .local v42, pathCheckers:Ljava/util/List;
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 268
    .local v28, certIter:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 270
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_6

    .line 273
    :cond_c
    const/16 v27, 0x0

    .line 275
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    .restart local v9       #index:I
    :goto_7
    if-ltz v9, :cond_12

    .line 278
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation of public key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 281
    .restart local v39       #message:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    new-instance v32, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 283
    .local v32, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 291
    .end local v32           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v39           #message:Ljava/lang/String;
    :cond_d
    sub-int v35, v40, v9

    .line 299
    .local v35, i:I
    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #cert:Ljava/security/cert/X509Certificate;
    check-cast v27, Ljava/security/cert/X509Certificate;

    .line 300
    .restart local v27       #cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v9, v4, :cond_e

    const/4 v11, 0x1

    .local v11, verificationAlreadyPerformed:Z
    :goto_8
    move-object/from16 v7, p1

    move-object/from16 v8, v21

    .line 306
    invoke-static/range {v7 .. v13}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    .line 309
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v14, p1

    move v15, v9

    move-object/from16 v17, v3

    .line 311
    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 314
    move-object/from16 v0, p1

    invoke-static {v0, v9, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 316
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v3, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 322
    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_10

    .line 324
    if-eqz v27, :cond_f

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 326
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Version 1 certificates can\'t be used as CA ones."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 300
    .end local v11           #verificationAlreadyPerformed:Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_8

    .line 330
    .restart local v11       #verificationAlreadyPerformed:Z
    :cond_f
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 332
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v43

    invoke-static {v0, v9, v1, v3, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 335
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 338
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 339
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v43

    .line 340
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v19

    .line 345
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 346
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v43

    .line 349
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v19

    .line 352
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 355
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v38

    .line 358
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v9, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v38

    .line 361
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 363
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    .line 364
    .local v30, criticalExtensions:Ljava/util/Set;
    if-eqz v30, :cond_11

    .line 366
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 369
    .end local v30           #criticalExtensions:Ljava/util/Set;
    .local v31, criticalExtensions:Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 370
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 371
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 372
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 373
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 374
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 375
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 376
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 377
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 378
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    .line 386
    .end local v31           #criticalExtensions:Ljava/util/Set;
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v42

    invoke-static {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 389
    move-object/from16 v13, v27

    .line 392
    invoke-static {v13}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 397
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v10

    .line 404
    invoke-static {v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v46

    .line 406
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v47

    .line 408
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v48

    .line 275
    .end local v30           #criticalExtensions:Ljava/util/Set;
    :cond_10
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_7

    .line 382
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    :cond_11
    new-instance v30, Ljava/util/HashSet;

    .end local v30           #criticalExtensions:Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .restart local v30       #criticalExtensions:Ljava/util/Set;
    goto :goto_9

    .line 399
    :catch_3
    move-exception v32

    .line 401
    .local v32, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Next working key could not be retrieved."

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v4, v5, v0, v1, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 416
    .end local v11           #verificationAlreadyPerformed:Z
    .end local v30           #criticalExtensions:Ljava/util/Set;
    .end local v32           #e:Ljava/security/cert/CertPathValidatorException;
    .end local v35           #i:I
    :cond_12
    move/from16 v0, v34

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v34

    .line 418
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-static {v0, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v34

    .line 427
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v30

    .line 429
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    if-eqz v30, :cond_14

    .line 431
    new-instance v31, Ljava/util/HashSet;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 433
    .end local v30           #criticalExtensions:Ljava/util/Set;
    .restart local v31       #criticalExtensions:Ljava/util/Set;
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 434
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 435
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 436
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 437
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 438
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 439
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 441
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 442
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v30, v31

    .line 450
    .end local v31           #criticalExtensions:Ljava/util/Set;
    .restart local v30       #criticalExtensions:Ljava/util/Set;
    :goto_a
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    invoke-static {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 452
    add-int/lit8 v23, v9, 0x1

    move-object/from16 v20, p1

    move-object/from16 v24, v18

    move-object/from16 v25, v3

    move-object/from16 v26, v16

    invoke-static/range {v20 .. v26}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v36

    .line 455
    .local v36, intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-gtz v34, :cond_13

    if-eqz v36, :cond_15

    .line 457
    :cond_13
    new-instance v4, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v45

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1, v5}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v4

    .line 447
    .end local v36           #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_14
    new-instance v30, Ljava/util/HashSet;

    .end local v30           #criticalExtensions:Ljava/util/Set;
    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .restart local v30       #criticalExtensions:Ljava/util/Set;
    goto :goto_a

    .line 460
    .restart local v36       #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_15
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Path processing failed on policy."

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v7, v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method
