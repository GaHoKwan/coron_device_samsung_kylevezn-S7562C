.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 365
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .locals 29
    .parameter "callList"

    .prologue
    .line 368
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    .line 369
    .local v19, count:I
    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v26, v0

    .line 370
    .local v26, result:[Landroid/net/Uri;
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v28, value:Landroid/content/ContentValues;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 375
    .local v27, salesCode:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    .line 376
    aget-object v17, p1, v23

    .line 379
    .local v17, c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v2, v3, v4}, Lcom/android/phone/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/phone/EcidContact;

    move-result-object v21

    .line 380
    .local v21, ecid:Lcom/android/phone/EcidContact;
    if-eqz v21, :cond_0

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/phone/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    const-string v2, "cityid"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    const/16 v22, 0x0

    .line 385
    .local v22, fName:Ljava/lang/String;
    const/16 v24, 0x0

    .line 386
    .local v24, lName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 387
    .local v16, bName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 389
    .local v18, cnapName:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 390
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getFirstName()Ljava/lang/String;

    move-result-object v22

    .line 391
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getLastName()Ljava/lang/String;

    move-result-object v24

    .line 392
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getBizName()Ljava/lang/String;

    move-result-object v16

    .line 393
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/EcidContact;->getCnapName()Ljava/lang/String;

    move-result-object v18

    .line 396
    :cond_1
    if-eqz v21, :cond_2

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 397
    const-string v2, "fname"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_2
    if-eqz v21, :cond_3

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 401
    const-string v2, "lname"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_3
    if-eqz v21, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 405
    const-string v2, "bname"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_4
    if-eqz v21, :cond_6

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v18, :cond_6

    const-string v2, "Unknown Name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Wireless Caller"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 409
    const-string v2, "LGT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_6

    .line 411
    :cond_5
    const-string v2, "cnap_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_6
    if-eqz v21, :cond_7

    .line 415
    invoke-static {}, Lcom/android/phone/EcidContact;->clearEcidContacts()V

    .line 418
    :cond_7
    const-string v2, "date"

    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    const-string v2, "duration"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const/16 v14, 0x15

    .line 425
    .local v14, MESSAGE_CALL_TYPE:I
    const/16 v13, 0x16

    .line 426
    .local v13, CMF_CALL_TYPE:I
    const-string v15, "-4"

    .line 428
    .local v15, UNKNOWN_PHONE_NUMBER:Ljava/lang/String;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_8

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_14

    .line 429
    :cond_8
    const-string v2, "service_type"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    :goto_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_b

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Unknown Name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Wireless Caller"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 441
    :cond_9
    const-string v2, "LGT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_b

    .line 442
    :cond_a
    const-string v2, "cnap_name"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_b
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_c

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    .line 447
    const-string v2, "cdnip_number"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_c
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_d

    .line 451
    const-string v11, "ci_person_id"

    .line 452
    .local v11, CI_PERSON_ID:Ljava/lang/String;
    const-string v10, "ci_normalizedNumber"

    .line 453
    .local v10, CI_NORMALIZED_NUMBER:Ljava/lang/String;
    const-string v12, "ci_phoneNumber"

    .line 455
    .local v12, CI_PHONE_NUMBER:Ljava/lang/String;
    const-string v2, "ci_person_id"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v3, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    const-string v2, "ci_normalizedNumber"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v2, "ci_phoneNumber"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .end local v10           #CI_NORMALIZED_NUMBER:Ljava/lang/String;
    .end local v11           #CI_PERSON_ID:Ljava/lang/String;
    .end local v12           #CI_PHONE_NUMBER:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    if-eqz v2, :cond_e

    .line 461
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 464
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 465
    const-string v2, "m_content"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_f
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    if-eqz v2, :cond_10

    .line 473
    const-string v2, "simnum"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simnum is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_10
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 479
    .local v25, logNumber:Ljava/lang/String;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v2, v3, :cond_15

    .line 480
    const-string v25, "-2"

    .line 493
    :cond_11
    :goto_2
    const-string v2, "number"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v2, "remind_me_later_set"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remind_me_later_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v2, "dormant_set"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dormant_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v2, "trigger_restart_min_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "1"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 502
    :cond_12
    const-string v2, "CallLogAsync"

    const-string v3, "AddCallTask :  ignored in encryption mode.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v13           #CMF_CALL_TYPE:I
    .end local v14           #MESSAGE_CALL_TYPE:I
    .end local v15           #UNKNOWN_PHONE_NUMBER:Ljava/lang/String;
    .end local v16           #bName:Ljava/lang/String;
    .end local v17           #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v18           #cnapName:Ljava/lang/String;
    .end local v21           #ecid:Lcom/android/phone/EcidContact;
    .end local v22           #fName:Ljava/lang/String;
    .end local v24           #lName:Ljava/lang/String;
    .end local v25           #logNumber:Ljava/lang/String;
    :cond_13
    return-object v26

    .line 432
    .restart local v13       #CMF_CALL_TYPE:I
    .restart local v14       #MESSAGE_CALL_TYPE:I
    .restart local v15       #UNKNOWN_PHONE_NUMBER:Ljava/lang/String;
    .restart local v16       #bName:Ljava/lang/String;
    .restart local v17       #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .restart local v18       #cnapName:Ljava/lang/String;
    .restart local v21       #ecid:Lcom/android/phone/EcidContact;
    .restart local v22       #fName:Ljava/lang/String;
    .restart local v24       #lName:Ljava/lang/String;
    :cond_14
    const-string v2, "service_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const-string v2, "type"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 481
    .restart local v25       #logNumber:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v2, v3, :cond_16

    .line 482
    const-string v25, "-3"

    goto/16 :goto_2

    .line 483
    :cond_16
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v2, v3, :cond_17

    .line 484
    const-string v25, "-1"

    goto/16 :goto_2

    .line 485
    :cond_17
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 486
    const-string v2, "LGT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 487
    const-string v25, "-4"

    goto/16 :goto_2

    .line 489
    :cond_18
    const-string v25, "-1"

    goto/16 :goto_2

    .line 506
    :cond_19
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    if-eqz v2, :cond_1a

    .line 507
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v26, v23

    .line 375
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 512
    :cond_1a
    :try_start_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v2 .. v9}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v26, v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 515
    :catch_0
    move-exception v20

    .line 523
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "CallLogAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception raised during adding CallLog entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v2, 0x0

    aput-object v2, v26, v23

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 365
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 537
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 538
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 539
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
