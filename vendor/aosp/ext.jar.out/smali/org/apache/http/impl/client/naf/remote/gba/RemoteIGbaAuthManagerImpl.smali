.class Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;
.super Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;
.source "RemoteIGbaAuthManagerImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;


# instance fields
.field private final isGbaSupportedMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final performGbaMeAuthenticationMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final performGbaUAuthenticationMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Ljava/lang/Class;)V
    .locals 10
    .parameter "obj"
    .parameter "gbaClassLoader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p3, iExceptionHolderClassRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    .line 25
    new-instance v1, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v2, "isGbaSupported"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;->isGbaSupportedMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 27
    new-array v1, v5, [B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, byteArrayClassRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v2, "performGbaMeAuthentication"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    aput-object p3, v3, v9

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;->performGbaMeAuthenticationMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 31
    new-instance v1, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v2, "performGbaUAuthentication"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    aput-object p3, v3, v9

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;->performGbaUAuthenticationMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 34
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    const-string v0, "javax.microedition.gba.android.IGbaAuthManager"

    .line 38
    .local v0, fullName:Ljava/lang/String;
    const-string v1, "javax.microedition.gba.android.IGbaAuthManager"

    return-object v1
.end method

.method public isGbaSupported()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    .local v0, isGbaSupportedCode:Ljava/lang/Integer;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;->isGbaSupportedMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, isGbaSupportedMethodResult:Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 53
    check-cast v0, Ljava/lang/Integer;

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public performGbaMeAuthentication(ZLjava/lang/String;[BILorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
    .locals 8
    .parameter "bypassCache"
    .parameter "nafFqdn"
    .parameter "nafSecurProtocolId"
    .parameter "secondsForAttempt"
    .parameter "iExceptionHolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, remoteIGbaMeUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
    if-nez p5, :cond_0

    .line 72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "iExceptionHolder must be not null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;->performGbaMeAuthenticationMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-interface {p5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;->getObjRef()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, performGbaMeAuthenticationMethodResult:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 81
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParamsImpl;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParamsImpl;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #remoteIGbaMeUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
    .local v3, remoteIGbaMeUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
    move-object v2, v3

    .line 90
    .end local v3           #remoteIGbaMeUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
    .restart local v2       #remoteIGbaMeUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
    :cond_1
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public performGbaUAuthentication(ZLjava/lang/String;[BILorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;
    .locals 8
    .parameter "bypassCache"
    .parameter "nafFqdn"
    .parameter "nafSecurProtocolId"
    .parameter "secondsForAttempt"
    .parameter "iExceptionHolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, remoteIGbaUUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;
    if-nez p5, :cond_0

    .line 106
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "iExceptionHolder must be not null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManagerImpl;->performGbaUAuthenticationMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-interface {p5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;->getObjRef()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, performGbaUAuthenticationMethodResult:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 115
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #remoteIGbaUUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;
    .local v3, remoteIGbaUUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;
    move-object v2, v3

    .line 124
    .end local v3           #remoteIGbaUUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;
    .restart local v2       #remoteIGbaUUaSessionParams:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;
    :cond_1
    :goto_0
    return-object v2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
