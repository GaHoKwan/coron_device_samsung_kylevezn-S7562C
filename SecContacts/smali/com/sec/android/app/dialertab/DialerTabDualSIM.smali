.class public Lcom/sec/android/app/dialertab/DialerTabDualSIM;
.super Ljava/lang/Object;
.source "DialerTabDualSIM.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String;

.field public static final REGISTERINFO_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallSimIcon(Landroid/content/Context;I)I
    .locals 7
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v6, 0x1

    .line 139
    move-object v0, p0

    .line 140
    .local v0, mContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 141
    .local v2, simIconIdx:I
    const/4 v1, 0x0

    .line 142
    .local v1, simIcon:I
    if-ne p1, v6, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 148
    :goto_0
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_2

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_1

    .line 150
    packed-switch v2, :pswitch_data_0

    .line 167
    const v1, 0x7f0204a1

    .line 313
    :goto_1
    return v1

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 152
    :pswitch_0
    const v1, 0x7f0204a1

    .line 153
    goto :goto_1

    .line 155
    :pswitch_1
    const v1, 0x7f0204a5

    .line 156
    goto :goto_1

    .line 158
    :pswitch_2
    const v1, 0x7f0204b1

    .line 159
    goto :goto_1

    .line 161
    :pswitch_3
    const v1, 0x7f0204b5

    .line 162
    goto :goto_1

    .line 164
    :pswitch_4
    const v1, 0x7f0204ad

    .line 165
    goto :goto_1

    .line 172
    :cond_1
    packed-switch v2, :pswitch_data_1

    .line 189
    const v1, 0x7f0204a3

    .line 190
    goto :goto_1

    .line 174
    :pswitch_5
    const v1, 0x7f0204a3

    .line 175
    goto :goto_1

    .line 177
    :pswitch_6
    const v1, 0x7f0204a7

    .line 178
    goto :goto_1

    .line 180
    :pswitch_7
    const v1, 0x7f0204b3

    .line 181
    goto :goto_1

    .line 183
    :pswitch_8
    const v1, 0x7f0204b7

    .line 184
    goto :goto_1

    .line 186
    :pswitch_9
    const v1, 0x7f0204af

    .line 187
    goto :goto_1

    .line 195
    :cond_2
    const-string v3, "feature_common_multisim_V2 "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_3

    .line 197
    packed-switch v2, :pswitch_data_2

    .line 226
    const v1, 0x7f0201d6

    .line 227
    goto :goto_1

    .line 199
    :pswitch_a
    const v1, 0x7f0201d6

    .line 200
    goto :goto_1

    .line 202
    :pswitch_b
    const v1, 0x7f0201de

    .line 203
    goto :goto_1

    .line 205
    :pswitch_c
    const v1, 0x7f020219

    .line 206
    goto :goto_1

    .line 208
    :pswitch_d
    const v1, 0x7f020222

    .line 209
    goto :goto_1

    .line 211
    :pswitch_e
    const v1, 0x7f020209

    .line 212
    goto :goto_1

    .line 214
    :pswitch_f
    const v1, 0x7f020201

    .line 215
    goto :goto_1

    .line 217
    :pswitch_10
    const v1, 0x7f0201f9

    .line 218
    goto :goto_1

    .line 220
    :pswitch_11
    const v1, 0x7f020211

    .line 221
    goto :goto_1

    .line 223
    :pswitch_12
    const v1, 0x7f0201f1

    .line 224
    goto :goto_1

    .line 230
    :cond_3
    packed-switch v2, :pswitch_data_3

    .line 259
    const v1, 0x7f0201d8

    .line 260
    goto :goto_1

    .line 232
    :pswitch_13
    const v1, 0x7f0201d8

    .line 233
    goto/16 :goto_1

    .line 235
    :pswitch_14
    const v1, 0x7f0201e0

    .line 236
    goto/16 :goto_1

    .line 238
    :pswitch_15
    const v1, 0x7f02021b

    .line 239
    goto/16 :goto_1

    .line 241
    :pswitch_16
    const v1, 0x7f020224

    .line 242
    goto/16 :goto_1

    .line 244
    :pswitch_17
    const v1, 0x7f02020b

    .line 245
    goto/16 :goto_1

    .line 247
    :pswitch_18
    const v1, 0x7f020203

    .line 248
    goto/16 :goto_1

    .line 250
    :pswitch_19
    const v1, 0x7f0201fb

    .line 251
    goto/16 :goto_1

    .line 253
    :pswitch_1a
    const v1, 0x7f020213

    .line 254
    goto/16 :goto_1

    .line 256
    :pswitch_1b
    const v1, 0x7f0201f3

    .line 257
    goto/16 :goto_1

    .line 265
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_5

    .line 266
    packed-switch v2, :pswitch_data_4

    .line 284
    const v1, 0x7f020629

    .line 285
    goto/16 :goto_1

    .line 268
    :pswitch_1c
    const v1, 0x7f0201d6

    .line 269
    goto/16 :goto_1

    .line 271
    :pswitch_1d
    const v1, 0x7f0201de

    .line 272
    goto/16 :goto_1

    .line 274
    :pswitch_1e
    const v1, 0x7f0201f9

    .line 275
    goto/16 :goto_1

    .line 277
    :pswitch_1f
    const v1, 0x7f020211

    .line 278
    goto/16 :goto_1

    .line 280
    :pswitch_20
    const v1, 0x7f0201f1

    .line 281
    goto/16 :goto_1

    .line 289
    :cond_5
    packed-switch v2, :pswitch_data_5

    .line 307
    const v1, 0x7f0201d8

    goto/16 :goto_1

    .line 291
    :pswitch_21
    const v1, 0x7f0201d8

    .line 292
    goto/16 :goto_1

    .line 294
    :pswitch_22
    const v1, 0x7f0201e0

    .line 295
    goto/16 :goto_1

    .line 297
    :pswitch_23
    const v1, 0x7f0201fb

    .line 298
    goto/16 :goto_1

    .line 300
    :pswitch_24
    const v1, 0x7f020213

    .line 301
    goto/16 :goto_1

    .line 303
    :pswitch_25
    const v1, 0x7f0201f3

    .line 304
    goto/16 :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 172
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 197
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 230
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 266
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    .line 289
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public static getCallSimIconDim(Landroid/content/Context;I)I
    .locals 7
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v6, 0x1

    .line 318
    move-object v0, p0

    .line 319
    .local v0, mContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 320
    .local v2, simIconIdx:I
    const/4 v1, 0x0

    .line 322
    .local v1, simIcon:I
    if-ne p1, v6, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 328
    :goto_0
    const-string v3, "DialerTabDualSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallSimIconDim simIconIdx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v3, :cond_2

    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_1

    .line 332
    packed-switch v2, :pswitch_data_0

    .line 349
    const v1, 0x7f0204a2

    .line 495
    :goto_1
    return v1

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 334
    :pswitch_0
    const v1, 0x7f0204a2

    .line 335
    goto :goto_1

    .line 337
    :pswitch_1
    const v1, 0x7f0204a6

    .line 338
    goto :goto_1

    .line 340
    :pswitch_2
    const v1, 0x7f0204b2

    .line 341
    goto :goto_1

    .line 343
    :pswitch_3
    const v1, 0x7f0204b6

    .line 344
    goto :goto_1

    .line 346
    :pswitch_4
    const v1, 0x7f0204ae

    .line 347
    goto :goto_1

    .line 354
    :cond_1
    packed-switch v2, :pswitch_data_1

    .line 371
    const v1, 0x7f0204a4

    .line 372
    goto :goto_1

    .line 356
    :pswitch_5
    const v1, 0x7f0204a4

    .line 357
    goto :goto_1

    .line 359
    :pswitch_6
    const v1, 0x7f0204a8

    .line 360
    goto :goto_1

    .line 362
    :pswitch_7
    const v1, 0x7f0204b4

    .line 363
    goto :goto_1

    .line 365
    :pswitch_8
    const v1, 0x7f0204b8

    .line 366
    goto :goto_1

    .line 368
    :pswitch_9
    const v1, 0x7f0204b0

    .line 369
    goto :goto_1

    .line 378
    :cond_2
    const-string v3, "feature_common_multisim_V2 "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 379
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_3

    .line 380
    packed-switch v2, :pswitch_data_2

    .line 409
    const v1, 0x7f0201d7

    .line 410
    goto :goto_1

    .line 382
    :pswitch_a
    const v1, 0x7f0201d7

    .line 383
    goto :goto_1

    .line 385
    :pswitch_b
    const v1, 0x7f0201df

    .line 386
    goto :goto_1

    .line 388
    :pswitch_c
    const v1, 0x7f02021a

    .line 389
    goto :goto_1

    .line 391
    :pswitch_d
    const v1, 0x7f020223

    .line 392
    goto :goto_1

    .line 394
    :pswitch_e
    const v1, 0x7f02020a

    .line 395
    goto :goto_1

    .line 397
    :pswitch_f
    const v1, 0x7f020202

    .line 398
    goto :goto_1

    .line 400
    :pswitch_10
    const v1, 0x7f0201fa

    .line 401
    goto :goto_1

    .line 403
    :pswitch_11
    const v1, 0x7f020212

    .line 404
    goto :goto_1

    .line 406
    :pswitch_12
    const v1, 0x7f0201f2

    .line 407
    goto :goto_1

    .line 413
    :cond_3
    packed-switch v2, :pswitch_data_3

    .line 442
    const v1, 0x7f0201d9

    .line 443
    goto :goto_1

    .line 415
    :pswitch_13
    const v1, 0x7f0201d9

    .line 416
    goto/16 :goto_1

    .line 418
    :pswitch_14
    const v1, 0x7f0201e1

    .line 419
    goto/16 :goto_1

    .line 421
    :pswitch_15
    const v1, 0x7f02021c

    .line 422
    goto/16 :goto_1

    .line 424
    :pswitch_16
    const v1, 0x7f020225

    .line 425
    goto/16 :goto_1

    .line 427
    :pswitch_17
    const v1, 0x7f02020c

    .line 428
    goto/16 :goto_1

    .line 430
    :pswitch_18
    const v1, 0x7f020204

    .line 431
    goto/16 :goto_1

    .line 433
    :pswitch_19
    const v1, 0x7f0201fc

    .line 434
    goto/16 :goto_1

    .line 436
    :pswitch_1a
    const v1, 0x7f020214

    .line 437
    goto/16 :goto_1

    .line 439
    :pswitch_1b
    const v1, 0x7f0201f4

    .line 440
    goto/16 :goto_1

    .line 448
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_5

    .line 449
    packed-switch v2, :pswitch_data_4

    .line 467
    const v1, 0x7f0201d7

    .line 468
    goto/16 :goto_1

    .line 451
    :pswitch_1c
    const v1, 0x7f0201d7

    .line 452
    goto/16 :goto_1

    .line 454
    :pswitch_1d
    const v1, 0x7f02022b

    .line 455
    goto/16 :goto_1

    .line 457
    :pswitch_1e
    const v1, 0x7f0201fa

    .line 458
    goto/16 :goto_1

    .line 460
    :pswitch_1f
    const v1, 0x7f020212

    .line 461
    goto/16 :goto_1

    .line 463
    :pswitch_20
    const v1, 0x7f0201f2

    .line 464
    goto/16 :goto_1

    .line 472
    :cond_5
    packed-switch v2, :pswitch_data_5

    .line 490
    const v1, 0x7f0201d9

    goto/16 :goto_1

    .line 474
    :pswitch_21
    const v1, 0x7f0201d9

    .line 475
    goto/16 :goto_1

    .line 477
    :pswitch_22
    const v1, 0x7f02022d

    .line 478
    goto/16 :goto_1

    .line 480
    :pswitch_23
    const v1, 0x7f0201fc

    .line 481
    goto/16 :goto_1

    .line 483
    :pswitch_24
    const v1, 0x7f020214

    .line 484
    goto/16 :goto_1

    .line 486
    :pswitch_25
    const v1, 0x7f0201f4

    .line 487
    goto/16 :goto_1

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 354
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 380
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 413
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 449
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    .line 472
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public static getDuosCallSimIcon(Landroid/content/Context;IZ)I
    .locals 23
    .parameter "context"
    .parameter "simId"
    .parameter "detailview"

    .prologue
    .line 501
    const-string v1, "ril.noti_sim_iccid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 502
    .local v12, cardIccIdSlot1:Ljava/lang/String;
    const-string v1, "ril.noti_sim_iccid2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 503
    .local v13, cardIccIdSlot2:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CARD_ICCID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, where1:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CARD_ICCID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, where2:Ljava/lang/String;
    move-object/from16 v19, p0

    .line 506
    .local v19, mContext:Landroid/content/Context;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 507
    .local v15, dual_value:I
    const/16 v17, 0x6

    .line 508
    .local v17, iconIndexCDMA:I
    const/16 v18, 0x7

    .line 509
    .local v18, iconIndexGSM:I
    move/from16 v20, p2

    .line 510
    .local v20, mDetailView:Z
    const/16 v21, 0x0

    .line 512
    .local v21, mOneHandOnOff:Z
    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const/16 v17, 0x4

    .line 514
    const/16 v18, 0x3

    .line 517
    :cond_0
    const/4 v1, 0x1

    if-ne v15, v1, :cond_1

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND CARD_TYPE=\'CDMA\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND CARD_TYPE=\'GSM\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 523
    :cond_1
    const-string v1, "feature_one_hand_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/16 v21, 0x1

    .line 527
    :cond_2
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->REGISTERINFO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 528
    .local v14, cdmaSimCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_9

    .line 529
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 531
    :cond_3
    const-string v1, "icon_index"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 532
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eq v15, v1, :cond_3

    .line 534
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 539
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->REGISTERINFO_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 540
    .local v16, gsmSimCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_7

    .line 541
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 543
    :cond_5
    const-string v1, "icon_index"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 544
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 546
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_7
    const/16 v22, 0x1

    .line 551
    .local v22, nIndex:I
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    .line 552
    move/from16 v22, v17

    .line 556
    :goto_2
    if-nez v20, :cond_b

    if-nez v21, :cond_b

    .line 557
    packed-switch v22, :pswitch_data_0

    .line 583
    const v11, 0x7f0201d8

    .line 647
    .local v11, Image:I
    :goto_3
    return v11

    .line 524
    .end local v11           #Image:I
    .end local v14           #cdmaSimCursor:Landroid/database/Cursor;
    .end local v16           #gsmSimCursor:Landroid/database/Cursor;
    .end local v22           #nIndex:I
    :cond_8
    const/16 v21, 0x0

    goto :goto_0

    .line 536
    .restart local v14       #cdmaSimCursor:Landroid/database/Cursor;
    :cond_9
    const-string v1, "DialerTabDualSIM"

    const-string v2, "cdma sim Registerinfo cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 554
    .restart local v16       #gsmSimCursor:Landroid/database/Cursor;
    .restart local v22       #nIndex:I
    :cond_a
    move/from16 v22, v18

    goto :goto_2

    .line 559
    :pswitch_0
    const v11, 0x7f0201d8

    .line 560
    .restart local v11       #Image:I
    goto :goto_3

    .line 562
    .end local v11           #Image:I
    :pswitch_1
    const v11, 0x7f0201e0

    .line 563
    .restart local v11       #Image:I
    goto :goto_3

    .line 565
    .end local v11           #Image:I
    :pswitch_2
    const v11, 0x7f0201f3

    .line 566
    .restart local v11       #Image:I
    goto :goto_3

    .line 568
    .end local v11           #Image:I
    :pswitch_3
    const v11, 0x7f020213

    .line 569
    .restart local v11       #Image:I
    goto :goto_3

    .line 571
    .end local v11           #Image:I
    :pswitch_4
    const v11, 0x7f0201fb

    .line 572
    .restart local v11       #Image:I
    goto :goto_3

    .line 574
    .end local v11           #Image:I
    :pswitch_5
    const v11, 0x7f020231

    .line 575
    .restart local v11       #Image:I
    goto :goto_3

    .line 577
    .end local v11           #Image:I
    :pswitch_6
    const v11, 0x7f0201c9

    .line 578
    .restart local v11       #Image:I
    goto :goto_3

    .line 580
    .end local v11           #Image:I
    :pswitch_7
    const v11, 0x7f0201e7

    .line 581
    .restart local v11       #Image:I
    goto :goto_3

    .line 586
    .end local v11           #Image:I
    :cond_b
    if-nez v20, :cond_c

    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_c

    .line 587
    packed-switch v22, :pswitch_data_1

    .line 613
    const v11, 0x7f020309

    .line 614
    .restart local v11       #Image:I
    goto :goto_3

    .line 589
    .end local v11           #Image:I
    :pswitch_8
    const v11, 0x7f020309

    .line 590
    .restart local v11       #Image:I
    goto :goto_3

    .line 592
    .end local v11           #Image:I
    :pswitch_9
    const v11, 0x7f02030a

    .line 593
    .restart local v11       #Image:I
    goto :goto_3

    .line 595
    .end local v11           #Image:I
    :pswitch_a
    const v11, 0x7f02030b

    .line 596
    .restart local v11       #Image:I
    goto :goto_3

    .line 598
    .end local v11           #Image:I
    :pswitch_b
    const v11, 0x7f02030d

    .line 599
    .restart local v11       #Image:I
    goto :goto_3

    .line 601
    .end local v11           #Image:I
    :pswitch_c
    const v11, 0x7f02030c

    .line 602
    .restart local v11       #Image:I
    goto :goto_3

    .line 604
    .end local v11           #Image:I
    :pswitch_d
    const v11, 0x7f02030e

    .line 605
    .restart local v11       #Image:I
    goto :goto_3

    .line 607
    .end local v11           #Image:I
    :pswitch_e
    const v11, 0x7f020307

    .line 608
    .restart local v11       #Image:I
    goto :goto_3

    .line 610
    .end local v11           #Image:I
    :pswitch_f
    const v11, 0x7f020308

    .line 611
    .restart local v11       #Image:I
    goto :goto_3

    .line 617
    .end local v11           #Image:I
    :cond_c
    packed-switch v22, :pswitch_data_2

    .line 643
    const v11, 0x7f0202c2

    .restart local v11       #Image:I
    goto :goto_3

    .line 619
    .end local v11           #Image:I
    :pswitch_10
    const v11, 0x7f0202ca

    .line 620
    .restart local v11       #Image:I
    goto :goto_3

    .line 622
    .end local v11           #Image:I
    :pswitch_11
    const v11, 0x7f0202cb

    .line 623
    .restart local v11       #Image:I
    goto :goto_3

    .line 625
    .end local v11           #Image:I
    :pswitch_12
    const v11, 0x7f0202c3

    .line 626
    .restart local v11       #Image:I
    goto :goto_3

    .line 628
    .end local v11           #Image:I
    :pswitch_13
    const v11, 0x7f0202c9

    .line 629
    .restart local v11       #Image:I
    goto :goto_3

    .line 631
    .end local v11           #Image:I
    :pswitch_14
    const v11, 0x7f0202c4

    .line 632
    .restart local v11       #Image:I
    goto :goto_3

    .line 634
    .end local v11           #Image:I
    :pswitch_15
    const v11, 0x7f0202d1

    .line 635
    .restart local v11       #Image:I
    goto :goto_3

    .line 637
    .end local v11           #Image:I
    :pswitch_16
    const v11, 0x7f0202bd

    .line 638
    .restart local v11       #Image:I
    goto :goto_3

    .line 640
    .end local v11           #Image:I
    :pswitch_17
    const v11, 0x7f0202c2

    .line 641
    .restart local v11       #Image:I
    goto/16 :goto_3

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 587
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 617
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v5, 0x1

    .line 67
    move-object v0, p0

    .line 68
    .local v0, mContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 69
    .local v2, simIconIdx:I
    const/4 v1, 0x0

    .line 70
    .local v1, simIcon:I
    if-ne p1, v5, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 76
    :goto_0
    const-string v3, "feature_common_multisim_V2 "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    packed-switch v2, :pswitch_data_0

    .line 107
    const v1, 0x7f020629

    .line 133
    :goto_1
    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 80
    :pswitch_0
    const v1, 0x7f020629

    .line 81
    goto :goto_1

    .line 83
    :pswitch_1
    const v1, 0x7f02062a

    .line 84
    goto :goto_1

    .line 86
    :pswitch_2
    const v1, 0x7f020648

    .line 87
    goto :goto_1

    .line 89
    :pswitch_3
    const v1, 0x7f02064a

    .line 90
    goto :goto_1

    .line 92
    :pswitch_4
    const v1, 0x7f02063e

    .line 93
    goto :goto_1

    .line 95
    :pswitch_5
    const v1, 0x7f02063c

    .line 96
    goto :goto_1

    .line 98
    :pswitch_6
    const v1, 0x7f02063a

    .line 99
    goto :goto_1

    .line 101
    :pswitch_7
    const v1, 0x7f020646

    .line 102
    goto :goto_1

    .line 104
    :pswitch_8
    const v1, 0x7f020631

    .line 105
    goto :goto_1

    .line 111
    :cond_1
    packed-switch v2, :pswitch_data_1

    .line 129
    const v1, 0x7f020629

    goto :goto_1

    .line 114
    :pswitch_9
    const v1, 0x7f020629

    .line 115
    goto :goto_1

    .line 117
    :pswitch_a
    const v1, 0x7f02062a

    .line 118
    goto :goto_1

    .line 120
    :pswitch_b
    const v1, 0x7f02063a

    .line 121
    goto :goto_1

    .line 123
    :pswitch_c
    const v1, 0x7f020646

    .line 124
    goto :goto_1

    .line 126
    :pswitch_d
    const v1, 0x7f020631

    .line 127
    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 33
    move-object v0, p0

    .line 34
    .local v0, mContext:Landroid/content/Context;
    const/4 v1, 0x0

    .line 36
    .local v1, simName:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isDuringACall(I)Z
    .locals 6
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 47
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 48
    .local v1, mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 49
    .local v0, currSimId:I
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v0

    .line 52
    :cond_0
    const-string v3, "DialerTabDualSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currSimId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), passedSimID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eq v0, p0, :cond_2

    .line 63
    .end local v0           #currSimId:I
    .end local v1           #mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return v2

    .line 56
    .restart local v0       #currSimId:I
    .restart local v1       #mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    .end local v0           #currSimId:I
    .end local v1           #mTelephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
