.class public Landroid/plugin/dsds/PlugInDsdsServiceImpl;
.super Landroid/plugin/dsds/PlugInDsdsService;
.source "PlugInDsdsServiceImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "plugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/plugin/dsds/PlugInDsdsService;-><init>()V

    return-void
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .parameter "body"
    .parameter "scAddress"
    .parameter "Address"
    .parameter "SmsType"
    .parameter "date"
    .parameter "subscription"

    .prologue
    .line 495
    const/4 v0, 0x2

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "encodingType"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnLikesInfo(II)[I
    .locals 3
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    .line 421
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 422
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 425
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v2

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAdnLikesSimStatusInfo(II)I
    .locals 3
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    .line 431
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 432
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 435
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return v2

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getAdnRecordsInEf(II)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnRecordsSize(II)[I
    .locals 1
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnUri(I)Ljava/lang/String;
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 455
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, mSIMM:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const/4 p1, 0x0

    .line 459
    :cond_0
    if-nez p1, :cond_1

    .line 460
    const-string v1, "content://icc/adn"

    .line 465
    :goto_0
    return-object v1

    .line 461
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 462
    const-string v1, "content://icc2/adn"

    goto :goto_0

    .line 465
    :cond_2
    const-string v1, "content://icc/adn"

    goto :goto_0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallState(I)I
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 174
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallState() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "simSlot"

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCbSettings(I)Landroid/telephony/gsm/CbConfig;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/os/Bundle;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataRoamingEnabled(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public getDataSimSlot()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public getDataSubscription()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 237
    const-string v0, "plugin"

    const-string v1, "getDefaultPhone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 242
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultPhone() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSimForVoiceCalls()I
    .locals 2

    .prologue
    .line 89
    const-string v0, "persist.radio.calldefault.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFdnUri(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFdnEnabled(I)Z
    .locals 6
    .parameter "simSlot"

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v3, "plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccFdnEnabled() simSlot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    const-string v3, "phoneext"

    invoke-static {v3, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 144
    .local v1, phone:Lcom/android/internal/telephony/ITelephonyExt;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 149
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_0
    return v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 147
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getInsertedSimCount()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    return v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 291
    const/4 v0, -0x1

    return v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "networkType"

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo(II)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "networkType"
    .parameter "simSlot"

    .prologue
    .line 383
    :try_start_0
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 384
    .local v0, connMgr:Landroid/net/IConnectivityManager;
    invoke-static {p1, p2}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 386
    .end local v0           #connMgr:Landroid/net/IConnectivityManager;
    :goto_0
    return-object v2

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 157
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkOperator() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 247
    const/4 v0, -0x1

    return v0
.end method

.method public getPin2Retry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 271
    const/4 v0, -0x1

    return v0
.end method

.method public getPinRemainingStatus(II)I
    .locals 1
    .parameter "type"
    .parameter "simSlot"

    .prologue
    .line 283
    const/4 v0, -0x1

    return v0
.end method

.method public getPinRetry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 267
    const/4 v0, -0x1

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getPuk2Retry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 279
    const/4 v0, -0x1

    return v0
.end method

.method public getPukRetry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 275
    const/4 v0, -0x1

    return v0
.end method

.method public getSMSPAvailable(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public getSdnUri(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 469
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingIconField(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    const-string v0, "select_icon_1"

    .line 539
    :goto_0
    return-object v0

    .line 535
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 536
    const-string v0, "select_icon_2"

    goto :goto_0

    .line 539
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingNameField(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    const-string v0, "select_name_1"

    .line 529
    :goto_0
    return-object v0

    .line 525
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 526
    const-string v0, "select_name_2"

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 126
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOperator() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimState()I
    .locals 2

    .prologue
    .line 121
    const-string v0, "plugin"

    const-string v1, "getSimState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 131
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimState() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 198
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberId() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription(Lcom/android/internal/telephony/Phone;)I
    .locals 1
    .parameter "phone"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getTelephonyManagerService(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimPBCapaInfo(I)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 440
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 441
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 444
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 207
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public getVoiceSubscription()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 183
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDualSIM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getActivatedSimNum()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isMsimSupport()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public isNoSIM()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isNoSIM()Z

    move-result v0

    return v0
.end method

.method public isOffhook(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isRinging(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public isSimPinEnabled(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isSimPukLocked(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCapable(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 450
    return-void
.end method

.method public makeMultiSimDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 234
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 1
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public retryGetConnectivityManager()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultipartTextMessage() subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {p6}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 550
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextMessage() subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static/range {p8 .. p8}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 561
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIIII)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartTextMessage() subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static/range {p10 .. p10}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    .line 570
    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "context"
    .parameter "bitmap"
    .parameter "simId"

    .prologue
    .line 82
    return-void
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 0
    .parameter "simSlot"
    .parameter "value"

    .prologue
    .line 319
    return-void
.end method

.method public setDataSubscription(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultSimForVoiceCalls(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public setRadioPower(ZI)V
    .locals 0
    .parameter "power"
    .parameter "simSlot"

    .prologue
    .line 154
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 1
    .parameter "pin"
    .parameter "simSlot"

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "puk"
    .parameter "pin"
    .parameter "simSlot"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public switchNetworkTypeDualToSingle(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public switchNetworkTypeSingleToDual(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public switchToSim1DataNetwork()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public switchToSim1DataNetwork(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 360
    return-void
.end method

.method public switchToSim2DataNetwork()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public switchToSim2DataNetwork(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 363
    return-void
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 1
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .parameter "simSlot"

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .parameter "simSlot"

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public updateSmsServiceCenterOnSim(Ljava/lang/String;I)Z
    .locals 1
    .parameter "scAddress"
    .parameter "subscription"

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method
