.class public Landroid/app/enterprise/ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "ExchangeAccountPolicy.java"


# static fields
.field public static final ACTION_CBA_INSTALL_STATUS:Ljava/lang/String; = "android.intent.action.sec.CBA_INSTALL_STATUS"

.field public static final ACTION_EXCHANGE_ACCOUNT_ADD_RESULT:Ljava/lang/String; = "android.intent.action.sec.EXCHANGE_ACCOUNT_ADD_RESULT"

.field public static final ACTION_EXCHANGE_ACCOUNT_DELETE_RESULT:Ljava/lang/String; = "android.intent.action.sec.EXCHANGE_ACCOUNT_DELETE_RESULT"

.field public static final ACTION_EXCHANGE_DELETE_NOT_VALIDATED_ACCOUNT:Ljava/lang/String; = "android.intent.action.sec.EXCHANGE_DELETE_NOT_VALIDATED_ACCOUNT"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final EXTRA_EMAIL_ADDRESS:Ljava/lang/String; = "email_id"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_SERVER_ADDRESS:Ljava/lang/String; = "server_host"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccId:J

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private final mService:Landroid/app/enterprise/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "ExchangeAccountPolicy"

    sput-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    .line 168
    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 21
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    .line 251
    const-string v1, "ExchangeAccountPolicy.addNewAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 263
    :goto_0
    return-wide v1

    .line 259
    :catch_0
    move-exception v20

    .line 260
    .local v20, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v20           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIIZII[BLjava/lang/String;)J
    .locals 33
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"
    .parameter "peakStarttime"
    .parameter "peakEndtime"
    .parameter "peakDays"
    .parameter "offPeak"
    .parameter "roamingSchedule"
    .parameter "periodEmail"
    .parameter "retrivalSize"
    .parameter "periodCalendar"
    .parameter "isNotify"
    .parameter "syncContacts"
    .parameter "syncCalendar"
    .parameter "certificate_data"
    .parameter "certificate_password"

    .prologue
    .line 277
    const-string v1, "ExchangeAccountPolicy.addNewAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 280
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    invoke-interface/range {v1 .. v31}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 293
    :goto_0
    return-wide v1

    .line 289
    :catch_0
    move-exception v32

    .line 290
    .local v32, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    move-object/from16 v0, v32

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v32           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "serverAddress"
    .parameter "serverPassword"

    .prologue
    .line 191
    const-string v0, "ExchangeAccountPolicy.addNewAccount"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 200
    :goto_0
    return-wide v0

    .line 196
    :catch_0
    move-exception v6

    .line 197
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 863
    const-string v1, "ExchangeAccountPolicy.deleteAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 866
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->deleteAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 871
    :goto_0
    return v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    .line 836
    const-string v1, "ExchangeAccountPolicy.getAccountDetails"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 839
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 844
    :goto_0
    return-object v1

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    .line 809
    const-string v1, "ExchangeAccountPolicy.getAccountId"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 812
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 817
    :goto_0
    return-wide v1

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAllEASAccounts()[Landroid/app/enterprise/Account;
    .locals 3

    .prologue
    .line 1049
    const-string v1, "ExchangeAccountPolicy.getAllEASAccounts"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 1052
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAllEASAccounts()[Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1057
    :goto_0
    return-object v1

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1066
    const-string v1, "ExchangeAccountPolicy.getDeviceId"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1067
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 1069
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IExchangeAccountPolicy;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1074
    :goto_0
    return-object v1

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 886
    const-string v0, "ExchangeAccountPolicy.sendAccountsChangedBroadcast"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_1

    .line 889
    :try_start_0
    iget-wide v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 890
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/enterprise/ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 894
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v0}, Landroid/app/enterprise/IExchangeAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :cond_1
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v7

    .line 896
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 453
    const-string v1, "ExchangeAccountPolicy.setAcceptAllCertificates"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 461
    :goto_0
    return v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 8
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 320
    const-string v0, "ExchangeAccountPolicy.setAccountBaseParameters"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 328
    :goto_0
    return-wide v0

    .line 324
    :catch_0
    move-exception v7

    .line 325
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 780
    const-string v1, "ExchangeAccountPolicy.setAccountName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 783
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 788
    :goto_0
    return v1

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 3
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 483
    const-string v1, "ExchangeAccountPolicy.setAlwaysVibrateOnEmailNotification"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 491
    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 750
    const-string v1, "ExchangeAccountPolicy.setAsDefaultAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 753
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAsDefaultAccount(J)Z
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
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .locals 3
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 920
    const-string v1, "ExchangeAccountPolicy.setClientAuthCert"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 923
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IExchangeAccountPolicy;->setClientAuthCert([BLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataSyncs(ZZZZJ)Z
    .locals 8
    .parameter "syncCalendar"
    .parameter "syncContacts"
    .parameter "syncTasks"
    .parameter "syncNotes"
    .parameter "accId"

    .prologue
    .line 1024
    const-string v0, "ExchangeAccountPolicy.setDataSyncs"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setDataSyncs(ZZZZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1033
    :goto_0
    return v0

    .line 1029
    :catch_0
    move-exception v7

    .line 1030
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1033
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDomain(Ljava/lang/String;J)V
    .locals 1
    .parameter "domain"
    .parameter "accId"

    .prologue
    .line 537
    const-string v0, "ExchangeAccountPolicy.setDomain"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 540
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    .line 541
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 546
    :cond_0
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .locals 1
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 393
    const-string v0, "ExchangeAccountPolicy.setEmailAddress"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 396
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    .line 397
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 402
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHost(Ljava/lang/String;J)V
    .locals 1
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 344
    const-string v0, "ExchangeAccountPolicy.setHost"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 347
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    .line 348
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 353
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 565
    const-string v1, "ExchangeAccountPolicy.setPassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 573
    :goto_0
    return v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPastDaysToSync(IJ)Z
    .locals 3
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    .line 652
    const-string v1, "ExchangeAccountPolicy.setPastDaysToSync"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 660
    :goto_0
    return v1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    .line 593
    const-string v1, "ExchangeAccountPolicy.setProtocolVersion"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 596
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setProtocolVersion(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 601
    :goto_0
    return v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 423
    const-string v1, "ExchangeAccountPolicy.setSSL"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 426
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 431
    :goto_0
    return v1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "senderName"
    .parameter "accId"

    .prologue
    .line 712
    const-string v1, "ExchangeAccountPolicy.setSenderName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 715
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 720
    :goto_0
    return v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setServerPathPrefix(Ljava/lang/String;J)Z
    .locals 1
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 3
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 622
    const-string v1, "ExchangeAccountPolicy.setSignature"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 625
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 630
    :goto_0
    return v1

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 3
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 513
    const-string v1, "ExchangeAccountPolicy.setSilentVibrateOnEmailNotification"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 516
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 521
    :goto_0
    return v1

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncInterval(IJ)Z
    .locals 3
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    .line 683
    const-string v1, "ExchangeAccountPolicy.setSyncInterval"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 686
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 691
    :goto_0
    return v1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncPeakTimings(IIIJ)Z
    .locals 7
    .parameter "peakDays"
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "accId"

    .prologue
    .line 953
    const-string v0, "ExchangeAccountPolicy.setSyncPeakTimings"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 956
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncPeakTimings(IIIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 961
    :goto_0
    return v0

    .line 957
    :catch_0
    move-exception v6

    .line 958
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 961
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSyncSchedules(IIIJ)Z
    .locals 7
    .parameter "peakSyncSchedule"
    .parameter "offPeakSyncSchedule"
    .parameter "roamingSyncSchedule"
    .parameter "accId"

    .prologue
    .line 988
    const-string v0, "ExchangeAccountPolicy.setSyncSchedules"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 991
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncSchedules(IIIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 997
    :goto_0
    return v0

    .line 993
    :catch_0
    move-exception v6

    .line 994
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 997
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUser(Ljava/lang/String;J)V
    .locals 1
    .parameter "user"
    .parameter "accId"

    .prologue
    .line 368
    const-string v0, "ExchangeAccountPolicy.setUser"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 371
    iput-object p1, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 372
    iput-wide p2, p0, Landroid/app/enterprise/ExchangeAccountPolicy;->mAccId:J

    .line 377
    :cond_0
    return-void
.end method
