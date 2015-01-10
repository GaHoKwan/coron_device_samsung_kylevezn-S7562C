.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 2
    .parameter
    .parameter "toneId"

    .prologue
    .line 3264
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 3265
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3266
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 3267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3268
    const-string v0, "InCallTonePlayer:"

    const/4 v1, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {p1, v0, v1}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 3273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer.run(toneId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v17 .. v19}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3275
    const/4 v14, 0x0

    .line 3280
    .local v14, toneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 3285
    .local v6, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneApp;->acquirePartialWakeLock()V

    .line 3287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 3420
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad toneId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3289
    :sswitch_0
    const/16 v14, 0x16

    .line 3290
    const/16 v15, 0x50

    .line 3292
    .local v15, toneVolume:I
    const-string v17, "dcm_callwait_tone_long_feature"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3296
    const/16 v12, 0x5208

    .line 3423
    .local v12, toneLengthMillis:I
    :goto_0
    const-string v17, "feature_chn_tone_play_through_modem"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "feature_chn_dual_mode_with_one_ril"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    const-string v17, "feature_chn_tone_play_through_modem"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "feature_chn_dual_mode_with_one_ril"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "persist.radio.boot.modem"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 3426
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v0, v14, v15, v12}, Lcom/android/phone/PhoneUtils;->requestPlayTone(ZIII)Z

    .line 3427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    add-int/lit8 v18, v12, 0x14

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x12c

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/phone/CallNotifier;->sendPlayRingBackTone(J)V

    .line 3559
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/PhoneApp;->releasePartialWakeLock()V

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 3575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v17 .. v19}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 3578
    :cond_3
    return-void

    .line 3299
    .end local v12           #toneLengthMillis:I
    :cond_4
    const/16 v12, 0x1db0

    .line 3301
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3303
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_5

    .line 3304
    const/16 v14, 0x60

    .line 3305
    const/16 v15, 0x32

    .line 3306
    .restart local v15       #toneVolume:I
    const/16 v12, 0x3e8

    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3307
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_6

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    .line 3309
    :cond_6
    const/16 v14, 0x11

    .line 3310
    const/16 v15, 0x50

    .line 3311
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1194

    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3313
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :cond_7
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected phone type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3317
    :sswitch_2
    const/16 v14, 0x12

    .line 3318
    const/16 v15, 0x50

    .line 3319
    .restart local v15       #toneVolume:I
    const/16 v12, 0xfa0

    .line 3320
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3323
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_3
    const/16 v14, 0x1b

    .line 3324
    const/16 v15, 0x50

    .line 3325
    .restart local v15       #toneVolume:I
    const/16 v12, 0xc8

    .line 3326
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3328
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 3330
    const/16 v14, 0x5d

    .line 3331
    const/16 v15, 0x50

    .line 3332
    .restart local v15       #toneVolume:I
    const/16 v12, 0x2ee

    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3334
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :cond_8
    const/16 v14, 0x1b

    .line 3335
    const/16 v15, 0x50

    .line 3336
    .restart local v15       #toneVolume:I
    const/16 v12, 0xc8

    .line 3338
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3340
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_5
    const/16 v14, 0x56

    .line 3341
    const/16 v15, 0x50

    .line 3342
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1388

    .line 3343
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3345
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_6
    const/16 v14, 0x26

    .line 3346
    const/16 v15, 0x50

    .line 3347
    .restart local v15       #toneVolume:I
    const/16 v12, 0xfa0

    .line 3348
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3350
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_7
    const/16 v14, 0x25

    .line 3351
    const/16 v15, 0x32

    .line 3352
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1f4

    .line 3353
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3356
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_8
    const/16 v14, 0x5f

    .line 3357
    const/16 v15, 0x32

    .line 3358
    .restart local v15       #toneVolume:I
    const/16 v12, 0x177

    .line 3359
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3361
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_9
    const/16 v14, 0x57

    .line 3362
    const/16 v15, 0x32

    .line 3363
    .restart local v15       #toneVolume:I
    const/16 v12, 0x1388

    .line 3364
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3369
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_a
    const/16 v14, 0x17

    .line 3371
    const/16 v15, 0x50

    .line 3373
    .restart local v15       #toneVolume:I
    const v12, 0x7fffffeb

    .line 3374
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3377
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_b
    const/16 v14, 0x63

    .line 3378
    const/16 v15, 0x1e

    .line 3379
    .restart local v15       #toneVolume:I
    const/16 v12, 0xd2

    .line 3380
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3382
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_c
    const/16 v14, 0x64

    .line 3383
    const/16 v15, 0x1e

    .line 3384
    .restart local v15       #toneVolume:I
    const/16 v12, 0xd2

    .line 3385
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3388
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_d
    const-string v17, "feature_chn_tone_play_through_modem"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "feature_chn_dual_mode_with_one_ril"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    const-string v17, "feature_chn_tone_play_through_modem"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "feature_chn_dual_mode_with_one_ril"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "persist.radio.boot.modem"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 3391
    :cond_a
    const/16 v14, 0x68

    .line 3392
    const/16 v15, 0x32

    .line 3393
    .restart local v15       #toneVolume:I
    const/16 v12, 0x15e

    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3395
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :cond_b
    const/16 v14, 0x15

    .line 3396
    const/16 v15, 0x50

    .line 3397
    .restart local v15       #toneVolume:I
    const/16 v12, 0xfa0

    .line 3399
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3401
    .end local v12           #toneLengthMillis:I
    .end local v15           #toneVolume:I
    :sswitch_e
    const/16 v14, 0x19

    .line 3402
    const/16 v15, 0x32

    .line 3403
    .restart local v15       #toneVolume:I
    const/16 v12, 0x3e8

    .line 3404
    .restart local v12       #toneLengthMillis:I
    goto/16 :goto_0

    .line 3435
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 3436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 3437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v17

    if-eqz v17, :cond_11

    const/4 v10, 0x6

    .line 3450
    .local v10, stream:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer: stream :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v17 .. v19}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    .line 3452
    new-instance v11, Landroid/media/ToneGenerator;

    invoke-direct {v11, v10, v15}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3474
    .end local v10           #stream:I
    .local v11, toneGenerator:Landroid/media/ToneGenerator;
    :goto_3
    const/4 v4, 0x1

    .line 3475
    .local v4, needToStopTone:Z
    const/4 v5, 0x0

    .line 3477
    .local v5, okToPlayTone:Z
    if-eqz v11, :cond_2

    .line 3478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    .line 3479
    .local v8, ringerMode:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_1b

    .line 3480
    const/16 v17, 0x5d

    move/from16 v0, v17

    if-ne v14, v0, :cond_16

    .line 3481
    if-eqz v8, :cond_d

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_d

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "- InCallTonePlayer: start playing call tone="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3484
    const/4 v5, 0x1

    .line 3485
    const/4 v4, 0x0

    .line 3512
    :cond_d
    :goto_4
    const-string v17, "custom_waiting_tone"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 3513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "volume_waiting_tone"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 3514
    .local v7, rate:I
    const/high16 v16, 0x3f80

    .line 3515
    .local v16, volFloat:F
    const-wide/high16 v17, 0x4000

    add-int/lit8 v19, v7, -0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 3516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v17, v0

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 3518
    :cond_e
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x32

    move/from16 v0, v17

    if-ne v15, v0, :cond_1c

    const-string v17, "situation=15"

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";device=0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3520
    .local v13, toneSituation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    mul-float v9, v17, v16

    .line 3521
    .local v9, situationVolume:F
    invoke-virtual {v11, v9}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3528
    .end local v7           #rate:I
    .end local v9           #situationVolume:F
    .end local v13           #toneSituation:Ljava/lang/String;
    .end local v16           #volFloat:F
    :cond_f
    :goto_6
    monitor-enter p0

    .line 3529
    if-eqz v5, :cond_10

    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 3530
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3531
    invoke-virtual {v11, v14}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3533
    add-int/lit8 v17, v12, 0x14

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3546
    :goto_7
    if-eqz v4, :cond_10

    .line 3547
    :try_start_4
    invoke-virtual {v11}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3551
    :cond_10
    invoke-virtual {v11}, Landroid/media/ToneGenerator;->release()V

    .line 3552
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3553
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .line 3437
    .end local v4           #needToStopTone:Z
    .end local v5           #okToPlayTone:Z
    .end local v8           #ringerMode:I
    .end local v11           #toneGenerator:Landroid/media/ToneGenerator;
    :cond_11
    const/16 v10, 0xb

    goto/16 :goto_2

    .line 3440
    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v17

    if-eqz v17, :cond_13

    const/4 v10, 0x6

    .restart local v10       #stream:I
    :goto_8
    goto/16 :goto_2

    .end local v10           #stream:I
    :cond_13
    const/4 v10, 0x0

    goto :goto_8

    .line 3444
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isVideoCall()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v17

    if-eqz v17, :cond_15

    .line 3445
    const/16 v10, 0xb

    .restart local v10       #stream:I
    goto/16 :goto_2

    .line 3447
    .end local v10           #stream:I
    :cond_15
    const/4 v10, 0x0

    .restart local v10       #stream:I
    goto/16 :goto_2

    .line 3454
    .end local v10           #stream:I
    :catch_0
    move-exception v3

    .line 3455
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v17, "CallNotifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 3457
    const/4 v11, 0x0

    .restart local v11       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_3

    .line 3487
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v4       #needToStopTone:Z
    .restart local v5       #okToPlayTone:Z
    .restart local v8       #ringerMode:I
    :cond_16
    const/16 v17, 0x60

    move/from16 v0, v17

    if-eq v14, v0, :cond_17

    const/16 v17, 0x26

    move/from16 v0, v17

    if-eq v14, v0, :cond_17

    const/16 v17, 0x27

    move/from16 v0, v17

    if-eq v14, v0, :cond_17

    const/16 v17, 0x25

    move/from16 v0, v17

    if-eq v14, v0, :cond_17

    const/16 v17, 0x5f

    move/from16 v0, v17

    if-ne v14, v0, :cond_18

    .line 3492
    :cond_17
    if-eqz v8, :cond_d

    .line 3493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3494
    const/4 v5, 0x1

    .line 3495
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 3497
    :cond_18
    const/16 v17, 0x57

    move/from16 v0, v17

    if-eq v14, v0, :cond_19

    const/16 v17, 0x56

    move/from16 v0, v17

    if-ne v14, v0, :cond_1a

    .line 3499
    :cond_19
    if-eqz v8, :cond_d

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_d

    .line 3501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3502
    const/4 v5, 0x1

    .line 3503
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 3506
    :cond_1a
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 3509
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 3518
    .restart local v7       #rate:I
    .restart local v16       #volFloat:F
    :cond_1c
    :try_start_6
    const-string v17, "situation=16"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 3522
    :catch_1
    move-exception v3

    .line 3523
    .local v3, e:Ljava/lang/Exception;
    const-string v17, "CallNotifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CUSTOM_WAITING_TONE: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_6

    .line 3534
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #rate:I
    .end local v16           #volFloat:F
    :catch_2
    move-exception v3

    .line 3535
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_7
    const-string v17, "CallNotifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InCallTonePlayer stopped: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_7

    .line 3287
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_4
        0xc -> :sswitch_a
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x63 -> :sswitch_b
        0x64 -> :sswitch_c
    .end sparse-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 3581
    monitor-enter p0

    .line 3582
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3583
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3585
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 3586
    monitor-exit p0

    .line 3587
    return-void

    .line 3586
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
