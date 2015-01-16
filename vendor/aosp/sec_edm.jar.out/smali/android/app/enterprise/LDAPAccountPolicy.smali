.class public Landroid/app/enterprise/LDAPAccountPolicy;
.super Ljava/lang/Object;
.source "LDAPAccountPolicy.java"


# static fields
.field public static final ACTION_LDAP_CREATE_ACCT:Ljava/lang/String; = "edm.intent.action.ldap.createacct.internal"

.field public static final ACTION_LDAP_CREATE_ACCT_RESULT:Ljava/lang/String; = "edm.intent.action.ldap.createacct.result"

.field public static final ERROR_LDAP_ALREADY_EXISTS:I = -0x1

.field public static final ERROR_LDAP_CONNECT_ERROR:I = -0x7

.field public static final ERROR_LDAP_DOES_NOT_EXIST:I = -0x2

.field public static final ERROR_LDAP_INVALID_CREDENTIALS:I = -0x3

.field public static final ERROR_LDAP_NONE:I = 0x0

.field public static final ERROR_LDAP_SERVER_BUSY:I = -0x4

.field public static final ERROR_LDAP_SERVER_DOWN:I = -0x5

.field public static final ERROR_LDAP_TIMEOUT:I = -0x6

.field public static final ERROR_LDAP_UNKNOWN:I = -0x8

.field public static final EXTRA_LDAP_ACCT_ID:Ljava/lang/String; = "edm.intent.extra.ldap.acct.id"

.field public static final EXTRA_LDAP_RESULT:Ljava/lang/String; = "edm.intent.extra.ldap.result"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final lService:Landroid/app/enterprise/ILDAPAccountPolicy;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "LDAPAccountPolicy"

    sput-object v0, Landroid/app/enterprise/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/app/enterprise/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 130
    const-string v0, "ldap_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ILDAPAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILDAPAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    .line 132
    sget-object v0, Landroid/app/enterprise/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LDAP settings policy API - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method


# virtual methods
.method public createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V
    .locals 4
    .parameter "ldap"

    .prologue
    .line 173
    const-string v2, "LDAPAccountPolicy.createLDAPAccount"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 175
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/ILDAPAccountPolicy;->createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking to LDAP Settings service "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.ldap.result"

    const/4 v3, -0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v2, "edm.intent.extra.ldap.acct.id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object v2, p0, Landroid/app/enterprise/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteLDAPAccount(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 221
    const-string v1, "LDAPAccountPolicy.deleteLDAPAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ILDAPAccountPolicy;->deleteLDAPAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to LDAP Settings service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllLDAPAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/LDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    const-string v1, "LDAPAccountPolicy.getAllLDAPAccounts"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 302
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILDAPAccountPolicy;->getAllLDAPAccounts()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 308
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to LDAP Settings service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    .locals 3
    .parameter "id"

    .prologue
    .line 262
    const-string v1, "LDAPAccountPolicy.getLDAPAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Landroid/app/enterprise/LDAPAccountPolicy;->lService:Landroid/app/enterprise/ILDAPAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ILDAPAccountPolicy;->getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to LDAP Settings service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
