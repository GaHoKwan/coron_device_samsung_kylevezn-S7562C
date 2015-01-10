.class public Lcom/android/phone/DsaResult;
.super Landroid/app/Activity;
.source "DsaResult.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaResult;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 24
    iget-object v0, p0, Lcom/android/phone/DsaResult;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public CheckDsaResult()Z
    .locals 4

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, dsaResult:Z
    const-string v1, "DsaSelectSimCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckDsaResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/DsaResult;->checkDsaStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dsaCFNRcResult_SIM1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dsaCWResult_SIM1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dsaCFNRcResult_SIM2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dsaCWResult_SIM2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/android/phone/DsaResult;->checkDsaStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 364
    const/4 v0, 0x0

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 340
    :pswitch_0
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v1, :cond_0

    .line 343
    const/4 v0, 0x1

    goto :goto_0

    .line 348
    :pswitch_1
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v1, :cond_0

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :pswitch_2
    sget v1, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v1, :cond_0

    .line 358
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkDsaStatus()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v1, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const-string v2, "SelectSimStatus"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "SimStatus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public makeDeactiveSuccessString(I)Ljava/lang/String;
    .locals 8
    .parameter "simId"

    .prologue
    .line 293
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v7, 0x7f0e07ab

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, strSim1:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v7, 0x7f0e07ac

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, strSim2:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0065

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, strCf:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0061

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, strCw:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0354

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, strResult:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, str:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 307
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public makeFailString(I)Ljava/lang/String;
    .locals 14
    .parameter "simId"

    .prologue
    const v13, 0x7f0e0352

    const v12, 0x7f0e0351

    const v11, 0x7f0e07c3

    .line 102
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v10, 0x7f0e07ab

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, strSim1:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v10, 0x7f0e07ac

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, strSim2:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0065

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, strCf:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0061

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, strCw:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 114
    sget v9, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    packed-switch v9, :pswitch_data_0

    .line 126
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, strCfResult:Ljava/lang/String;
    :goto_0
    sget v9, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    packed-switch v9, :pswitch_data_1

    .line 141
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, strCwResult2:Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .end local v2           #strCfResult:Ljava/lang/String;
    .end local v6           #strCwResult2:Ljava/lang/String;
    .local v0, str:Ljava/lang/String;
    :goto_2
    return-object v0

    .line 117
    .end local v0           #str:Ljava/lang/String;
    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2       #strCfResult:Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v2           #strCfResult:Ljava/lang/String;
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2       #strCfResult:Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v2           #strCfResult:Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2       #strCfResult:Ljava/lang/String;
    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    .restart local v6       #strCwResult2:Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v6           #strCwResult2:Ljava/lang/String;
    :pswitch_4
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    .restart local v6       #strCwResult2:Ljava/lang/String;
    goto :goto_1

    .line 138
    .end local v6           #strCwResult2:Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 139
    .restart local v6       #strCwResult2:Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v2           #strCfResult:Ljava/lang/String;
    .end local v6           #strCwResult2:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 153
    sget v9, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    packed-switch v9, :pswitch_data_2

    .line 165
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, strCfResult2:Ljava/lang/String;
    :goto_3
    sget v9, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    packed-switch v9, :pswitch_data_3

    .line 181
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, strCwResult:Ljava/lang/String;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto/16 :goto_2

    .line 156
    .end local v0           #str:Ljava/lang/String;
    .end local v3           #strCfResult2:Ljava/lang/String;
    .end local v5           #strCwResult:Ljava/lang/String;
    :pswitch_6
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .restart local v3       #strCfResult2:Ljava/lang/String;
    goto :goto_3

    .line 159
    .end local v3           #strCfResult2:Ljava/lang/String;
    :pswitch_7
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .restart local v3       #strCfResult2:Ljava/lang/String;
    goto :goto_3

    .line 162
    .end local v3           #strCfResult2:Ljava/lang/String;
    :pswitch_8
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3       #strCfResult2:Ljava/lang/String;
    goto :goto_3

    .line 172
    :pswitch_9
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    .restart local v5       #strCwResult:Ljava/lang/String;
    goto :goto_4

    .line 175
    .end local v5           #strCwResult:Ljava/lang/String;
    :pswitch_a
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .restart local v5       #strCwResult:Ljava/lang/String;
    goto :goto_4

    .line 178
    .end local v5           #strCwResult:Ljava/lang/String;
    :pswitch_b
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5       #strCwResult:Ljava/lang/String;
    goto :goto_4

    .line 193
    .end local v3           #strCfResult2:Ljava/lang/String;
    .end local v5           #strCwResult:Ljava/lang/String;
    :cond_1
    sget v9, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    packed-switch v9, :pswitch_data_4

    .line 205
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2       #strCfResult:Ljava/lang/String;
    :goto_5
    sget v9, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    packed-switch v9, :pswitch_data_5

    .line 220
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5       #strCwResult:Ljava/lang/String;
    :goto_6
    sget v9, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    packed-switch v9, :pswitch_data_6

    .line 236
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3       #strCfResult2:Ljava/lang/String;
    :goto_7
    sget v9, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    packed-switch v9, :pswitch_data_7

    .line 252
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 257
    .restart local v6       #strCwResult2:Ljava/lang/String;
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto/16 :goto_2

    .line 196
    .end local v0           #str:Ljava/lang/String;
    .end local v2           #strCfResult:Ljava/lang/String;
    .end local v3           #strCfResult2:Ljava/lang/String;
    .end local v5           #strCwResult:Ljava/lang/String;
    .end local v6           #strCwResult2:Ljava/lang/String;
    :pswitch_c
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2       #strCfResult:Ljava/lang/String;
    goto/16 :goto_5

    .line 199
    .end local v2           #strCfResult:Ljava/lang/String;
    :pswitch_d
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    .restart local v2       #strCfResult:Ljava/lang/String;
    goto/16 :goto_5

    .line 202
    .end local v2           #strCfResult:Ljava/lang/String;
    :pswitch_e
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .restart local v2       #strCfResult:Ljava/lang/String;
    goto/16 :goto_5

    .line 211
    :pswitch_f
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 212
    .restart local v5       #strCwResult:Ljava/lang/String;
    goto/16 :goto_6

    .line 214
    .end local v5           #strCwResult:Ljava/lang/String;
    :pswitch_10
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    .restart local v5       #strCwResult:Ljava/lang/String;
    goto/16 :goto_6

    .line 217
    .end local v5           #strCwResult:Ljava/lang/String;
    :pswitch_11
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .restart local v5       #strCwResult:Ljava/lang/String;
    goto/16 :goto_6

    .line 227
    :pswitch_12
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .restart local v3       #strCfResult2:Ljava/lang/String;
    goto/16 :goto_7

    .line 230
    .end local v3           #strCfResult2:Ljava/lang/String;
    :pswitch_13
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .restart local v3       #strCfResult2:Ljava/lang/String;
    goto/16 :goto_7

    .line 233
    .end local v3           #strCfResult2:Ljava/lang/String;
    :pswitch_14
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .restart local v3       #strCfResult2:Ljava/lang/String;
    goto/16 :goto_7

    .line 243
    :pswitch_15
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 244
    .restart local v6       #strCwResult2:Ljava/lang/String;
    goto/16 :goto_8

    .line 246
    .end local v6           #strCwResult2:Ljava/lang/String;
    :pswitch_16
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 247
    .restart local v6       #strCwResult2:Ljava/lang/String;
    goto/16 :goto_8

    .line 249
    .end local v6           #strCwResult2:Ljava/lang/String;
    :pswitch_17
    iget-object v9, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 250
    .restart local v6       #strCwResult2:Ljava/lang/String;
    goto/16 :goto_8

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 129
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 153
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 169
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 193
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 208
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 224
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 240
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public makeResultInformation(I)Ljava/lang/String;
    .locals 6
    .parameter "resultType"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, str:Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/DsaResult;->checkDsaStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    if-ne p1, v5, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/DsaResult;->checkDsaStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 97
    :cond_1
    :goto_1
    return-object v0

    .line 40
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/phone/DsaResult;->makeSuccessString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaResult;->makeSuccessString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    goto :goto_0

    .line 44
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/phone/DsaResult;->makeSuccessString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/phone/DsaResult;->makeSuccessString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    goto :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/android/phone/DsaResult;->makeDeactiveSuccessString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    goto :goto_1

    .line 64
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/phone/DsaResult;->makeDeactiveSuccessString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    goto :goto_1

    .line 68
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/android/phone/DsaResult;->makeDeactiveSuccessString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    goto :goto_1

    .line 76
    :cond_2
    if-nez p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/DsaResult;->checkDsaStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 80
    :pswitch_6
    invoke-virtual {p0, v5}, Lcom/android/phone/DsaResult;->makeFailString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    goto :goto_1

    .line 84
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/android/phone/DsaResult;->makeFailString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    goto :goto_1

    .line 88
    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/android/phone/DsaResult;->makeFailString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_1

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 58
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 78
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public makeSuccessString(I)Ljava/lang/String;
    .locals 13
    .parameter "simId"

    .prologue
    const v12, 0x7f0e07c8

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 272
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v7, 0x7f0e07ab

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, strSim1:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const v7, 0x7f0e07ac

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, strSim2:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    const-string v7, "dsa_phone_number"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, Pref:Landroid/content/SharedPreferences;
    const-string v6, "dsa_phone_number_sim1"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, phoneNB1:Ljava/lang/String;
    const-string v6, "dsa_phone_number_sim2"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, phoneNB2:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v4, v8, v10

    aput-object v2, v8, v11

    invoke-virtual {v7, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, str:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 286
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/DsaResult;->mContext:Landroid/content/Context;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    aput-object v5, v8, v10

    aput-object v1, v8, v11

    invoke-virtual {v7, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_0
.end method
