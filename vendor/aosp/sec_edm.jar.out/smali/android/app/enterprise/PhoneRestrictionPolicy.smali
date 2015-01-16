.class public Landroid/app/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final LIMIT_NUMBER_OF_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_SMS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_SMS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_SMS_BY_WEEK:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "phone_restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    .line 64
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "FAILED: mService = NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public addIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 272
    const-string v1, "PhoneRestrictionPolicy.addIncomingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addIncomingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 516
    const-string v1, "PhoneRestrictionPolicy.addIncomingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 519
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addIncomingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 524
    :goto_0
    return v1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 3

    .prologue
    .line 821
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 823
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 828
    :goto_0
    return v1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 3

    .prologue
    .line 1054
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1056
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfIncomingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1061
    :goto_0
    return v1

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 3

    .prologue
    .line 840
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 842
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 847
    :goto_0
    return v1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 3

    .prologue
    .line 1073
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1075
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1080
    :goto_0
    return v1

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 217
    const-string v1, "PhoneRestrictionPolicy.addOutgoingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addOutgoingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 489
    const-string v1, "PhoneRestrictionPolicy.addOutgoingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addOutgoingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowCallerIDDisplay(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1843
    const-string v1, "PhoneRestrictionPolicy.allowCallerIDDisplay"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1844
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1846
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->allowCallerIDDisplay(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1851
    :goto_0
    return v1

    .line 1847
    :catch_0
    move-exception v0

    .line 1848
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block caller id display "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowIncomingMms(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1516
    const-string v1, "PhoneRestrictionPolicy.allowIncomingMms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1519
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->allowIncomingMms(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1524
    :goto_0
    return v1

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set incoming MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public allowIncomingSms(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1340
    const-string v1, "PhoneRestrictionPolicy.allowIncomingSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1341
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1343
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->allowIncomingSms(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1348
    :goto_0
    return v1

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set incoming SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public allowOutgoingMms(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1561
    const-string v1, "PhoneRestrictionPolicy.allowOutgoingMms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1562
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1564
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->allowOutgoingMms(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1569
    :goto_0
    return v1

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set outgoing MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public allowOutgoingSms(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1385
    const-string v1, "PhoneRestrictionPolicy.allowOutgoingSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1386
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1388
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->allowOutgoingSms(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1393
    :goto_0
    return v1

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set outgoing SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public allowWapPush(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1782
    const-string v1, "PhoneRestrictionPolicy.allowWapPush"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1783
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1785
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->allowWapPush(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1790
    :goto_0
    return v1

    .line 1786
    :catch_0
    move-exception v0

    .line 1787
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to allow wap push"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public blockMmsWithStorage(Z)Z
    .locals 3
    .parameter "block"

    .prologue
    .line 1700
    const-string v1, "PhoneRestrictionPolicy.blockMmsWithStorage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1701
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1703
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->blockMmsWithStorage(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1708
    :goto_0
    return v1

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block MMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public blockSmsWithStorage(Z)Z
    .locals 3
    .parameter "block"

    .prologue
    .line 1667
    const-string v1, "PhoneRestrictionPolicy.blockSmsWithStorage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1668
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1670
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->blockSmsWithStorage(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1675
    :goto_0
    return v1

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block SMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialNumber"

    .prologue
    .line 321
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 323
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 607
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 614
    :goto_0
    return v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialNumber"

    .prologue
    .line 297
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 304
    :goto_0
    return v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 588
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 590
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 595
    :goto_0
    return v1

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkDataCallLimit()Z
    .locals 3

    .prologue
    .line 1262
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1264
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->checkDataCallLimit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1269
    :goto_0
    return v1

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkDataCallLimit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1246
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1248
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1253
    :goto_0
    return v1

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkEnableUseOfPacketData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearStoredBlockedMms()Z
    .locals 3

    .prologue
    .line 1765
    const-string v1, "PhoneRestrictionPolicy.clearStoredBlockedMms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1766
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1768
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->clearStoredBlockedMms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1773
    :goto_0
    return v1

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to clear stored blocked mms"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearStoredBlockedSms()Z
    .locals 3

    .prologue
    .line 1749
    const-string v1, "PhoneRestrictionPolicy.clearStoredBlockedSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1750
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1752
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->clearStoredBlockedSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1757
    :goto_0
    return v1

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to clear stored blocked sms"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 3

    .prologue
    .line 1092
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1094
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1099
    :goto_0
    return v1

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLimitNumberOfCalls(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 634
    const-string v1, "PhoneRestrictionPolicy.enableLimitNumberOfCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 637
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->enableLimitNumberOfCalls(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 642
    :goto_0
    return v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLimitNumberOfSms(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 867
    const-string v1, "PhoneRestrictionPolicy.enableLimitNumberOfSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 870
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->enableLimitNumberOfSms(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 875
    :goto_0
    return v1

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallLimitEnabled()Z
    .locals 3

    .prologue
    .line 1142
    const-string v1, "PhoneRestrictionPolicy.getDataCallLimitEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1143
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1145
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getDataCallLimitEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1150
    :goto_0
    return v1

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 370
    const-string v1, "PhoneRestrictionPolicy.getEmergencyCallOnly"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingCallRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 112
    const-string v1, "PhoneRestrictionPolicy.getIncomingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getIncomingCallRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 418
    const-string v1, "PhoneRestrictionPolicy.getIncomingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getIncomingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    :goto_0
    return-object v1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLimitOfDataCalls(I)J
    .locals 3
    .parameter "type"

    .prologue
    .line 1203
    const-string v1, "PhoneRestrictionPolicy.getLimitOfDataCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1206
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfDataCalls(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1211
    :goto_0
    return-wide v1

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getLimitOfDataCalls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfIncomingCalls(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 717
    const-string v1, "PhoneRestrictionPolicy.getLimitOfIncomingCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 720
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 725
    :goto_0
    return v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfIncomingSms(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 975
    const-string v1, "PhoneRestrictionPolicy.getLimitOfIncomingSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 976
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 978
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 983
    :goto_0
    return v1

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfOutgoingCalls(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 776
    const-string v1, "PhoneRestrictionPolicy.getLimitOfOutgoingCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 779
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 784
    :goto_0
    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfOutgoingSms(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 1034
    const-string v1, "PhoneRestrictionPolicy.getLimitOfOutgoingSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1037
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1042
    :goto_0
    return v1

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getOutgoingCallRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 85
    const-string v1, "PhoneRestrictionPolicy.getOutgoingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getOutgoingCallRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 394
    const-string v1, "PhoneRestrictionPolicy.getOutgoingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getOutgoingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 402
    :goto_0
    return-object v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .locals 3

    .prologue
    .line 1716
    const-string v1, "PhoneRestrictionPolicy.isBlockMmsWithStorageEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1717
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1719
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1724
    :goto_0
    return v1

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get status of block MMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .locals 3

    .prologue
    .line 1683
    const-string v1, "PhoneRestrictionPolicy.isBlockSmsWithStorageEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1684
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1686
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1691
    :goto_0
    return v1

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get status of block SMS with storage"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallerIDDisplayAllowed()Z
    .locals 3

    .prologue
    .line 1881
    const-string v1, "PhoneRestrictionPolicy.isCallerIDDisplayAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1883
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1885
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isCallerIDDisplayAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1890
    :goto_0
    return v1

    .line 1886
    :catch_0
    move-exception v0

    .line 1887
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getting caller id display status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isIncomingMmsAllowed()Z
    .locals 3

    .prologue
    .line 1604
    const-string v1, "PhoneRestrictionPolicy.isIncomingMmsAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1605
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1607
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isIncomingMmsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1612
    :goto_0
    return v1

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get incoming MMS status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isIncomingSmsAllowed()Z
    .locals 3

    .prologue
    .line 1428
    const-string v1, "PhoneRestrictionPolicy.isIncomingSmsAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1429
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1431
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isIncomingSmsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1436
    :goto_0
    return v1

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get incoming SMS status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLimitNumberOfCallsEnabled()Z
    .locals 3

    .prologue
    .line 658
    const-string v1, "PhoneRestrictionPolicy.isLimitNumberOfCallsEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 661
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 666
    :goto_0
    return v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 3

    .prologue
    .line 891
    const-string v1, "PhoneRestrictionPolicy.isLimitNumberOfSmsEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 894
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 899
    :goto_0
    return v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutgoingMmsAllowed()Z
    .locals 3

    .prologue
    .line 1647
    const-string v1, "PhoneRestrictionPolicy.isOutgoingMmsAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1648
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1650
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isOutgoingMmsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1655
    :goto_0
    return v1

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get outgoing MMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 3

    .prologue
    .line 1471
    const-string v1, "PhoneRestrictionPolicy.isOutgoingSmsAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1472
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1474
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isOutgoingSmsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1479
    :goto_0
    return v1

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get outgoing SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWapPushAllowed()Z
    .locals 3

    .prologue
    .line 1798
    const-string v1, "PhoneRestrictionPolicy.isWapPushAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1799
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1801
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isWapPushAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1806
    :goto_0
    return v1

    .line 1802
    :catch_0
    move-exception v0

    .line 1803
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get status of allow wap push"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeIncomingCallRestriction()Z
    .locals 3

    .prologue
    .line 162
    const-string v1, "PhoneRestrictionPolicy.removeIncomingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeIncomingCallRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeIncomingSmsRestriction()Z
    .locals 3

    .prologue
    .line 462
    const-string v1, "PhoneRestrictionPolicy.removeIncomingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 465
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeIncomingSmsRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 470
    :goto_0
    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOutgoingCallRestriction()Z
    .locals 3

    .prologue
    .line 137
    const-string v1, "PhoneRestrictionPolicy.removeOutgoingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeOutgoingCallRestriction()Z
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
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOutgoingSmsRestriction()Z
    .locals 3

    .prologue
    .line 440
    const-string v1, "PhoneRestrictionPolicy.removeOutgoingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeOutgoingSmsRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 448
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCallsCount()Z
    .locals 3

    .prologue
    .line 801
    const-string v1, "PhoneRestrictionPolicy.resetCallsCount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 804
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetCallsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 809
    :goto_0
    return v1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataCallLimitCounter()Z
    .locals 3

    .prologue
    .line 1225
    const-string v1, "PhoneRestrictionPolicy.resetDataCallLimitCounter"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1226
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1228
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetDataCallLimitCounter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1233
    :goto_0
    return v1

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLimitCounter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetSmsCount()Z
    .locals 3

    .prologue
    .line 916
    const-string v1, "PhoneRestrictionPolicy.resetSmsCount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 919
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetSmsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 924
    :goto_0
    return v1

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 924
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataCallLimitEnabled(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 1120
    const-string v1, "PhoneRestrictionPolicy.setDataCallLimitEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1121
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1123
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setDataCallLimitEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1128
    :goto_0
    return v1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmergencyCallOnly(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 346
    const-string v1, "PhoneRestrictionPolicy.setEmergencyCallOnly"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 244
    const-string v1, "PhoneRestrictionPolicy.setIncomingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 252
    :goto_0
    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 568
    const-string v1, "PhoneRestrictionPolicy.setIncomingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 571
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 576
    :goto_0
    return v1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfDataCalls(JJJ)Z
    .locals 8
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 1174
    const-string v0, "PhoneRestrictionPolicy.setLimitOfDataCalls"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v0, :cond_0

    .line 1177
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfDataCalls(JJJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1183
    :goto_0
    return v0

    .line 1179
    :catch_0
    move-exception v7

    .line 1180
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to setLimitOfDataCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLimitOfIncomingCalls(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 690
    const-string v1, "PhoneRestrictionPolicy.setLimitOfIncomingCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 693
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfIncomingCalls(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 699
    :goto_0
    return v1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfIncomingSms(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 948
    const-string v1, "PhoneRestrictionPolicy.setLimitOfIncomingSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 951
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfIncomingSms(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 957
    :goto_0
    return v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfOutgoingCalls(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 749
    const-string v1, "PhoneRestrictionPolicy.setLimitOfOutgoingCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 752
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfOutgoingCalls(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 758
    :goto_0
    return v1

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfOutgoingSms(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 1007
    const-string v1, "PhoneRestrictionPolicy.setLimitOfOutgoingSms"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1010
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfOutgoingSms(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1016
    :goto_0
    return v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1016
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 189
    const-string v1, "PhoneRestrictionPolicy.setOutgoingCallRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 542
    const-string v1, "PhoneRestrictionPolicy.setOutgoingSmsRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 545
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 550
    :goto_0
    return v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "isSms"
    .parameter "pdu"
    .parameter "srcAddress"
    .parameter "sendType"
    .parameter "timeStamp"

    .prologue
    .line 1734
    const-string v0, "PhoneRestrictionPolicy.storeBlockedSmsMms"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v0, :cond_0

    .line 1737
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :cond_0
    :goto_0
    return-void

    .line 1738
    :catch_0
    move-exception v6

    .line 1739
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to store blocked sms/mms"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDataLimitState()V
    .locals 3

    .prologue
    .line 1294
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1296
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDataLimitState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateDateAndDataCallCounters(J)V
    .locals 3
    .parameter "totalBytes"

    .prologue
    .line 1277
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1279
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
