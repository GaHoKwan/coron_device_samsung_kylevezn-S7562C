.class public Landroid/app/enterprise/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final ERROR_INVALID_LOG_LEVEL:I = -0x4

.field public static final ERROR_INVALID_LOG_TYPE:I = -0x3

.field public static final ERROR_IO_WRITE:I = -0x6

.field public static final ERROR_LOG_TYPE_NOT_ACTIVE:I = -0x5

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNAUTHORIZED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final LOG_TYPE_CONSOLE:I = 0x1

.field public static final LOG_TYPE_FILE:I = 0x2

.field public static final LVL_DEBUG:I = 0x3

.field public static final LVL_ERROR:I = 0x6

.field public static final LVL_INFO:I = 0x4

.field public static final LVL_SENSITIVE:I = 0x1

.field public static final LVL_VERBOSE:I = 0x2

.field public static final LVL_WARNING:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mService:Landroid/app/enterprise/ILogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "LogManager"

    sput-object v0, Landroid/app/enterprise/LogManager;->TAG:Ljava/lang/String;

    .line 106
    const-string v0, "log_manager_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ILogManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILogManager;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    .line 108
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static copyLogs(Landroid/os/ParcelFileDescriptor;)I
    .locals 3
    .parameter "file"

    .prologue
    .line 413
    const-string v1, "LogManager.copyLogs"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 414
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    if-eqz v1, :cond_0

    .line 416
    :try_start_0
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    invoke-interface {v1, p0}, Landroid/app/enterprise/ILogManager;->copyLogs(Landroid/os/ParcelFileDescriptor;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 421
    :goto_0
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Log Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static disableLogging(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 192
    const-string v1, "LogManager.disableLogging"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 193
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    invoke-interface {v1, p0}, Landroid/app/enterprise/ILogManager;->disableLogging(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Log Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static enableLogging(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 147
    const-string v1, "LogManager.enableLogging"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 148
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    invoke-interface {v1, p0}, Landroid/app/enterprise/ILogManager;->enableLogging(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Log Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLogLevel(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 304
    const-string v1, "LogManager.getLogLevel"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 305
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    invoke-interface {v1, p0}, Landroid/app/enterprise/ILogManager;->getLogLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 312
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Log Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isLoggingEnabled(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 354
    const-string v1, "LogManager.isLoggingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 355
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    invoke-interface {v1, p0}, Landroid/app/enterprise/ILogManager;->isLoggingEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 362
    :goto_0
    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Log Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setLogLevel(II)I
    .locals 3
    .parameter "type"
    .parameter "level"

    .prologue
    .line 251
    const-string v1, "LogManager.setLogLevel"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 252
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    sget-object v1, Landroid/app/enterprise/LogManager;->mService:Landroid/app/enterprise/ILogManager;

    invoke-interface {v1, p0, p1}, Landroid/app/enterprise/ILogManager;->setLogLevel(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Log Manager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
