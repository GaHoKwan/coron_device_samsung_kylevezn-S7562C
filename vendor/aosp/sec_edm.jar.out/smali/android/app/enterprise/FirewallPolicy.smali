.class public Landroid/app/enterprise/FirewallPolicy;
.super Ljava/lang/Object;
.source "FirewallPolicy.java"


# static fields
.field private static final ACCEPT:I = 0x1

.field private static final DROP:I = 0x2

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field private static final PROXY:I = 0x3

.field private static final REDIRECT:I = 0x0

.field private static final REDIRECT_EXCEPTION:I = 0x7

.field private static final REROUTE_DEST:I = 0x5

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/app/enterprise/IFirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "FirewallPolicy"

    sput-object v0, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    .line 87
    iput-object p1, p0, Landroid/app/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private checkEmptyList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 825
    if-nez p1, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v0

    .line 828
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.addIptablesAllowRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 126
    :goto_0
    return v1

    .line 118
    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->addRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.addIptablesDenyRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 160
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->addRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addIptablesRedirectExceptionsRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1283
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.addIptablesRedirectExceptionsRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1284
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "addIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v1, 0x0

    .line 1287
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x7

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->addRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1291
    :goto_0
    return v1

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException on addIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 192
    const-string v2, "FirewallPolicy.addIptablesRerouteRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return v1

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 198
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->addRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesAllowRules()Z
    .locals 4

    .prologue
    .line 652
    const-string v2, "FirewallPolicy.cleanIptablesAllowRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 653
    const/4 v1, 0x0

    .line 656
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->cleanRules(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 661
    :goto_0
    return v1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesDenyRules()Z
    .locals 4

    .prologue
    .line 678
    const-string v2, "FirewallPolicy.cleanIptablesDenyRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 679
    const/4 v1, 0x0

    .line 682
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->cleanRules(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 687
    :goto_0
    return v1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesProxyRules()Z
    .locals 4

    .prologue
    .line 751
    const-string v2, "FirewallPolicy.cleanIptablesProxyRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x0

    .line 755
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->cleanRules(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 760
    :goto_0
    return v1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesRedirectExceptionsRules()Z
    .locals 4

    .prologue
    .line 1319
    const-string v2, "FirewallPolicy.cleanIptablesRedirectExceptionsRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1320
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "cleanIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/4 v1, 0x0

    .line 1323
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->cleanRules(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1327
    :goto_0
    return v1

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException on cleanIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesRerouteRules()Z
    .locals 4

    .prologue
    .line 704
    const-string v2, "FirewallPolicy.cleanIptablesRerouteRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 705
    const/4 v1, 0x0

    .line 708
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->cleanRules(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 713
    :goto_0
    return v1

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesAllowRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const-string v2, "FirewallPolicy.getIptablesAllowRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 340
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules... 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getRules(I)Ljava/util/List;

    move-result-object v1

    .line 347
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesDenyRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    const-string v2, "FirewallPolicy.getIptablesDenyRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getRules(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 376
    :goto_0
    return-object v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesOption()Z
    .locals 4

    .prologue
    .line 469
    const-string v2, "FirewallPolicy.getIptablesOption"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 476
    :goto_0
    return v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesProxyOption()Z
    .locals 4

    .prologue
    .line 489
    const-string v2, "FirewallPolicy.getIptablesProxyOption"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 490
    const/4 v1, 0x0

    .line 492
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledProxy()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 496
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesProxyRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    const-string v2, "FirewallPolicy.getIptablesProxyRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getRules(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesRedirectExceptionsRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1307
    const-string v2, "FirewallPolicy.getIptablesRedirectExceptionsRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1308
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getRules(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1315
    :goto_0
    return-object v1

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException on getIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesRerouteRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    const-string v2, "FirewallPolicy.getIptablesRerouteRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getRules(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 402
    :goto_0
    return-object v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const-string v2, "FirewallPolicy.getIptablesRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getAllRulesForUid()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 453
    :goto_0
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkForMarket()I
    .locals 3

    .prologue
    .line 1259
    const-string v1, "FirewallPolicy.getNetworkForMarket"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    if-eqz v1, :cond_0

    .line 1262
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/enterprise/IFirewallPolicy;->getNetworkForMarket(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1267
    :goto_0
    return v1

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getNetworkForMarket!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getURLFilterEnabled()Z
    .locals 4

    .prologue
    .line 920
    const-string v2, "FirewallPolicy.getURLFilterEnabled"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 921
    const/4 v1, 0x0

    .line 923
    .local v1, ret:Z
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getURLFilterEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getURLFilterEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 928
    :goto_0
    return v1

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getURLFilterList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1013
    const-string v2, "FirewallPolicy.getURLFilterList"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1014
    const/4 v1, 0x0

    .line 1016
    .local v1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getURLFilterList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getURLFilterList(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1021
    :goto_0
    return-object v1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getURLFilterReport()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1176
    const-string v2, "FirewallPolicy.getURLFilterReport"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1177
    const/4 v1, 0x0

    .line 1179
    .local v1, reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getURLFilterReport"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getURLFilterReport()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1184
    :goto_0
    return-object v1

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getURLFilterReportEnabled()Z
    .locals 4

    .prologue
    .line 1128
    const-string v2, "FirewallPolicy.getURLFilterReportEnabled"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1129
    const/4 v1, 0x0

    .line 1131
    .local v1, ret:Z
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getURLFilterReportEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IFirewallPolicy;->getURLFilterReportEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1136
    :goto_0
    return v1

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"

    .prologue
    .line 1029
    const/4 v1, 0x0

    .line 1032
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1036
    :goto_0
    return v1

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public listIptablesRules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    const-string v2, "FirewallPolicy.listIptablesRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 814
    const/4 v1, 0x0

    .line 816
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->listIptablesRules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 820
    :goto_0
    return-object v1

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.removeIptablesAllowRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 234
    const-string v2, "Application"

    const-string v3, "removeIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 245
    :goto_0
    return v1

    .line 237
    :cond_0
    const/4 v1, 0x0

    .line 240
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->removeRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.removeIptablesDenyRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v1, 0x0

    .line 284
    :goto_0
    return v1

    .line 276
    :cond_0
    const/4 v1, 0x0

    .line 279
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->removeRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesRedirectExceptionsRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.removeIptablesRedirectExceptionsRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1296
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "removeIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v1, 0x0

    .line 1299
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x7

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->removeRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1303
    :goto_0
    return v1

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException on removeIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 313
    const-string v2, "FirewallPolicy.removeIptablesRerouteRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    :goto_0
    return v1

    .line 316
    :cond_0
    const/4 v1, 0x0

    .line 319
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->removeRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesRules()Z
    .locals 4

    .prologue
    .line 729
    const-string v2, "FirewallPolicy.removeIptablesRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 730
    const/4 v1, 0x0

    .line 732
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanAllRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 736
    :goto_0
    return v1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.setIptablesAllowRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 523
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    const/4 v1, 0x0

    .line 533
    :goto_0
    return v1

    .line 525
    :cond_0
    const/4 v1, 0x0

    .line 528
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->setRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.setIptablesDenyRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    const/4 v1, 0x0

    .line 570
    :goto_0
    return v1

    .line 562
    :cond_0
    const/4 v1, 0x0

    .line 565
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->setRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesOption(Z)Z
    .locals 4
    .parameter "status"

    .prologue
    .line 776
    const-string v2, "FirewallPolicy.setIptablesOption"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 777
    const/4 v1, 0x0

    .line 780
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableRules(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 784
    :goto_0
    return v1

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesProxyOption(Z)Z
    .locals 4
    .parameter "status"

    .prologue
    .line 800
    const-string v2, "FirewallPolicy.setIptablesProxyOption"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 801
    const/4 v1, 0x0

    .line 804
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableProxy(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 808
    :goto_0
    return v1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 626
    const-string v3, "FirewallPolicy.setIptablesProxyRules"

    invoke-static {v3}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 627
    const/4 v1, 0x0

    .line 630
    .local v1, ret:Z
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v3, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v3, p1, p2}, Landroid/app/enterprise/IFirewallPolicy;->setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 636
    .end local v2           #rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesRedirectExceptionsRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1271
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.setIptablesRedirectExceptionsRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1272
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "setIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v1, 0x0

    .line 1275
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x7

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->setRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1279
    :goto_0
    return v1

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException on setIptablesRedirectExceptions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 597
    const-string v2, "FirewallPolicy.setIptablesRerouteRules"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    :goto_0
    return v1

    .line 600
    :cond_0
    const/4 v1, 0x0

    .line 603
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IFirewallPolicy;->setRules(Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNetworkForMarket(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 1218
    const-string v1, "FirewallPolicy.setNetworkForMarket"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    if-eqz v1, :cond_0

    .line 1221
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IFirewallPolicy;->setNetworkForMarket(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1226
    :goto_0
    return v1

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setNetworkForMarket!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setURLFilterEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 874
    const-string v2, "FirewallPolicy.setURLFilterEnabled"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 875
    const/4 v1, 0x0

    .line 877
    .local v1, ret:Z
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setURLFilterEnabled state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setURLFilterEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 882
    :goto_0
    return v1

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setURLFilterList(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy.setURLFilterList"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 971
    const/4 v1, 0x0

    .line 973
    .local v1, ret:Z
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setURLFilterList urls = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setURLFilterList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 978
    :goto_0
    return v1

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setURLFilterReportEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1080
    const-string v2, "FirewallPolicy.setURLFilterReportEnabled"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1081
    const/4 v1, 0x0

    .line 1083
    .local v1, ret:Z
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setURLFilterReportEnabled state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setURLFilterReportEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1088
    :goto_0
    return v1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
