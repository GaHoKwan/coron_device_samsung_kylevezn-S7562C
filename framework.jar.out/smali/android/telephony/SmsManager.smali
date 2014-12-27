.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field protected static final COPY_TO_SIM_FAIL:I = 0x1

.field protected static final COPY_TO_SIM_NOT_AVAILABLE:I = 0x2

.field protected static final COPY_TO_SIM_SIM_FULL:I = 0x3

.field protected static final COPY_TO_SIM_SUCCESS:I = 0x0

.field static final GSM_SMS_FAIL_CAUSE_DSAC_FAIL:I = 0xd6

.field protected static final ISMS:Ljava/lang/String; = "isms"

.field private static final LOG_TAG:Ljava/lang/String; = "SmsManager"

.field public static final RESULT_ERROR_DSAC_FAILURE:I = 0x7

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field public static final VALUE_INPUT_MODE_AUTO:I = 0x2

.field public static final VALUE_INPUT_MODE_GSM7BIT:I = 0x0

.field public static final VALUE_INPUT_MODE_UCS2:I = 0x1

.field static mMsgEncodingType:I

.field private static final sInstance:Landroid/telephony/SmsManager;


# instance fields
.field protected mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 1188
    const/4 v0, 0x0

    sput v0, Landroid/telephony/SmsManager;->mMsgEncodingType:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const-string v0, "isms"

    iput-object v0, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    .line 587
    return-void
.end method

