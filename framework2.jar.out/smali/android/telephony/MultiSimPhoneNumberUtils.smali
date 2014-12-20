.class public Landroid/telephony/MultiSimPhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "MultiSimPhoneNumberUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MultiSimPhoneNumberUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "dialStr"
    .parameter "simSlot"

    .prologue
    .line 548
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    const-string v2, "gsm.operator.iso-country"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    invoke-static {v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/MultiSimPhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 560
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .parameter "number"
    .parameter "simSlot"

    .prologue
    .line 259
    const/4 v3, 0x0

    .line 260
    .local v3, clir:I
    const/4 v10, 0x0

    .line 264
    .local v10, isRoaming:I
    if-nez p0, :cond_1

    const/4 v5, 0x0

    .line 375
    :cond_0
    :goto_0
    return-object v5

    .line 267
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 268
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    .line 273
    :cond_3
    const-string v19, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 288
    .local v18, words:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v4, v18, v19

    .line 292
    .local v4, dialNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/MultiSimPhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    const-string v14, ""

    .line 300
    .local v14, numbers:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v19

    if-nez v19, :cond_5

    .line 301
    const/4 v15, 0x1

    .line 306
    .local v15, simNumber:I
    :goto_1
    const-string v19, "CHN"

    const-string v20, "CHN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 307
    const/4 v8, 0x0

    .line 308
    .local v8, i:I
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ril.ecclist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 309
    .local v11, key:Ljava/lang/String;
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 311
    .local v13, n:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_6

    .line 342
    .end local v8           #i:I
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #n:Ljava/lang/String;
    :cond_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 345
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v12, v2

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v12, :cond_b

    aget-object v7, v2, v9

    .line 346
    .local v7, emergencyNum:Ljava/lang/String;
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 347
    .local v17, splitStr:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v6, v17, v19

    .line 348
    .local v6, eccNum:Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    const/16 v19, 0x1

    aget-object v5, v17, v19

    .line 349
    .local v5, eccCat:Ljava/lang/String;
    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 345
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 303
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #eccCat:Ljava/lang/String;
    .end local v6           #eccNum:Ljava/lang/String;
    .end local v7           #emergencyNum:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v15           #simNumber:I
    .end local v17           #splitStr:[Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v15

    .restart local v15       #simNumber:I
    goto :goto_1

    .line 314
    .restart local v8       #i:I
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #n:Ljava/lang/String;
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ":: ecclist for SIM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ::"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/MultiSimPhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 316
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 307
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 319
    .end local v8           #i:I
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #n:Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    .local v16, simSlotNum:I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 321
    const/4 v8, 0x0

    .line 322
    .restart local v8       #i:I
    :goto_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ril.ecclist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 323
    .restart local v11       #key:Ljava/lang/String;
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 325
    .restart local v13       #n:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_8

    .line 319
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 328
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ":: ecclist for SIM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ::"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/MultiSimPhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 330
    if-eqz v14, :cond_9

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 331
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 321
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 333
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 348
    .end local v8           #i:I
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #n:Ljava/lang/String;
    .end local v16           #simSlotNum:I
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v6       #eccNum:Ljava/lang/String;
    .restart local v7       #emergencyNum:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    .restart local v17       #splitStr:[Ljava/lang/String;
    :cond_a
    const-string v5, ""

    goto/16 :goto_4

    .line 368
    .end local v6           #eccNum:Ljava/lang/String;
    .end local v7           #emergencyNum:Ljava/lang/String;
    .end local v17           #splitStr:[Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 372
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    :cond_c
    const-string v19, "112"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "911"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 373
    :cond_d
    const-string v5, ""

    goto/16 :goto_0

    .line 375
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 18
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 87
    const/4 v11, 0x0

    .line 89
    .local v11, number:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 90
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, scheme:Ljava/lang/String;
    const-string v1, "tel"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sip"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 96
    :cond_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 97
    .local v16, telephonyService:Lcom/android/internal/telephony/ITelephony;
    const-string v1, "simSlot"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 99
    .local v12, passedSimSlot:I
    const-string v1, "voicemail"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const-string v1, "persist.radio.calldefault.simid"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 103
    .local v15, simSlot:I
    if-eqz v16, :cond_2

    .line 106
    :try_start_0
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v9

    .line 108
    .local v9, currSimSlot:I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_2

    if-eq v12, v9, :cond_2

    .line 109
    move v15, v12

    .line 110
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v9           #currSimSlot:I
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumberFromIntent_simSlot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 120
    invoke-static {v15}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v10

    .line 114
    .local v10, ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITelephony threw RemoteException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v15           #simSlot:I
    :cond_3
    if-eqz v16, :cond_4

    .line 125
    :try_start_1
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v9

    .line 127
    .restart local v9       #currSimSlot:I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_4

    if-eq v12, v9, :cond_4

    .line 128
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .end local v9           #currSimSlot:I
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 138
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    :catch_1
    move-exception v10

    .line 132
    .restart local v10       #ex:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ITelephony threw RemoteException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 141
    .end local v10           #ex:Landroid/os/RemoteException;
    :cond_5
    invoke-virtual/range {p0 .. p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 142
    .local v17, type:Ljava/lang/String;
    const/4 v13, 0x0

    .line 145
    .local v13, phoneColumn:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, authority:Ljava/lang/String;
    const-string v1, "contacts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    const-string v13, "number"

    .line 152
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_8

    .line 157
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 161
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v1, v11

    .line 165
    goto/16 :goto_0

    .line 148
    .end local v8           #c:Landroid/database/Cursor;
    :cond_9
    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    const-string v13, "data1"

    goto :goto_3

    .line 161
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;I)Z
    .locals 2
    .parameter "number"
    .parameter "simSlot"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 240
    .local v0, cat:Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/telephony/MultiSimPhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-nez v0, :cond_0

    .line 246
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "simSlot"

    .prologue
    .line 390
    invoke-static {p0, p2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 5
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "useExactMatch"
    .parameter "simSlot"

    .prologue
    const/4 v4, 0x0

    .line 411
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 413
    .local v1, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 419
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return v4

    .line 421
    .restart local v0       #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    const-string v2, "BR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 430
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;ZI)Z
    .locals 8
    .parameter "number"
    .parameter "useExactMatch"
    .parameter "simSlot"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    if-nez p0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v5

    .line 188
    :cond_1
    invoke-static {p0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 194
    invoke-static {p0}, Landroid/telephony/MultiSimPhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    const-string v7, "ril.ecclist"

    invoke-static {v7, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 202
    const-string v7, "ro.ril.ecclist"

    invoke-static {v7, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 208
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 209
    .local v1, emergencyNum:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 210
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    .line 211
    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    .line 215
    goto :goto_0

    .line 208
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #emergencyNum:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    if-eqz p1, :cond_7

    .line 225
    const-string v7, "112"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "911"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_6
    move v5, v6

    goto :goto_0

    .line 227
    :cond_7
    const-string v7, "112"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "911"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_8
    move v5, v6

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 447
    invoke-static {p0, p2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;ZI)Z
    .locals 6
    .parameter "number"
    .parameter "context"
    .parameter "useExactMatch"
    .parameter "simSlot"

    .prologue
    .line 469
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 471
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, countryIso:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2, p3}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    return v3

    .line 474
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 475
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 476
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v3, "MultiSimPhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .locals 1
    .parameter "number"
    .parameter "simSlot"

    .prologue
    .line 174
    invoke-static {p0, p1}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "simSlot"

    .prologue
    .line 404
    invoke-static {p0, p2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 461
    invoke-static {p0, p2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 498
    invoke-static {p0}, Landroid/telephony/MultiSimPhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, isCompare:Z
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 503
    :try_start_0
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 509
    .local v3, vmNumber:Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/telephony/MultiSimPhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 510
    const/4 v1, 0x1

    .line 517
    .end local v3           #vmNumber:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    return v4

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, ex:Ljava/lang/SecurityException;
    goto :goto_1

    .line 501
    .end local v0           #ex:Ljava/lang/SecurityException;
    .restart local v3       #vmNumber:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .locals 4
    .parameter "number"
    .parameter "simSlot"

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-static {p0}, Landroid/telephony/MultiSimPhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, isCompare:Z
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, vmNumber:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 534
    :cond_1
    invoke-static {p0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    const/4 v0, 0x1

    .line 540
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 564
    const-string v0, "MultiSimPhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method
