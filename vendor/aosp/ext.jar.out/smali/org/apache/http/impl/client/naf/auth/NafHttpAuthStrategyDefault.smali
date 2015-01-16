.class public Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;
.super Ljava/lang/Object;
.source "NafHttpAuthStrategyDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategy;


# instance fields
.field private final androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

.field private final gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

.field private final gbaSupportPermissionRequestChecker:Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

.field private isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private final requestUpdater:Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;

.field private final uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "predefinedUserAgentHeaderValue"

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "NafHttpAuthStrategyDefault()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->initSharedResources()V

    .line 97
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getGbaSupportPermissionRequestChecker()Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaSupportPermissionRequestChecker:Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

    .line 99
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getAndroidContextProvider()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    .line 103
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-static {v0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->init(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)V

    .line 105
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getGbaAuthProvider()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    .line 107
    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;

    new-instance v1, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;

    invoke-direct {v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;-><init>()V

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;-><init>([BLorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    .line 110
    new-instance v0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterDefault;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterDefault;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->requestUpdater:Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;

    .line 111
    return-void
.end method

.method private initSharedResources()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instance()Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->init()V

    .line 120
    return-void
.end method


# virtual methods
.method getAndroidContextProvider()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v0

    .line 130
    .local v0, contextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    return-object v0
.end method

.method getEntityBodyFromRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 2
    .parameter "httpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 661
    .local v0, contentExtractor:Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;->extractContent()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    .line 665
    .local v1, httpRequestContent:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    return-object v1
.end method

.method getEntityBodyFromResponse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 2
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    new-instance v0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 681
    .local v0, httpContentExtractor:Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;->extractContent()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    .line 685
    .local v1, httpResponseContent:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    return-object v1
.end method

.method getGbaAuthData(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 6
    .parameter "gbaTypeSupportedByGbaService"
    .parameter "nafFqdn"
    .parameter "uaSecurityProtocolId"

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 427
    .local v2, gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v3, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 438
    :goto_0
    return-object v2

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "During attempt to use GBA service (Keys) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 432
    .end local v0           #e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    :catch_1
    move-exception v1

    .line 433
    .local v1, exNoKeys:Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GBA keys are not available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getGbaAuthProvider()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .locals 1

    .prologue
    .line 694
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-result-object v0

    .line 695
    .local v0, authProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    return-object v0
.end method

.method getGbaSupportPermissionRequestChecker()Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;-><init>()V

    .line 115
    .local v0, checker:Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;
    return-object v0
.end method

.method getPasswordBase64(Lorg/apache/http/impl/client/naf/gba/GbaAuthData;)Ljava/lang/String;
    .locals 3
    .parameter "gbaAuthData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->getKsNaf()[B

    move-result-object v0

    .line 458
    .local v0, ksNaf:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, passwordStr:Ljava/lang/String;
    return-object v1
.end method

.method getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 5

    .prologue
    .line 405
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 408
    .local v1, gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During attempt to use GBA service (Type): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isItPossibleToSupportGba()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 143
    .local v0, gbaSupportIsPossible:Ljava/lang/Boolean;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   cached value : gbaSupportIsPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 145
    if-nez v0, :cond_0

    .line 146
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->isThisContextOfGbaService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The current context is a context of GBA service."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 174
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isGbaSupportPossibleHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The current context is NOT a context of GBA service."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaSupportPermissionRequestChecker:Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v1, v2}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;->isCurrentProcessAllowedToUseGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The USE_GBA_SERVICE permission request is in place."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   The GBA permission wasn\'t requested for this process."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 166
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_3
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   androidApplicationContext == null"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method parserFirstNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
    .locals 7
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
        }
    .end annotation

    .prologue
    .line 621
    const-string v4, "WWW-Authenticate"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 623
    .local v1, wwwAuthenticateHeader:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, wwwAuthenticateHeaderValue:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 627
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 628
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 638
    :cond_0
    invoke-static {}, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->createSynchronizedWwwAuthenticateHeaderParser()Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;

    move-result-object v2

    .line 640
    .local v2, wwwAuthenticateHeaderParser:Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;
    invoke-interface {v2, v3}, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;

    move-result-object v0

    .line 643
    .local v0, parsedWwwAuthenticateHeader:Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parserFirstNafResponseHeaders()#completed   parsedWwwAuthenticateHeader="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 645
    return-object v0
.end method

.method parserSecondNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;
    .locals 5
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
        }
    .end annotation

    .prologue
    .line 590
    const-string v4, "Authentication-Info"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 593
    .local v0, authenticationInfoHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 594
    :cond_0
    const/4 v3, 0x0

    .line 606
    :goto_0
    return-object v3

    .line 597
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, authenticationInfoValue:Ljava/lang/String;
    invoke-static {}, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->createSynchronizedAuthenticationInfoHeaderParser()Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;

    move-result-object v1

    .line 601
    .local v1, authenticationInfoParser:Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;
    invoke-interface {v1, v2}, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;

    move-result-object v3

    .line 606
    .local v3, parsedAuthenticationInfoHeader:Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;
    goto :goto_0
.end method

.method public performAuthExecution(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "httpRequestExecutor"
    .parameter "nafRequestWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;,
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v2, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;-><init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V

    .line 200
    .local v2, nafRequestExecutorWrapper:Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->performAuthExecutionUnsafe(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/impl/client/naf/realm/NafRealmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/impl/client/naf/AuthInfoException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 223
    .local v1, httpResponse:Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->promiseToReleaseInNearTime()V

    return-object v1

    .line 207
    .end local v1           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v4}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->promiseToReleaseInNearTime()V

    throw v3

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .local v0, e:Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
    :try_start_2
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 211
    .end local v0           #e:Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
    :catch_2
    move-exception v0

    .line 212
    .local v0, e:Lorg/apache/http/impl/client/naf/realm/NafRealmException;
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 213
    .end local v0           #e:Lorg/apache/http/impl/client/naf/realm/NafRealmException;
    :catch_3
    move-exception v0

    .line 214
    .local v0, e:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 215
    .end local v0           #e:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
    :catch_4
    move-exception v0

    .line 216
    .local v0, e:Lorg/apache/http/impl/client/naf/AuthInfoException;
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 217
    .end local v0           #e:Lorg/apache/http/impl/client/naf/AuthInfoException;
    :catch_5
    move-exception v0

    .line 218
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 219
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_6
    move-exception v0

    .line 220
    .local v0, e:Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
    new-instance v3, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method performAuthExecutionUnsafe(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 40
    .parameter "httpRequestExecutor"
    .parameter "nafRequestWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;,
            Lorg/apache/http/impl/client/naf/realm/NafRealmException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;,
            Lorg/apache/http/impl/client/naf/AuthInfoException;,
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->isItPossibleToSupportGba()Z

    move-result v26

    .line 252
    .local v26, isGbaEnabled:Z
    if-eqz v26, :cond_5

    .line 253
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->enableRedirectionHandlingForGba()V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v24

    .line 256
    .local v24, gbaTypeSupportedByGbaService:Lorg/apache/http/impl/client/naf/gba/GbaType;
    sget-object v37, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_0

    sget-object v37, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 259
    :cond_0
    sget-object v23, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 264
    .local v23, gbaTypeForNafIndication:Lorg/apache/http/impl/client/naf/gba/GbaType;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v25

    .line 267
    .local v25, httpRequest:Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->requestUpdater:Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;->update(Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/naf/gba/GbaType;)V

    .line 270
    new-instance v19, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;-><init>()V

    .line 271
    .local v19, authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;->updateRequestWithCachedAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V

    .line 275
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->sendFirstRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 279
    .local v21, firstNafResponse:Lorg/apache/http/HttpResponse;
    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v37

    const/16 v38, 0x191

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Not 401 response was received. Authorization is not required or completed already."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 393
    .end local v19           #authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;
    .end local v21           #firstNafResponse:Lorg/apache/http/HttpResponse;
    .end local v23           #gbaTypeForNafIndication:Lorg/apache/http/impl/client/naf/gba/GbaType;
    .end local v24           #gbaTypeSupportedByGbaService:Lorg/apache/http/impl/client/naf/gba/GbaType;
    .end local v25           #httpRequest:Lorg/apache/http/HttpRequest;
    :goto_0
    return-object v21

    .line 289
    .restart local v19       #authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;
    .restart local v21       #firstNafResponse:Lorg/apache/http/HttpResponse;
    .restart local v23       #gbaTypeForNafIndication:Lorg/apache/http/impl/client/naf/gba/GbaType;
    .restart local v24       #gbaTypeSupportedByGbaService:Lorg/apache/http/impl/client/naf/gba/GbaType;
    .restart local v25       #httpRequest:Lorg/apache/http/HttpRequest;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "401 response was received. We need to calculate digest and send second request."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->parserFirstNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;

    move-result-object v36

    .line 293
    .local v36, wwwAuthenticateHeader:Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Obtaining NAF\'s FQDN from realm."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 294
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v31

    .line 295
    .local v31, realm:Ljava/lang/String;
    new-instance v29, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;

    invoke-direct/range {v29 .. v29}, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;-><init>()V

    .line 296
    .local v29, nafRealmParser:Lorg/apache/http/impl/client/naf/realm/NafRealmParser;
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/realm/NafRealmParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;

    move-result-object v28

    .line 297
    .local v28, nafRealmParsed:Lorg/apache/http/impl/client/naf/realm/NafRealmDataExtractor;
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/realm/NafRealmDataExtractor;->getNafFqdn(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;

    move-result-object v27

    .line 298
    .local v27, nafFqdn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "   nafFqdn="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "   gbaTypeForNafIndication="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Obtaining current Ua Security Protocol Id."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;->getUaSecurityProtocolId()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    move-result-object v34

    .line 305
    .local v34, uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Obtaining the NAF keys from GBA service."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getGbaAuthData(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v22

    .line 308
    .local v22, gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    if-nez v22, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "It is impossible to obtain keys from GBA service now, possible reasons are: no GBA service or it was killed, some problems on server side, network timeout."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 314
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Preparing parameters for AKA digest request calculation."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 315
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->parseServerQop(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v5

    .line 316
    .local v5, qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->parseServerAlgorithm(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v6

    .line 318
    .local v6, algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->getBtid()Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, username:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getPasswordBase64(Lorg/apache/http/impl/client/naf/gba/GbaAuthData;)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, passw:Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, nonce:Ljava/lang/String;
    invoke-static {}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->create()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v11

    .line 323
    .local v11, cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    invoke-static {}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->createNext()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v12

    .line 324
    .local v12, nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    move-result-object v13

    .line 326
    .local v13, method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v14

    .line 327
    .local v14, digestUriValue:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getEntityBodyFromRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v15

    .line 329
    .local v15, entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/apache/http/impl/client/naf/realm/NafRealmDataExtractor;->getRealmPart(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, newRealm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "   newRealm="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "   gbaTypeForNafIndication="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 333
    new-instance v4, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    invoke-direct/range {v4 .. v15}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;Lorg/apache/http/impl/client/naf/wrapper/NonceCount;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)V

    .line 337
    .local v4, akaDigestCalculationContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Running digest AKA calculation algorithm."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 338
    new-instance v16, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;-><init>()V

    .line 339
    .local v16, akaDigestCalculator:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;->calculateRequestDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;)Ljava/lang/String;

    move-result-object v32

    .line 342
    .local v32, response:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "updating second NAF request with Authorization header."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 343
    invoke-virtual/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v37

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->updateNafRequestWithAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Ljava/lang/String;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->sendSecondRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v33

    .line 352
    .local v33, secondNafResponse:Lorg/apache/http/HttpResponse;
    if-eqz v33, :cond_3

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v37

    const/16 v38, 0xc8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "200OK was received as the second response from NAF"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->parserSecondNafResponseHeaders(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;

    move-result-object v18

    .line 359
    .local v18, authenticationInfoHeader:Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->getEntityBodyFromResponse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v20

    .line 361
    .local v20, entityBodyFromResponse:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    new-instance v30, Lorg/apache/http/impl/client/naf/NafResponseResult;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getOpaque()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/http/impl/client/naf/NafResponseResult;-><init>(Lorg/apache/http/impl/client/naf/content/HttpEntityContent;Ljava/lang/String;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;)V

    .line 365
    .local v30, nafResponseResult:Lorg/apache/http/impl/client/naf/NafResponseResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "Running of Authentication-Info header validation"

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 366
    new-instance v17, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;-><init>()V

    .line 368
    .local v17, authInfoResponseValidator:Lorg/apache/http/impl/client/naf/AuthInfoResponseValidator;
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidator;->validate(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V

    .end local v17           #authInfoResponseValidator:Lorg/apache/http/impl/client/naf/AuthInfoResponseValidator;
    .end local v18           #authenticationInfoHeader:Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;
    .end local v20           #entityBodyFromResponse:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .end local v30           #nafResponseResult:Lorg/apache/http/impl/client/naf/NafResponseResult;
    :cond_3
    move-object/from16 v21, v33

    .line 375
    goto/16 :goto_0

    .line 378
    .end local v4           #akaDigestCalculationContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;
    .end local v5           #qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    .end local v6           #algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;
    .end local v7           #username:Ljava/lang/String;
    .end local v8           #newRealm:Ljava/lang/String;
    .end local v9           #passw:Ljava/lang/String;
    .end local v10           #nonce:Ljava/lang/String;
    .end local v11           #cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    .end local v12           #nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .end local v13           #method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
    .end local v14           #digestUriValue:Ljava/lang/String;
    .end local v15           #entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .end local v16           #akaDigestCalculator:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;
    .end local v19           #authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;
    .end local v21           #firstNafResponse:Lorg/apache/http/HttpResponse;
    .end local v22           #gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .end local v23           #gbaTypeForNafIndication:Lorg/apache/http/impl/client/naf/gba/GbaType;
    .end local v25           #httpRequest:Lorg/apache/http/HttpRequest;
    .end local v27           #nafFqdn:Ljava/lang/String;
    .end local v28           #nafRealmParsed:Lorg/apache/http/impl/client/naf/realm/NafRealmDataExtractor;
    .end local v29           #nafRealmParser:Lorg/apache/http/impl/client/naf/realm/NafRealmParser;
    .end local v31           #realm:Ljava/lang/String;
    .end local v32           #response:Ljava/lang/String;
    .end local v33           #secondNafResponse:Lorg/apache/http/HttpResponse;
    .end local v34           #uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .end local v36           #wwwAuthenticateHeader:Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "It is impossible to support GBA now (many possible reasons: no UICC, no permissions, no GBA service, broken dependencies, etc.), then it will be just usual HTTP."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 388
    .end local v24           #gbaTypeSupportedByGbaService:Lorg/apache/http/impl/client/naf/gba/GbaType;
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->sendFirstRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;

    move-result-object v35

    .local v35, usualNafResponse:Lorg/apache/http/HttpResponse;
    move-object/from16 v21, v35

    .line 393
    goto/16 :goto_0

    .line 383
    .end local v35           #usualNafResponse:Lorg/apache/http/HttpResponse;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v37, v0

    const-string v38, "It is impossible to support GBA now (many possible reasons: no Android Context, current client is GBA service, etc.), then it will be just usual HTTP."

    invoke-interface/range {v37 .. v38}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method sendFirstRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "httpRequestExecutor"
    .parameter "nafRequestWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-interface {p1, p2}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v1

    .line 490
    .local v1, firstNafResponseWrapper:Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getUsedCipherSuiteAndroidName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;->setLastUsedCipherSuiteName(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 497
    .local v0, firstNafResponse:Lorg/apache/http/HttpResponse;
    return-object v0
.end method

.method sendSecondRequest(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "httpRequestExecutor"
    .parameter "nafRequestWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-interface {p1, p2}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v1

    .line 519
    .local v1, secondNafResponseWrapper:Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategyDefault;->uaSecurityProtocolIdCalculator:Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getUsedCipherSuiteAndroidName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;->setLastUsedCipherSuiteName(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 526
    .local v0, secondNafResponse:Lorg/apache/http/HttpResponse;
    return-object v0
.end method

.method updateNafRequestWithAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Ljava/lang/String;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;)V
    .locals 5
    .parameter "nafRequestWrapper"
    .parameter "opaque"
    .parameter "akaDigestCalculationContext"
    .parameter "response"

    .prologue
    .line 543
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 544
    .local v2, currentHttpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 546
    .local v3, currentHttpRequest:Lorg/apache/http/HttpRequest;
    new-instance v0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;-><init>()V

    .line 549
    .local v0, authorizationHeader:Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getAlgorithm()Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setCnonce(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setNc(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getDigestUriValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setUri(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0, p4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->buildHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, authorizationHeaderValue:Ljava/lang/String;
    const-string v4, "Authorization"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instance()Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;->putItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;)V

    .line 576
    return-void
.end method
