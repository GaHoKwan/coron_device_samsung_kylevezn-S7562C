.class public Lcom/android/internal/telephony/MultiSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MultiSimPhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MULTISIMPHONEFACTORY"

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 46
    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 53
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneNotifier;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "simSlot"

    .prologue
    .line 243
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 252
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v4, v4, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 256
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 257
    return-object v0

    .line 246
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v4, v4, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 247
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 256
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 230
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "simSlot"

    .prologue
    .line 261
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v4, v4, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 263
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 264
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 66
    const-class v14, Lcom/android/internal/telephony/Phone;

    monitor-enter v14

    .line 67
    :try_start_0
    sget-boolean v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sMadeDefaults:Z

    if-nez v13, :cond_a

    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    sput-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sLooper:Landroid/os/Looper;

    .line 69
    sput-object p0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    .line 71
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v13, :cond_0

    .line 72
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v15, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v13, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 220
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 76
    :cond_0
    const/4 v10, 0x0

    .line 78
    .local v10, retryCount:I
    :goto_0
    const/4 v4, 0x0

    .line 79
    .local v4, hasException:Z
    add-int/lit8 v10, v10, 0x1

    .line 84
    :try_start_1
    new-instance v13, Landroid/net/LocalServerSocket;

    const-string v15, "com.android.internal.telephony"

    invoke-direct {v13, v15}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :goto_1
    if-nez v4, :cond_1

    .line 101
    const/4 v12, 0x0

    .local v12, simSlotNum:I
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 102
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    new-instance v15, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v15, v12}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    aput-object v15, v13, v12

    .line 101
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 85
    .end local v12           #simSlotNum:I
    :catch_0
    move-exception v3

    .line 86
    .local v3, ex:Ljava/io/IOException;
    const/4 v4, 0x1

    goto :goto_1

    .line 91
    .end local v3           #ex:Ljava/io/IOException;
    :cond_1
    const/4 v13, 0x3

    if-le v10, v13, :cond_2

    .line 92
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v15, "PhoneFactory probably already running"

    invoke-direct {v13, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :cond_2
    const-wide/16 v15, 0x7d0

    :try_start_3
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v13

    goto :goto_0

    .line 106
    .restart local v12       #simSlotNum:I
    :cond_3
    const/4 v9, 0x0

    .line 107
    .local v9, preferredNetworkMode:I
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    .line 108
    const/4 v9, 0x7

    .line 110
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "preferred_network_mode"

    invoke-static {v13, v15, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 112
    .local v7, networkMode:I
    const-string v13, "MULTISIMPHONEFACTORY"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Network Mode set to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v5

    .line 120
    .local v5, lteOnCdma:I
    packed-switch v5, :pswitch_data_0

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "preferred_cdma_subscription"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, cdmaSubscription:I
    const-string v13, "MULTISIMPHONEFACTORY"

    const-string v15, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_3
    const-string v13, "MULTISIMPHONEFACTORY"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cdma Subscription set to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v12, 0x0

    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 142
    const-string v13, "persist.radio.networktype"

    invoke-static {v13, v12}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "0"

    invoke-static {v13, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 143
    const-string v13, "MULTISIMPHONEFACTORY"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "simSlotNum = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", networkMode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v15, Lcom/android/internal/telephony/RIL;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v1, v12}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    aput-object v15, v13, v12

    .line 141
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 122
    .end local v1           #cdmaSubscription:I
    :pswitch_0
    const/4 v1, 0x1

    .line 123
    .restart local v1       #cdmaSubscription:I
    const-string v13, "MULTISIMPHONEFACTORY"

    const-string v15, "lteOnCdma is 0 use SUBSCRIPTION_FROM_NV"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 126
    .end local v1           #cdmaSubscription:I
    :pswitch_1
    const/4 v1, 0x0

    .line 127
    .restart local v1       #cdmaSubscription:I
    const-string v13, "MULTISIMPHONEFACTORY"

    const-string v15, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 148
    :cond_5
    const/4 v12, 0x0

    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 149
    const/4 v6, 0x0

    .line 169
    .local v6, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getPhoneType(I)I

    move-result v8

    .line 170
    .local v8, phoneType:I
    const/4 v13, 0x1

    if-ne v8, v13, :cond_7

    .line 171
    const-string v13, "MULTISIMPHONEFACTORY"

    const-string v15, "Creating GSMPhone"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v6           #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v13, v13, v12

    sget-object v15, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v15, v15, v12

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v15, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 173
    .restart local v6       #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v15, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v15, v6}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v15, v13, v12

    .line 148
    :cond_6
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 175
    :cond_7
    const/4 v13, 0x2

    if-ne v8, v13, :cond_6

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v13

    packed-switch v13, :pswitch_data_1

    .line 192
    const-string v13, "MULTISIMPHONEFACTORY"

    const-string v15, "Creating CDMAPhone"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v6           #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v13, v13, v12

    sget-object v15, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v15, v15, v12

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 194
    .restart local v6       #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v15, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v15, v6}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v15, v13, v12

    goto :goto_6

    .line 178
    :pswitch_2
    const-string v13, "MULTISIMPHONEFACTORY"

    const-string v15, "Creating CDMALTEPhone"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v6, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v6           #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v13, v13, v12

    sget-object v15, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v15, v15, v12

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v15}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 180
    .restart local v6       #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v15, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v15, v6}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v15, v13, v12

    goto :goto_6

    .line 205
    .end local v6           #mPhone:Lcom/android/internal/telephony/Phone;
    .end local v8           #phoneType:I
    :cond_8
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sMadeDefaults:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    :try_start_5
    const-string v13, "MULTISIMPHONEFACTORY"

    const-string v15, "Adding SimCardAuthenticationService"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v12, 0x0

    :goto_7
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v13

    if-ge v12, v13, :cond_9

    .line 210
    new-instance v11, Lcom/orange/authentication/simcard/SimCardAuthenticationService;

    sget-object v13, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v13, v13, v12

    sget-object v15, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-direct {v11, v13, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V

    .line 211
    .local v11, service:Lcom/orange/authentication/simcard/SimCardAuthenticationService;
    const-string v13, "com.orange.authentication.simcard"

    invoke-static {v13, v12}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 209
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 213
    .end local v11           #service:Lcom/orange/authentication/simcard/SimCardAuthenticationService;
    :catch_2
    move-exception v2

    .line 214
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v13, "MULTISIMPHONEFACTORY"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Adding SimCardAuthenticationService failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->setDefaultPhone()V

    .line 220
    .end local v1           #cdmaSubscription:I
    .end local v4           #hasException:Z
    .end local v5           #lteOnCdma:I
    .end local v7           #networkMode:I
    .end local v9           #preferredNetworkMode:I
    .end local v10           #retryCount:I
    .end local v12           #simSlotNum:I
    :cond_a
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 221
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private static setDefaultPhone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 225
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 226
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 227
    return-void
.end method
