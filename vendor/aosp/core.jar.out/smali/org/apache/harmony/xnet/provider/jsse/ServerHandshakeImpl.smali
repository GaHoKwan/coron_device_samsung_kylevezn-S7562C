.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ServerHandshakeImpl.java"


# instance fields
.field private privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 69
    return-void
.end method

.method private findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .locals 1
    .parameter "session_id"

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method private selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .locals 9
    .parameter "clientSuites"

    .prologue
    .line 612
    move-object v0, p1

    .local v0, arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 613
    .local v2, clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    iget-boolean v8, v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v8, :cond_1

    .line 612
    .end local v5           #i$:I
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 616
    :cond_1
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v1

    .local v1, arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v3, v1, v4

    .line 617
    .local v3, enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 622
    .end local v1           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v2           #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v3           #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :goto_2
    return-object v2

    .line 616
    .restart local v1       #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v2       #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v3       #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 622
    .end local v1           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v2           #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v3           #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .restart local v5       #i$:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected makeFinished()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 582
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v3, v3, v2

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 583
    .local v0, isTLS:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 584
    const/16 v3, 0xc

    new-array v1, v3, [B

    .line 585
    .local v1, verify_data:[B
    const-string v3, "server finished"

    invoke-virtual {p0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 590
    :goto_1
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 591
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 592
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_3

    .line 593
    if-eqz v0, :cond_2

    .line 594
    const-string v3, "client finished"

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 598
    :goto_2
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 603
    :goto_3
    return-void

    .line 582
    .end local v0           #isTLS:Z
    .end local v1           #verify_data:[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    .restart local v0       #isTLS:Z
    :cond_1
    const/16 v3, 0x24

    new-array v1, v3, [B

    .line 588
    .restart local v1       #verify_data:[B
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataSSLv3([B[B)V

    goto :goto_1

    .line 596
    :cond_2
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_2

    .line 600
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 601
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_3
.end method

.method processClientHello()V
    .locals 35

    .prologue
    .line 326
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_3

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v3, v3, v21

    if-nez v3, :cond_2

    .line 335
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v5, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    .line 336
    .local v5, server_version:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    .line 339
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v5, v3, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    .line 348
    :cond_0
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 353
    const/16 v30, 0x0

    .line 356
    .local v30, reuseCurrent:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 386
    .end local v30           #reuseCurrent:Z
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_d

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 390
    .local v7, cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_c

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v3, v3, v21

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 415
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 420
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getId()[B

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Ljava/security/SecureRandom;[B[BLorg/apache/harmony/xnet/provider/jsse/CipherSuite;B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 425
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_11

    .line 426
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->sendChangeCipherSpec()V

    .line 574
    .end local v7           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_6
    return-void

    .line 326
    .end local v5           #server_version:[B
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 331
    :cond_3
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_1

    .line 341
    .restart local v5       #server_version:[B
    :cond_4
    const/16 v3, 0x46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROTOCOL VERSION. Unsupported client version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v8, 0x0

    aget-byte v6, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v8, 0x1

    aget-byte v6, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_2

    .line 362
    .restart local v30       #reuseCurrent:Z
    :cond_5
    const/16 v30, 0x1

    .line 366
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v32

    .line 367
    .local v32, sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v32, :cond_7

    invoke-virtual/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v3

    if-nez v3, :cond_a

    .line 368
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    if-nez v3, :cond_9

    .line 369
    if-eqz v30, :cond_8

    .line 371
    const/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->sendWarningAlert(B)V

    .line 372
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 373
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clearMessages()V

    goto :goto_6

    .line 377
    :cond_8
    const/16 v3, 0x28

    const-string v4, "SSL Session may not be created"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    .line 379
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto/16 :goto_3

    .line 381
    :cond_a
    invoke-virtual/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 382
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    goto/16 :goto_3

    .line 390
    .end local v30           #reuseCurrent:Z
    .end local v32           #sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .restart local v7       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 395
    :cond_c
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_5

    .line 399
    .end local v7           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v7

    .line 400
    .restart local v7       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    if-nez v7, :cond_e

    .line 401
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. NO COMMON SUITE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    .line 403
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    if-nez v3, :cond_f

    .line 404
    const/16 v3, 0x28

    const-string v4, "SSL Session may not be created"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    .line 407
    :cond_f
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v3, :cond_10

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 411
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 431
    :cond_11
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v3

    if-nez v3, :cond_17

    .line 432
    const/4 v12, 0x0

    .line 433
    .local v12, certs:[Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v11

    .line 434
    .local v11, certType:Ljava/lang/String;
    if-nez v11, :cond_12

    .line 435
    const/16 v3, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NO CERT TYPE FOR "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    .line 438
    :cond_12
    const/4 v10, 0x0

    .line 439
    .local v10, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v23

    .line 440
    .local v23, km:Ljavax/net/ssl/X509KeyManager;
    move-object/from16 v0, v23

    instance-of v3, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v3, :cond_15

    move-object/from16 v17, v23

    .line 441
    check-cast v17, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 442
    .local v17, ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    if-eqz v3, :cond_14

    .line 443
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v10

    .line 449
    :goto_7
    if-eqz v10, :cond_13

    .line 450
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 459
    .end local v17           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_13
    :goto_8
    if-nez v12, :cond_16

    .line 460
    const/16 v3, 0x28

    const-string v4, "NO SERVER CERTIFICATE FOUND"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_6

    .line 446
    .restart local v17       #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    .line 453
    .end local v17           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v0, v23

    invoke-interface {v0, v11, v3, v4}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v10

    .line 454
    if-eqz v10, :cond_13

    .line 455
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    goto :goto_8

    .line 463
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v12, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 464
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-direct {v3, v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 465
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 470
    .end local v10           #alias:Ljava/lang/String;
    .end local v11           #certType:Ljava/lang/String;
    .end local v12           #certs:[Ljava/security/cert/X509Certificate;
    .end local v23           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_17
    const/16 v31, 0x0

    .line 471
    .local v31, rsakey:Ljava/security/interfaces/RSAPublicKey;
    const/4 v14, 0x0

    .line 472
    .local v14, dhkeySpec:Ljavax/crypto/spec/DHPublicKeySpec;
    const/16 v20, 0x0

    .line 473
    .local v20, hash:[B
    const/16 v26, 0x0

    .line 474
    .local v26, p:Ljava/math/BigInteger;
    const/16 v18, 0x0

    .line 476
    .local v18, g:Ljava/math/BigInteger;
    const/16 v25, 0x0

    .line 479
    .local v25, kpg:Ljava/security/KeyPairGenerator;
    :try_start_0
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v28

    .line 481
    .local v28, pk:Ljava/security/PublicKey;
    invoke-static/range {v28 .. v28}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v3

    const/16 v4, 0x200

    if-le v3, v4, :cond_18

    .line 483
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v25

    .line 484
    const/16 v3, 0x200

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v28           #pk:Ljava/security/PublicKey;
    :cond_18
    :goto_9
    if-eqz v25, :cond_19

    .line 504
    new-instance v15, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    iget-object v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->authType:Ljava/lang/String;

    invoke-direct {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 505
    .local v15, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    const/16 v24, 0x0

    .line 507
    .local v24, kp:Ljava/security/KeyPair;
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v24

    .line 508
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    .line 509
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v31, v0

    .line 515
    :goto_a
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v3

    if-nez v3, :cond_20

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 522
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 527
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    .line 528
    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v15, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->updateSignatureRsa(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 534
    :goto_b
    invoke-virtual {v15}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 542
    :goto_c
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 543
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v6, v8, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    .line 549
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 553
    .end local v15           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v24           #kp:Ljava/security/KeyPair;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 557
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v34

    .line 558
    .local v34, tm:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v34 .. v34}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 563
    .local v9, accepted:[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    .line 565
    .local v29, requestedClientCertTypes:[B
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v0, v29

    invoke-direct {v3, v0, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>([B[Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 571
    .end local v9           #accepted:[Ljava/security/cert/X509Certificate;
    .end local v29           #requestedClientCertTypes:[B
    .end local v34           #tm:Ljavax/net/ssl/X509TrustManager;
    :cond_1b
    :goto_e
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    invoke-direct {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 573
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto/16 :goto_6

    .line 486
    :cond_1c
    :try_start_3
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1d

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1d

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1d

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1d

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1d

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_18

    .line 492
    :cond_1d
    const-string v3, "DH"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v25

    .line 493
    new-instance v27, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->getPrime()[B

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 494
    .end local v26           #p:Ljava/math/BigInteger;
    .local v27, p:Ljava/math/BigInteger;
    :try_start_4
    new-instance v19, Ljava/math/BigInteger;

    const-string v3, "2"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 495
    .end local v18           #g:Ljava/math/BigInteger;
    .local v19, g:Ljava/math/BigInteger;
    :try_start_5
    new-instance v33, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 496
    .local v33, spec:Ljavax/crypto/spec/DHParameterSpec;
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v18, v19

    .end local v19           #g:Ljava/math/BigInteger;
    .restart local v18       #g:Ljava/math/BigInteger;
    move-object/from16 v26, v27

    .end local v27           #p:Ljava/math/BigInteger;
    .restart local v26       #p:Ljava/math/BigInteger;
    goto/16 :goto_9

    .line 498
    .end local v33           #spec:Ljavax/crypto/spec/DHParameterSpec;
    :catch_0
    move-exception v16

    .line 499
    .local v16, e:Ljava/lang/Exception;
    :goto_f
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_9

    .line 511
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v15       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .restart local v24       #kp:Ljava/security/KeyPair;
    :cond_1e
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v13

    check-cast v13, Ljavax/crypto/interfaces/DHPublicKey;

    .line 512
    .local v13, dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    const-string v3, "DH"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v22

    .line 513
    .local v22, kf:Ljava/security/KeyFactory;
    const-class v3, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object v14, v0

    goto/16 :goto_a

    .line 531
    .end local v13           #dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    .end local v22           #kf:Ljava/security/KeyFactory;
    :cond_1f
    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v15, v3, v4, v6}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->updateSignatureDh(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_b

    .line 538
    :catch_1
    move-exception v16

    .line 539
    .restart local v16       #e:Ljava/lang/Exception;
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_c

    .line 536
    .end local v16           #e:Ljava/lang/Exception;
    :cond_20
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_c

    .line 546
    :cond_21
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v3, v0, v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_d

    .line 559
    .end local v15           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v24           #kp:Ljava/security/KeyPair;
    :catch_2
    move-exception v16

    .line 561
    .local v16, e:Ljava/lang/ClassCastException;
    goto/16 :goto_e

    .line 498
    .end local v16           #e:Ljava/lang/ClassCastException;
    .end local v26           #p:Ljava/math/BigInteger;
    .restart local v27       #p:Ljava/math/BigInteger;
    :catch_3
    move-exception v16

    move-object/from16 v26, v27

    .end local v27           #p:Ljava/math/BigInteger;
    .restart local v26       #p:Ljava/math/BigInteger;
    goto :goto_f

    .end local v18           #g:Ljava/math/BigInteger;
    .end local v26           #p:Ljava/math/BigInteger;
    .restart local v19       #g:Ljava/math/BigInteger;
    .restart local v27       #p:Ljava/math/BigInteger;
    :catch_4
    move-exception v16

    move-object/from16 v18, v19

    .end local v19           #g:Ljava/math/BigInteger;
    .restart local v18       #g:Ljava/math/BigInteger;
    move-object/from16 v26, v27

    .end local v27           #p:Ljava/math/BigInteger;
    .restart local v26       #p:Ljava/math/BigInteger;
    goto :goto_f

    .line 563
    :array_0
    .array-data 0x1
        0x1t
        0x2t
    .end array-data
.end method

.method public receiveChangeCipherSpec()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 630
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    .line 652
    :goto_0
    return-void

    .line 634
    :cond_0
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v0, :cond_4

    .line 642
    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    .line 646
    :goto_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v0, v0, v1

    if-ne v0, v1, :cond_5

    .line 647
    const-string v0, "client finished"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_4
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    goto :goto_1

    .line 649
    :cond_5
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_1

    .line 77
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->sendHelloRequest()V

    .line 87
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_0
.end method

.method public unwrap([B)V
    .locals 16
    .parameter "bytes"

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 98
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v12

    if-lez v12, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v7

    .line 104
    .local v7, handshakeType:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint24()I

    move-result v9

    .line 105
    .local v9, length:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v12

    if-ge v12, v9, :cond_2

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 287
    .end local v7           #handshakeType:I
    .end local v9           #length:I
    :cond_1
    :goto_1
    return-void

    .line 110
    .restart local v7       #handshakeType:I
    .restart local v9       #length:I
    :cond_2
    sparse-switch v7, :sswitch_data_0

    .line 278
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    .end local v7           #handshakeType:I
    .end local v9           #length:I
    :catch_0
    move-exception v6

    .line 283
    .local v6, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_1

    .line 112
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #handshakeType:I
    .restart local v9       #length:I
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto :goto_1

    .line 119
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    .line 120
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 121
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v12, :cond_4

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v14, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    move-object/from16 v0, p0

    invoke-direct {v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto/16 :goto_0

    .line 133
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v12, :cond_6

    .line 135
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto :goto_1

    .line 138
    :cond_6
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    if-nez v12, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 141
    const/16 v12, 0x28

    const-string v13, "HANDSHAKE FAILURE: no client certificate received"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 147
    .local v2, authType:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v12, v13, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto/16 :goto_0

    .line 149
    :catch_1
    move-exception v6

    .line 150
    .local v6, e:Ljava/security/cert/CertificateException;
    const/16 v12, 0x2a

    const-string v13, "Untrusted Client Certificate "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 158
    .end local v2           #authType:Ljava/lang/String;
    .end local v6           #e:Ljava/security/cert/CertificateException;
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-eqz v12, :cond_9

    .line 166
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 169
    :cond_9
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2       #authType:Ljava/lang/String;
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 173
    .local v5, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v5, v12}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/cert/Certificate;)V

    .line 174
    const/4 v10, 0x0

    .line 175
    .local v10, md5_hash:[B
    const/4 v11, 0x0

    .line 177
    .local v11, sha_hash:[B
    const-string v12, "RSA"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5withoutLast()[B

    move-result-object v10

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v11

    .line 185
    :cond_a
    :goto_3
    invoke-virtual {v5, v10}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 186
    invoke-virtual {v5, v11}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    invoke-virtual {v5, v12}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->verifySignature([B)Z

    move-result v12

    if-nez v12, :cond_0

    .line 188
    const/16 v12, 0x33

    const-string v13, "DECRYPT ERROR: CERTIFICATE_VERIFY incorrect signature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_b
    const-string v12, "DSA"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v11

    goto :goto_3

    .line 193
    .end local v2           #authType:Ljava/lang/String;
    .end local v5           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v10           #md5_hash:[B
    .end local v11           #sha_hash:[B
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 197
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 200
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    .line 202
    :cond_e
    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v15, 0x1

    aget-byte v12, v12, v15

    const/4 v15, 0x1

    if-ne v12, v15, :cond_11

    const/4 v12, 0x1

    :goto_4
    const/4 v15, 0x1

    invoke-direct {v13, v14, v9, v12, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 205
    const/4 v3, 0x0

    .line 207
    .local v3, c:Ljavax/crypto/Cipher;
    :try_start_4
    const-string v12, "RSA/ECB/PKCS1Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 208
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v12, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    const-string v13, "preMasterSecret"

    const/4 v14, 0x3

    invoke-virtual {v3, v12, v13, v14}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    array-length v12, v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    if-eq v12, v13, :cond_10

    .line 218
    :cond_f
    const/16 v12, 0x30

    new-array v12, v12, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    invoke-virtual {v12, v13}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 257
    .end local v3           #c:Ljavax/crypto/Cipher;
    :cond_10
    :goto_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerMasterSecret()V

    goto/16 :goto_0

    .line 202
    :cond_11
    const/4 v12, 0x0

    goto :goto_4

    .line 222
    .restart local v3       #c:Ljavax/crypto/Cipher;
    :catch_2
    move-exception v6

    .line 223
    .local v6, e:Ljava/lang/Exception;
    const/16 v12, 0x50

    const-string v13, "INTERNAL ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 227
    .end local v3           #c:Ljavax/crypto/Cipher;
    .end local v6           #e:Ljava/lang/Exception;
    :cond_12
    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v15, 0x1

    aget-byte v12, v12, v15

    const/4 v15, 0x1

    if-ne v12, v15, :cond_13

    const/4 v12, 0x1

    :goto_6
    const/4 v15, 0x0

    invoke-direct {v13, v14, v9, v12, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    check-cast v12, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v12}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 227
    :cond_13
    const/4 v12, 0x0

    goto :goto_6

    .line 238
    :cond_14
    :try_start_6
    const-string v12, "DH"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 239
    .local v8, kf:Ljava/security/KeyFactory;
    const-string v12, "DH"

    invoke-static {v12}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    .line 240
    .local v1, agreement:Ljavax/crypto/KeyAgreement;
    new-instance v12, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v13, Ljava/math/BigInteger;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    iget-object v15, v15, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-direct {v13, v14, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v14, v14, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v15, v15, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v14, v15}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 246
    .local v4, clientPublic:Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, v12}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 247
    const/4 v12, 0x1

    invoke-virtual {v1, v4, v12}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 248
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    .line 249
    .end local v1           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v4           #clientPublic:Ljava/security/PublicKey;
    .end local v8           #kf:Ljava/security/KeyFactory;
    :catch_3
    move-exception v6

    .line 250
    .restart local v6       #e:Ljava/lang/Exception;
    const/16 v12, 0x50

    :try_start_7
    const-string v13, "INTERNAL ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 261
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_15

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-nez v12, :cond_15

    .line 262
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 266
    :cond_15
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verifyFinished([B)V

    .line 268
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v13

    iput-object v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 270
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_16

    .line 271
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->sendChangeCipherSpec()V

    goto/16 :goto_0

    .line 273
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 274
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .locals 4
    .parameter "bytes"

    .prologue
    .line 295
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 296
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 298
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    invoke-direct {v2, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 312
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto :goto_0
.end method
