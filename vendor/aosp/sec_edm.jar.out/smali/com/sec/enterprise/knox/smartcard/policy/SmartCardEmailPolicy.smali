.class public Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;
.source "SmartCardEmailPolicy.java"


# static fields
.field public static final ACTION_ENABLED_EMAIL_SMARTCARD_AUTHENTICATION:Ljava/lang/String; = "edm.intent.action.smartcard.email.authentication"

.field public static final EXTRA_AUTHENTICATION_ENABLED:Ljava/lang/String; = "edm.intent.extra.smartcard.authentication.enabled"

.field private static mSmartCardEmailPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v0, "smartcard_email_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    .line 83
    iget-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartCardEmailPolicy API - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    sget-object v1, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->mSmartCardEmailPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->mSmartCardEmailPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    .line 130
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->mSmartCardEmailPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isAuthenticationEnabled()Z
    .locals 3

    .prologue
    .line 101
    const-string v1, "SmartCardEmailPolicy.isAuthenticationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;->isAuthenticationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCredentialRequired(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 193
    const-string v1, "SmartCardEmailPolicy.isCredentialRequired"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;->isCredentialRequired(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 201
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requireCredentials(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "emailAddress"
    .parameter "require"

    .prologue
    .line 171
    const-string v1, "SmartCardEmailPolicy.requireCredentials"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;

    invoke-interface {v1, p1, p2}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy;->requireCredentials(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
