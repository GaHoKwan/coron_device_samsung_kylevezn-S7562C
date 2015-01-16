.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ClientHandshakeImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .locals 5

    .prologue
    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, host:Ljava/lang/String;
    const/4 v2, -0x1

    .line 572
    .local v2, port:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v4, :cond_2

    .line 573
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 574
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v2

    .line 579
    :goto_0
    if-eqz v1, :cond_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 580
    :cond_0
    const/4 v3, 0x0

    .line 589
    :cond_1
    :goto_1
    return-object v3

    .line 576
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 577
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v2

    goto :goto_0

    .line 583
    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 584
    .local v0, context:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 586
    .local v3, session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v3, :cond_1

    .line 587
    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .restart local v3       #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    goto :goto_1
.end method

.method private renegotiateNewSession()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 110
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 111
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    .line 116
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 117
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 118
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 123
    :goto_1
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 121
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->sendWarningAlert(B)V

    goto :goto_1
.end method

.method private startSession()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 130
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v1, :cond_0

    .line 131
    new-array v0, v5, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aput-object v2, v0, v1

    .line 135
    .local v0, cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 137
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 138
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 139
    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 140
    return-void

    .line 133
    .end local v0           #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .restart local v0       #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    goto :goto_0
.end method

.method private verifyServerCert()V
    .locals 4

    .prologue
    .line 540
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getAuthType(Z)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, authType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 551
    :goto_1
    return-void

    .line 540
    .end local v0           #authType:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 545
    .restart local v0       #authType:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto :goto_1

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, e:Ljava/security/cert/CertificateException;
    const/16 v2, 0x2a

    const-string v3, "Not trusted server certificate"

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method protected makeFinished()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_0

    .line 341
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 342
    .local v0, verify_data:[B
    const-string v1, "client finished"

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 347
    :goto_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 348
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 349
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 351
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 360
    :goto_1
    return-void

    .line 344
    .end local v0           #verify_data:[B
    :cond_0
    const/16 v1, 0x24

    new-array v0, v1, [B

    .line 345
    .restart local v0       #verify_data:[B
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataSSLv3([B[B)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_2

    .line 354
    const-string v1, "server finished"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 358
    :goto_2
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_1

    .line 356
    :cond_2
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_2
.end method

.method processServerHelloDone()V
    .locals 27

    .prologue
    .line 367
    const/4 v9, 0x0

    .line 369
    .local v9, clientKey:Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 371
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    .line 534
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyServerCert()V

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 384
    const/4 v8, 0x0

    .line 386
    .local v8, certs:[Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 387
    .local v4, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->getTypesAsString()[Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, certTypes:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    .line 389
    .local v13, issuers:[Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v15

    .line 390
    .local v15, km:Ljavax/net/ssl/X509KeyManager;
    instance-of v0, v15, Ljavax/net/ssl/X509ExtendedKeyManager;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object v12, v15

    .line 391
    check-cast v12, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 392
    .local v12, ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v7, v13, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v4

    .line 397
    :goto_1
    if-eqz v4, :cond_2

    .line 398
    invoke-virtual {v12, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 407
    .end local v12           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v8, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 408
    new-instance v22, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 409
    invoke-interface {v15, v4}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v9

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 413
    .end local v4           #alias:Ljava/lang/String;
    .end local v7           #certTypes:[Ljava/lang/String;
    .end local v8           #certs:[Ljava/security/cert/X509Certificate;
    .end local v13           #issuers:[Ljavax/security/auth/x500/X500Principal;
    .end local v15           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 418
    :cond_4
    :try_start_0
    const-string v22, "RSA/ECB/PKCS1Padding"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 419
    .local v6, c:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v22

    if-nez v22, :cond_8

    .line 421
    new-instance v10, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 422
    .local v10, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/cert/Certificate;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->verifySignature(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 426
    const/16 v22, 0x33

    const-string v23, "Cannot verify RSA params"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 435
    .end local v6           #c:Ljavax/crypto/Cipher;
    .end local v10           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :catch_0
    move-exception v11

    .line 436
    .local v11, e:Ljava/lang/Exception;
    const/16 v22, 0x50

    const-string v23, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 376
    .end local v11           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v22

    if-nez v22, :cond_1

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_0

    .line 395
    .restart local v4       #alias:Ljava/lang/String;
    .restart local v7       #certTypes:[Ljava/lang/String;
    .restart local v8       #certs:[Ljava/security/cert/X509Certificate;
    .restart local v12       #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    .restart local v13       #issuers:[Ljavax/security/auth/x500/X500Principal;
    .restart local v15       #km:Ljavax/net/ssl/X509KeyManager;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v7, v13, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 401
    .end local v12           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v15, v7, v13, v0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v4

    .line 402
    if-eqz v4, :cond_2

    .line 403
    invoke-interface {v15, v4}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    goto/16 :goto_2

    .line 430
    .end local v4           #alias:Ljava/lang/String;
    .end local v7           #certTypes:[Ljava/lang/String;
    .end local v8           #certs:[Ljava/security/cert/X509Certificate;
    .end local v13           #issuers:[Ljavax/security/auth/x500/X500Principal;
    .end local v15           #km:Ljavax/net/ssl/X509KeyManager;
    .restart local v6       #c:Ljavax/crypto/Cipher;
    :cond_8
    const/16 v22, 0x3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    :goto_3
    const/16 v22, 0x30

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x2

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    :try_start_2
    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    new-instance v22, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v24, v0

    const-string v25, "preMasterSecret"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v22, v0

    const/16 v25, 0x1

    aget-byte v22, v22, v25

    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>([BZ)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    .end local v6           #c:Ljavax/crypto/Cipher;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 511
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerMasterSecret()V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    .line 517
    invoke-interface {v9}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, authType:Ljava/lang/String;
    new-instance v10, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v10, v5}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v10       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    invoke-virtual {v10, v9}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 521
    const-string v22, "RSA"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 529
    :cond_a
    :goto_6
    new-instance v22, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 533
    .end local v5           #authType:Ljava/lang/String;
    .end local v10           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->sendChangeCipherSpec()V

    goto/16 :goto_0

    .line 433
    .restart local v6       #c:Ljavax/crypto/Cipher;
    :cond_c
    const/16 v22, 0x3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 444
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 447
    :catch_1
    move-exception v11

    .line 448
    .restart local v11       #e:Ljava/lang/Exception;
    const/16 v22, 0x50

    const-string v23, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 452
    .end local v6           #c:Ljavax/crypto/Cipher;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 462
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    if-nez v22, :cond_10

    .line 463
    const/16 v22, 0xa

    const-string v23, "Expected ServerKeyExchange"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->isAnonymous()Z

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 467
    const/16 v22, 0x33

    const-string v23, "Wrong type in ServerKeyExchange"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 471
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v22

    if-nez v22, :cond_12

    .line 472
    new-instance v10, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 473
    .restart local v10       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/cert/Certificate;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->verifySignature(Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 477
    const/16 v22, 0x33

    const-string v23, "Cannot verify DH params"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 497
    .end local v10           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :catch_2
    move-exception v11

    .line 498
    .restart local v11       #e:Ljava/lang/Exception;
    const/16 v22, 0x50

    const-string v23, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 481
    .end local v11           #e:Ljava/lang/Exception;
    :cond_12
    :try_start_5
    const-string v22, "DH"

    invoke-static/range {v22 .. v22}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    .line 482
    .local v14, kf:Ljava/security/KeyFactory;
    const-string v22, "DH"

    invoke-static/range {v22 .. v22}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    .line 483
    .local v3, agreement:Ljavax/crypto/KeyAgreement;
    const-string v22, "DH"

    invoke-static/range {v22 .. v22}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v17

    .line 484
    .local v17, kpg:Ljava/security/KeyPairGenerator;
    new-instance v22, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v25, v0

    invoke-direct/range {v22 .. v25}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v20

    .line 487
    .local v20, serverDhPublic:Ljava/security/PublicKey;
    new-instance v21, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 489
    .local v21, spec:Ljavax/crypto/spec/DHParameterSpec;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 490
    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v16

    .line 491
    .local v16, kp:Ljava/security/KeyPair;
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v19

    check-cast v19, Ljavax/crypto/interfaces/DHPublicKey;

    .line 492
    .local v19, pubDhKey:Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v22, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-interface/range {v19 .. v19}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 493
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v18

    .line 494
    .local v18, privDhKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 495
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 496
    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 503
    .end local v3           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v14           #kf:Ljava/security/KeyFactory;
    .end local v16           #kp:Ljava/security/KeyPair;
    .end local v17           #kpg:Ljava/security/KeyPairGenerator;
    .end local v18           #privDhKey:Ljava/security/PrivateKey;
    .end local v19           #pubDhKey:Ljavax/crypto/interfaces/DHPublicKey;
    .end local v20           #serverDhPublic:Ljava/security/PublicKey;
    .end local v21           #spec:Ljavax/crypto/spec/DHParameterSpec;
    :cond_13
    const/16 v22, 0x33

    const-string v23, "Unsupported handshake type"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 524
    .restart local v5       #authType:Ljava/lang/String;
    .restart local v10       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_14
    const-string v22, "DSA"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    goto/16 :goto_6
.end method

.method public receiveChangeCipherSpec()V
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    .line 565
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    .line 566
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_2

    .line 75
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_4

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 100
    :goto_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 101
    :cond_1
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 81
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_0

    .line 87
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 89
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 90
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    .line 95
    :goto_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 96
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    goto :goto_1

    .line 93
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_2

    .line 98
    :cond_6
    const/16 v0, 0x28

    const-string v1, "SSL Session may not be created "

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto :goto_1
.end method

.method public unwrap([B)V
    .locals 11
    .parameter "bytes"

    .prologue
    const/4 v10, 0x1

    const/16 v8, 0x28

    .line 148
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v7, :cond_0

    .line 149
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    .line 150
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    .line 151
    const-string v7, "Error in delegated task"

    invoke-virtual {p0, v8, v7, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 155
    :cond_1
    :goto_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-lez v7, :cond_2

    .line 156
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 159
    :try_start_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    .line 160
    .local v3, handshakeType:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint24()I

    move-result v5

    .line 161
    .local v5, length:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-ge v7, v5, :cond_3

    .line 162
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 320
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :cond_2
    :goto_1
    return-void

    .line 165
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :cond_3
    sparse-switch v3, :sswitch_data_0

    .line 310
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 313
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_1

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :sswitch_0
    :try_start_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->removeFromMarkedPosition()V

    .line 170
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_1

    .line 176
    :cond_4
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 178
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 179
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    goto :goto_0

    .line 183
    :cond_5
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->renegotiateNewSession()V

    goto :goto_0

    .line 187
    :sswitch_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_7

    .line 188
    :cond_6
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto :goto_1

    .line 191
    :cond_7
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 194
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v6

    .line 195
    .local v6, servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, enabled:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v7, v1

    if-ge v4, v7, :cond_c

    .line 198
    aget-object v7, v1, v4

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 207
    :goto_3
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-byte v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    if-eqz v7, :cond_8

    .line 208
    const/16 v7, 0x28

    const-string v8, "Bad server hello compression method"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    .line 213
    :cond_8
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    .line 215
    .local v2, enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v4, 0x0

    :goto_4
    array-length v7, v2

    if-ge v4, v7, :cond_e

    .line 216
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 224
    :goto_5
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_a

    .line 225
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v7, v7

    if-nez v7, :cond_f

    .line 228
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 238
    :cond_9
    :goto_6
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_12

    .line 239
    const-string v7, "server finished"

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 244
    :cond_a
    :goto_7
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v6, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 245
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 246
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 247
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iput-object v7, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 248
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    goto/16 :goto_0

    .line 197
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 202
    :cond_c
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto :goto_3

    .line 215
    .restart local v2       #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 220
    :cond_e
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto :goto_5

    .line 229
    :cond_f
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_10

    .line 230
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    goto :goto_6

    .line 231
    :cond_10
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 232
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto :goto_6

    .line 234
    :cond_11
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 235
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_6

    .line 241
    :cond_12
    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerReferenceVerifyDataSSLv3([B)V

    goto/16 :goto_7

    .line 251
    .end local v1           #enabled:[Ljava/lang/String;
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i:I
    .end local v6           #servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    :sswitch_2
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_13

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v7, :cond_13

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_14

    .line 253
    :cond_13
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 256
    :cond_14
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    goto/16 :goto_0

    .line 259
    :sswitch_3
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_16

    .line 261
    :cond_15
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 264
    :cond_16
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v9, v9, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v9, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_0

    .line 268
    :sswitch_4
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-nez v7, :cond_17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_17

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_18

    .line 270
    :cond_17
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 273
    :cond_18
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    goto/16 :goto_0

    .line 276
    :sswitch_5
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-nez v7, :cond_19

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_1a

    .line 277
    :cond_19
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 280
    :cond_1a
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 281
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v7, :cond_1b

    .line 282
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;

    invoke-direct {v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V

    invoke-direct {v8, v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 289
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    goto/16 :goto_0

    .line 292
    :sswitch_6
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-nez v7, :cond_1c

    .line 293
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    goto/16 :goto_1

    .line 296
    :cond_1c
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 297
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verifyFinished([B)V

    .line 298
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 299
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 300
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 301
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_1d

    .line 302
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->sendChangeCipherSpec()V

    goto/16 :goto_0

    .line 304
    :cond_1d
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 305
    const/4 v7, 0x3

    iput v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unexpectedMessage()V

    .line 332
    return-void
.end method