.method protected static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 1124
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1125
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1126
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1128
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1129
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1130
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1131
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1136
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 581
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 10
    .parameter "body"
    .parameter "scAddress"
    .parameter "Address"
    .parameter "SmsType"
    .parameter "date"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 636
    const/4 v3, 0x0

    .line 637
    .local v3, result:Z
    const/4 v4, 0x0

    .local v4, smsc:[B
    const/4 v1, 0x0

    .line 640
    .local v1, pdu:[B
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSMSAvailable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 641
    const-string v7, "SmsManager"

    const-string v8, "getSimDeliverPdu : COPY_TO_SIM_NOT_AVAILABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_0
    return v6

    .line 645
    :cond_0
    if-ne p4, v7, :cond_2

    .line 647
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2, p3, p1, p5, v6}, Landroid/telephony/SmsMessage;->getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v2

    .line 648
    .local v2, pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    if-eqz v2, :cond_1

    .line 649
    iget-object v4, v2, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 650
    iget-object v1, v2, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_1
    const/4 v5, 0x1

    .line 677
    .end local v2           #pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    .local v5, status:I
    :goto_1
    if-nez v4, :cond_5

    if-nez v1, :cond_5

    move v6, v7

    .line 678
    goto :goto_0

    .line 652
    .end local v5           #status:I
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimDeliverPdu Encoding ERR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 654
    goto :goto_0

    .line 660
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x0

    :try_start_1
    invoke-static {p2, p3, p1, v8}, Landroid/telephony/SmsMessage;->getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 661
    .local v2, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    if-eqz v2, :cond_3

    .line 662
    iget-object v4, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 663
    iget-object v1, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :cond_3
    if-ne p4, v6, :cond_4

    .line 671
    const/4 v5, 0x5

    .restart local v5       #status:I
    goto :goto_1

    .line 665
    .end local v2           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    .end local v5           #status:I
    :catch_1
    move-exception v0

    .line 666
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimSubmitPdu Encoding ERR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 667
    goto :goto_0

    .line 673
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v5, 0x7

    .restart local v5       #status:I
    goto :goto_1

    .line 681
    .end local v2           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_5
    invoke-virtual {p0, v4, v1, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v3

    .line 683
    if-eqz v3, :cond_6

    .line 684
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->resetSimFullStatus()V

    .line 685
    const/4 v6, 0x0

    goto :goto_0

    .line 687
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSimFullStatus()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 688
    const-string v6, "SmsManager"

    const-string v7, "getSimFullStatus: 3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v6, 0x3

    goto :goto_0

    :cond_7
    move v6, v7

    .line 691
    goto :goto_0
.end method

.method public SetServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "ServiceName"

    .prologue
    .line 590
    iput-object p1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 3
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 607
    const/4 v1, 0x0

    .line 610
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 611
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 618
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 614
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 4
    .parameter "messageIndex"

    .prologue
    .line 845
    const/4 v2, 0x0

    .line 846
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 847
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 850
    :try_start_0
    iget-object v3, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 851
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 852
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 858
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 854
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 5
    .parameter "messageIdentifier"

    .prologue
    .line 987
    const/4 v1, 0x0

    .line 990
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 991
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableCellBroadcast : mServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-eqz v0, :cond_0

    .line 993
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 999
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 995
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 5
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1051
    const/4 v1, 0x0

    .line 1054
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1055
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableCellBroadcastRange : mServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1063
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1059
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "encodingType"
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
    .line 267
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 5
    .parameter "messageIdentifier"

    .prologue
    .line 956
    const/4 v1, 0x0

    .line 959
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 960
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCellBroadcast : mServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-eqz v0, :cond_0

    .line 962
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 968
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 964
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 5
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1019
    const/4 v1, 0x0

    .line 1022
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1023
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableCellBroadcastRange : mServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    if-eqz v0, :cond_0

    .line 1025
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1031
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1027
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    const/4 v1, 0x0

    .line 903
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 904
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 905
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 911
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 907
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 775
    const-string v8, "SmsManager"

    const-string v9, "[CB] In getCbConfig"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v6, 0x0

    .line 779
    .local v6, out:[B
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 782
    .local v0, cbConfig:Landroid/telephony/gsm/CbConfig;
    :try_start_0
    iget-object v8, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 784
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_1

    .line 785
    invoke-interface {v3}, Lcom/android/internal/telephony/ISms;->getCbSettings()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 798
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    if-nez v6, :cond_2

    .line 799
    const-string v8, "SmsManager"

    const-string v9, "[CB] out is null. Return null."

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 830
    .end local v0           #cbConfig:Landroid/telephony/gsm/CbConfig;
    :cond_0
    :goto_1
    return-object v0

    .line 787
    .restart local v0       #cbConfig:Landroid/telephony/gsm/CbConfig;
    .restart local v3       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :try_start_1
    const-string v8, "SmsManager"

    const-string v9, "[CB] iccISms == null."

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v7

    .line 788
    goto :goto_1

    .line 790
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 792
    .local v1, ex:Landroid/os/RemoteException;
    const-string v8, "SmsManager"

    const-string v9, "[CB ] Exception In getCbConfig of SmsManager.java  "

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 793
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 795
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v8, "SmsManager"

    const-string v9, "[CB ] NULL Exception In getCbConfig of SmsManager.java  "

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_2
    aget-byte v7, v6, v11

    if-ne v7, v10, :cond_3

    .line 804
    iput-boolean v10, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 808
    :goto_2
    aget-byte v7, v6, v10

    int-to-char v7, v7

    iput-char v7, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 809
    const/16 v7, 0x3e8

    iput-char v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 810
    const/4 v7, 0x3

    aget-byte v7, v6, v7

    iput v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 812
    iget v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    new-array v5, v7, [S

    .line 814
    .local v5, msgIDs:[S
    const/4 v2, 0x4

    .local v2, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    array-length v7, v5

    if-ge v4, v7, :cond_4

    .line 816
    aget-byte v7, v6, v2

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v5, v4

    .line 814
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 806
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v5           #msgIDs:[S
    :cond_3
    iput-boolean v11, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    goto :goto_2

    .line 819
    .restart local v2       #i:I
    .restart local v4       #j:I
    .restart local v5       #msgIDs:[S
    :cond_4
    iput-object v5, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 821
    const-string v7, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SmsManger- CB] bCBEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " selectedId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msgIdMaxCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msgIdCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v2, 0x0

    :goto_4
    iget-object v7, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 827
    const-string v7, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CB] msgIDs =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public getMessagesFromIcc(I)[B
    .locals 3
    .parameter "index"

    .prologue
    .line 926
    const/4 v1, 0x0

    .line 929
    .local v1, record:[B
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 930
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getMessagesFromIccEf(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 936
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 933
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSAvailable()Z
    .locals 5

    .prologue
    .line 712
    const-string v3, "SmsManager"

    const-string v4, "getSMSAvailable in SmsManager"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v2, 0x0

    .line 715
    .local v2, ret:Z
    :try_start_0
    iget-object v3, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 717
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 718
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 724
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "[CB ] Exception In getSMSAvailable() of SmsManager.java  "

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSMSPAvailable()Z
    .locals 5

    .prologue
    .line 744
    const-string v3, "SmsManager"

    const-string v4, "getSMSPAvailable in SmsManager"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v2, 0x0

    .line 748
    .local v2, ret:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 750
    :try_start_0
    iget-object v3, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 751
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 752
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSPAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 759
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 754
    :catch_0
    move-exception v0

    .line 756
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "[CB ] Exception In getSMSPAvailable() of SmsManager.java  "

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSimFullStatus()Z
    .locals 5

    .prologue
    .line 697
    const-string v3, "SmsManager"

    const-string v4, "getSimFullStatus in SmsManager"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v2, 0x0

    .line 700
    .local v2, ret:Z
    :try_start_0
    iget-object v3, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 701
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 702
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSimFullStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 708
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 704
    :catch_0
    move-exception v0

    .line 706
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "Exception In getSimFullStatus() of SmsManager.java\t"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetSimFullStatus()V
    .locals 4

    .prologue
    .line 729
    const-string v2, "SmsManager"

    const-string/jumbo v3, "resetSimFullStatus in SmsManager"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 732
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 733
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->resetSimFullStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v3, "Exception In resetSimFullStatus() of SmsManager.java  "

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const v2, 0xffff

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :cond_0
    if-eqz p5, :cond_1

    array-length v1, p5

    if-nez v1, :cond_2

    .line 561
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 566
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 567
    and-int v3, p3, v2

    and-int v4, p4, v2

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 539
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 544
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 545
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
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
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 310
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 317
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 318
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 319
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 326
    :cond_4
    const/4 v5, 0x0

    .line 327
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 328
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 329
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 331
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 332
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 334
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 322
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
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
            "I)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 396
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 401
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 402
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 403
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 410
    :cond_4
    const/4 v5, 0x0

    .line 411
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 412
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 415
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 416
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 418
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    goto :goto_0

    .line 406
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 12
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
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
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 355
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 356
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 362
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 363
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 365
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 373
    :cond_4
    const/4 v6, 0x0

    .line 374
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 375
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 376
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 378
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 382
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    goto :goto_0

    .line 369
    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V
    .locals 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmID"
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
    .line 428
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 432
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 439
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 440
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_3

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 442
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 450
    :cond_4
    const/4 v6, 0x0

    .line 451
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 452
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 453
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 455
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 456
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 459
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    goto :goto_0

    .line 446
    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"

    .prologue
    .line 223
    const-string v1, "SmsManager"

    const-string/jumbo v2, "sendOTADomestic in SmsManager"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 237
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 238
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 120
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 121
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "callbackNumber"
    .parameter "priority"

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 210
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    .line 211
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 154
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 155
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmID"

    .prologue
    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 182
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 183
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/ISms;->sendTextwithOptionsReadconfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "NoOfOccur"
    .parameter "Category"
    .parameter "Language"
    .parameter "categoryResult"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x0

    .line 469
    const/4 v6, 0x0

    .line 470
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 472
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 473
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 475
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 476
    invoke-virtual {p7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 480
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 481
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 482
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCDMASmsReassembly(Z)V
    .locals 5
    .parameter "onOff"

    .prologue
    .line 492
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 493
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 494
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->setCDMASmsReassembly(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expcetion in setCDMASmsReassembly "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 3
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 876
    const/4 v1, 0x0

    .line 879
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 880
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 881
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 887
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 883
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateSmsServiceCenterOnSim(Ljava/lang/String;)Z
    .locals 9
    .parameter "scAddress"

    .prologue
    .line 1080
    const/4 v5, 0x0

    .line 1085
    .local v5, success:Z
    if-nez p1, :cond_1

    .line 1086
    const/4 v0, 0x0

    .line 1099
    .local v0, encodedScAddress:[B
    :goto_0
    :try_start_0
    iget-object v7, p0, Landroid/telephony/SmsManager;->mServiceName:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 1101
    .local v4, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v4, :cond_0

    .line 1102
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/ISms;->updateSmsServiceCenterOnSimEf([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v4           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_1
    move v6, v5

    .line 1108
    .end local v0           #encodedScAddress:[B
    .end local v5           #success:Z
    .local v6, success:I
    :goto_2
    return v6

    .line 1088
    .end local v6           #success:I
    .restart local v5       #success:Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1089
    .local v3, numberLenReal:I
    move v2, v3

    .line 1090
    .local v2, numberLenEffective:I
    const/16 v7, 0x2b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const/4 v1, 0x1

    .line 1091
    .local v1, hasPlus:Z
    :goto_3
    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 1092
    :cond_2
    const/16 v7, 0x14

    if-le v2, v7, :cond_4

    move v6, v5

    .line 1093
    .restart local v6       #success:I
    goto :goto_2

    .line 1090
    .end local v1           #hasPlus:Z
    .end local v6           #success:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 1095
    .restart local v1       #hasPlus:Z
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0       #encodedScAddress:[B
    goto :goto_0

    .line 1104
    .end local v1           #hasPlus:Z
    .end local v2           #numberLenEffective:I
    .end local v3           #numberLenReal:I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJ)I
    .locals 1
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timeStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    return v0
.end method
