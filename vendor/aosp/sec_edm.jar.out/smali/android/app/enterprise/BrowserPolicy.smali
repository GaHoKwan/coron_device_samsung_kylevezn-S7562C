.class public Landroid/app/enterprise/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IBrowserPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "BrowserPolicy"

    sput-object v0, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    .line 55
    return-void
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .locals 3

    .prologue
    .line 171
    const-string v1, "BrowserPolicy.getAutoFillSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCookiesSetting()Z
    .locals 3

    .prologue
    .line 129
    const-string v1, "BrowserPolicy.getCookiesSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getForceFraudWarningSetting()Z
    .locals 3

    .prologue
    .line 213
    const-string v1, "BrowserPolicy.getForceFraudWarningSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJavaScriptSetting()Z
    .locals 3

    .prologue
    .line 255
    const-string v1, "BrowserPolicy.getJavaScriptSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPopupsSetting()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 87
    const-string v2, "BrowserPolicy.getPopupsSetting"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v2, :cond_0

    .line 90
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAutoFillSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 153
    const-string v1, "BrowserPolicy.setAutoFillSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x4

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCookiesSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 111
    const-string v1, "BrowserPolicy.setCookiesSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForceFraudWarningSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 195
    const-string v1, "BrowserPolicy.setForceFraudWarningSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x8

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setJavaScriptSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 237
    const-string v1, "BrowserPolicy.setJavaScriptSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x10

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPopupsSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 69
    const-string v1, "BrowserPolicy.setPopupsSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
