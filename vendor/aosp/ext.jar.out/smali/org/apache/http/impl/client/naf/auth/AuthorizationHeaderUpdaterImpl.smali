.class public Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;
.super Ljava/lang/Object;
.source "AuthorizationHeaderUpdaterImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public updateRequestWithCachedAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V
    .locals 6
    .parameter "httpRequestWrapper"

    .prologue
    .line 28
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 29
    .local v2, currentHttpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 31
    .local v3, currentHttpRequest:Lorg/apache/http/HttpRequest;
    invoke-static {}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instance()Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;->getItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;

    move-result-object v0

    .line 34
    .local v0, authorizationHeader:Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->buildHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, authorizationHeaderValue:Ljava/lang/String;
    const-string v4, "Authorization"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "   current request has been updated with cached Authorization header."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 46
    .end local v1           #authorizationHeaderValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "   current request hasn\'t been updated with cached Authorization header, because the cache doesn\'t contain appropriate records."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
