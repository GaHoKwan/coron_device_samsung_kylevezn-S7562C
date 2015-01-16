.class public Landroid/app/enterprise/EmailAccountPolicy;
.super Ljava/lang/Object;
.source "EmailAccountPolicy.java"


# static fields
.field public static final ACCOUNT_TYPE_IMAP:Ljava/lang/String; = "imap"

.field public static final ACCOUNT_TYPE_POP3:Ljava/lang/String; = "pop3"

.field public static final ACTION_EMAIL_ACCOUNT_ADD_RESULT:Ljava/lang/String; = "android.intent.action.sec.EMAIL_ACCOUNT_ADD_RESULT"

.field public static final ACTION_EMAIL_ACCOUNT_DELETE_RESULT:Ljava/lang/String; = "android.intent.action.sec.EMAIL_ACCOUNT_DELETE_RESULT"

.field public static final ACTION_EMAIL_DELETE_NOT_VALIDATED_ACCOUNT:Ljava/lang/String; = "android.intent.action.sec.EMAIL_DELETE_NOT_VALIDATED_ACCOUNT"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final EXTRA_EMAIL_ADDRESS:Ljava/lang/String; = "email_id"

.field public static final EXTRA_INCOMING_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final EXTRA_INCOMING_SERVER_ADDRESS:Ljava/lang/String; = "receive_host"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IEmailAccountPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "EmailAccountPolicy"

    sput-object v0, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    .line 167
    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 13
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"

    .prologue
    .line 211
    const-string v0, "EmailAccountPolicy.addNewAccount"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/app/enterprise/IEmailAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 224
    :goto_0
    return-wide v0

    .line 220
    :catch_0
    move-exception v12

    .line 221
    .local v12, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with email account policy"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .locals 22
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"
    .parameter "sendSSL"
    .parameter "sendTLS"
    .parameter "sendAllCert"
    .parameter "recvSSL"
    .parameter "recvTLS"
    .parameter "recvAllCert"
    .parameter "signature"
    .parameter "isNotify"

    .prologue
    .line 236
    const-string v1, "EmailAccountPolicy.addNewAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    invoke-interface/range {v1 .. v20}, Landroid/app/enterprise/IEmailAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 252
    :goto_0
    return-wide v1

    .line 248
    :catch_0
    move-exception v21

    .line 249
    .local v21, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    move-object/from16 v0, v21

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v21           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 1081
    const-string v1, "EmailAccountPolicy.deleteAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 1084
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->deleteAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1089
    :goto_0
    return v1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    .line 1052
    const-string v1, "EmailAccountPolicy.getAccountDetails"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 1055
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1060
    :goto_0
    return-object v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "emailId"
    .parameter "serverAddress"
    .parameter "protocol"

    .prologue
    .line 1024
    const-string v1, "EmailAccountPolicy.getAccountId"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 1027
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1032
    :goto_0
    return-wide v1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1032
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAllEmailAccounts()[Landroid/app/enterprise/Account;
    .locals 3

    .prologue
    .line 1127
    const-string v1, "EmailAccountPolicy.getAllEmailAccounts"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 1130
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEmailAccountPolicy;->getAllEmailAccounts()[Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1135
    :goto_0
    return-object v1

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 3

    .prologue
    .line 1104
    const-string v1, "EmailAccountPolicy.sendAccountsChangedBroadcast"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 1107
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEmailAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 275
    const-string v1, "EmailAccountPolicy.setAccountName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 278
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
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
    .line 431
    const-string v1, "EmailAccountPolicy.setAlwaysVibrateOnEmailNotification"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 434
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 440
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 991
    const-string v1, "EmailAccountPolicy.setAsDefaultAccount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 994
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 999
    :goto_0
    return v1

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 305
    const-string v1, "EmailAccountPolicy.setEmailAddress"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setEmailAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 313
    :goto_0
    return-wide v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 496
    const-string v1, "EmailAccountPolicy.setInComingProtocol"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 499
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingProtocol(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 504
    :goto_0
    return v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 622
    const-string v1, "EmailAccountPolicy.setInComingServerAcceptAllCertificates"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 625
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 631
    :goto_0
    return v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 527
    const-string v1, "EmailAccountPolicy.setInComingServerAddress"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 530
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 535
    :goto_0
    return-wide v1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingServerLogin(Ljava/lang/String;J)J
    .locals 3
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 653
    const-string v1, "EmailAccountPolicy.setInComingServerLogin"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 656
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerLogin(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 661
    :goto_0
    return-wide v1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 683
    const-string v1, "EmailAccountPolicy.setInComingServerPassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 686
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPassword(Ljava/lang/String;J)Z
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
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 714
    const-string v1, "EmailAccountPolicy.setInComingServerPathPrefix"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 717
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 722
    :goto_0
    return v1

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPort(IJ)Z
    .locals 3
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 557
    const-string v1, "EmailAccountPolicy.setInComingServerPort"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 560
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPort(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 565
    :goto_0
    return v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 589
    const-string v1, "EmailAccountPolicy.setInComingServerSSL"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 592
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 597
    :goto_0
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingProtocol(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 744
    const-string v1, "EmailAccountPolicy.setOutGoingProtocol"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 747
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingProtocol(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 752
    :goto_0
    return v1

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 870
    const-string v1, "EmailAccountPolicy.setOutGoingServerAcceptAllCertificates"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 873
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 879
    :goto_0
    return v1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 775
    const-string v1, "EmailAccountPolicy.setOutGoingServerAddress"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 778
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 783
    :goto_0
    return-wide v1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setOutGoingServerLogin(Ljava/lang/String;J)J
    .locals 3
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 902
    const-string v1, "EmailAccountPolicy.setOutGoingServerLogin"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 903
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 905
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerLogin(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 910
    :goto_0
    return-wide v1

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 932
    const-string v1, "EmailAccountPolicy.setOutGoingServerPassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 935
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 940
    :goto_0
    return v1

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 963
    const-string v1, "EmailAccountPolicy.setOutGoingServerPathPrefix"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 966
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 971
    :goto_0
    return v1

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPort(IJ)Z
    .locals 3
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 805
    const-string v1, "EmailAccountPolicy.setOutGoingServerPort"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPort(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 813
    :goto_0
    return v1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 837
    const-string v1, "EmailAccountPolicy.setOutGoingServerSSL"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 840
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 845
    :goto_0
    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
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
    .line 368
    const-string v1, "EmailAccountPolicy.setSenderName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 3
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 398
    const-string v1, "EmailAccountPolicy.setSignature"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 401
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 406
    :goto_0
    return v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
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
    .line 465
    const-string v1, "EmailAccountPolicy.setSilentVibrateOnEmailNotification"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 474
    :goto_0
    return v1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
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
    .line 338
    const-string v1, "EmailAccountPolicy.setSyncInterval"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 346
    :goto_0
    return v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
