.class public Landroid/app/enterprise/EmailPolicy;
.super Ljava/lang/Object;
.source "EmailPolicy.java"


# static fields
.field public static final ACTION_FORCE_SMIME_CERTIFICATE:Ljava/lang/String; = "com.android.server.enterprise.email.FORCE_SMIME_CERTIFICATE"

.field public static final ACTION_RELEASE_SMIME_CERTIFICATE:Ljava/lang/String; = "com.android.server.enterprise.email.RELEASE_SMIME_CERTIFICATE"

.field public static final EXTRA_CERT_PASSWORD:Ljava/lang/String; = "cert_password"

.field public static final EXTRA_CERT_PATH:Ljava/lang/String; = "cert_path"

.field public static final EXTRA_EMAIL_ADDRESS:Ljava/lang/String; = "email_address"

.field public static final PERMISSION_SMIME_CERTIFICATE:Ljava/lang/String; = "android.permission.sec.SMIME_CERTIFICATE"

.field public static final SET_SMIME_CERTIFICATE_INVALID_EMAIL:I = 0x3

.field public static final SET_SMIME_CERTIFICATE_INVALID_PASSWORD:I = 0x2

.field public static final SET_SMIME_CERTIFICATE_NOT_FOUND:I = 0x1

.field public static final SET_SMIME_CERTIFICATE_OK:I = -0x1

.field public static final SET_SMIME_CERTIFICATE_UNKNOWN_ERROR:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IEmailPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "EmailPolicy"

    sput-object v0, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "email_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    .line 61
    return-void
.end method


# virtual methods
.method public getAllowEmailForwarding(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 161
    const-string v1, "EmailPolicy.getAllowEmailForwarding"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEmailPolicy;->getAllowEmailForwarding(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowHtmlEmail(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 185
    const-string v1, "EmailPolicy.getAllowHTMLEmail"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getForceSMIMECertificate(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 125
    const-string v1, "EmailPolicy.getForceSMIMECertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEmailPolicy;->getForceSMIMECertificate(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireEncryptedSMIMEMessages(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 100
    const-string v1, "EmailPolicy.getRequireEncryptedSMIMEMessages"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEmailPolicy;->getRequireEncryptedSMIMEMessages(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireSignedSMIMEMessages(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 76
    const-string v1, "EmailPolicy.getRequireSignedSMIMEMessages"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEmailPolicy;->getRequireSignedSMIMEMessages(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowEmailForwarding(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "emailAddress"
    .parameter "allow"

    .prologue
    .line 149
    const-string v1, "EmailPolicy.setAllowEmailForwarding"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailPolicy;->setAllowEmailForwarding(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowHtmlEmail(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "emailAddress"
    .parameter "allow"

    .prologue
    .line 173
    const-string v1, "EmailPolicy.setAllowHTMLEmail"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailPolicy;->setAllowHTMLEmail(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 181
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForceSMIMECertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "emailAddress"
    .parameter "certPath"
    .parameter "certPassword"

    .prologue
    .line 113
    const-string v1, "EmailPolicy.setForceSMIMECertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailPolicy;->setForceSMIMECertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setReleaseSMIMECertificate(Ljava/lang/String;)Z
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 137
    const-string v1, "EmailPolicy.setReleaseSMIMECertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEmailPolicy;->setReleaseSMIMECertificate(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequireEncryptedSMIMEMessages(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "emailAddress"
    .parameter "enable"

    .prologue
    .line 88
    const-string v1, "EmailPolicy.setRequireEncryptedSMIMEMessages"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailPolicy;->setRequireEncryptedSMIMEMessages(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequireSignedSMIMEMessages(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "emailAddress"
    .parameter "enable"

    .prologue
    .line 64
    const-string v1, "EmailPolicy.setRequireSignedSMIMEMessages"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailPolicy;->mService:Landroid/app/enterprise/IEmailPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailPolicy;->setRequireSignedSMIMEMessages(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
