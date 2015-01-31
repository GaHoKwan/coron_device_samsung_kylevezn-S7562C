.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final RESOLUTION_1024X768:I = 0x20

.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1960:I = 0x1e

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X480:I = 0xc

.field public static final RESOLUTION_800X600:I = 0x21

.field public static final RESOLUTION_960X720:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4
    .parameter "res1"
    .parameter "res2"

    .prologue
    .line 411
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 412
    .local v1, dw:I
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 414
    .local v0, dh:I
    if-lez v1, :cond_1

    .line 423
    .end local v1           #dw:I
    :cond_0
    :goto_0
    return v1

    .line 416
    .restart local v1       #dw:I
    :cond_1
    if-nez v1, :cond_0

    .line 417
    if-lez v0, :cond_2

    move v1, v0

    .line 418
    goto :goto_0

    .line 419
    :cond_2
    if-nez v0, :cond_0

    .line 420
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1
    .parameter "resolution"

    .prologue
    .line 386
    packed-switch p0, :pswitch_data_0

    .line 400
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 388
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 390
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 392
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 394
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 396
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 398
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getIntHeight(I)I
    .locals 2
    .parameter "resid"

    .prologue
    const/16 v1, 0x2d0

    const/16 v0, 0x1e0

    .line 126
    packed-switch p0, :pswitch_data_0

    .line 191
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 128
    :pswitch_2
    const/16 v0, 0x990

    goto :goto_0

    .line 130
    :pswitch_3
    const/16 v0, 0x900

    goto :goto_0

    .line 132
    :pswitch_4
    const/16 v0, 0x7b0

    goto :goto_0

    .line 134
    :pswitch_5
    const/16 v0, 0x7a8

    goto :goto_0

    .line 136
    :pswitch_6
    const/16 v0, 0x798

    goto :goto_0

    .line 138
    :pswitch_7
    const/16 v0, 0x780

    goto :goto_0

    .line 140
    :pswitch_8
    const/16 v0, 0x740

    goto :goto_0

    .line 142
    :pswitch_9
    const/16 v0, 0x72c

    goto :goto_0

    .line 145
    :pswitch_a
    const/16 v0, 0x600

    goto :goto_0

    .line 147
    :pswitch_b
    const/16 v0, 0x5a0

    goto :goto_0

    .line 149
    :pswitch_c
    const/16 v0, 0x4d0

    goto :goto_0

    .line 151
    :pswitch_d
    const/16 v0, 0x4b0

    goto :goto_0

    .line 153
    :pswitch_e
    const/16 v0, 0x570

    goto :goto_0

    .line 155
    :pswitch_f
    const/16 v0, 0x480

    goto :goto_0

    .line 157
    :pswitch_10
    const/16 v0, 0x450

    goto :goto_0

    .line 159
    :pswitch_11
    const/16 v0, 0x438

    goto :goto_0

    .line 162
    :pswitch_12
    const/16 v0, 0x3c0

    goto :goto_0

    .line 164
    :pswitch_13
    const/16 v0, 0x370

    goto :goto_0

    .line 166
    :pswitch_14
    const/16 v0, 0x360

    goto :goto_0

    .line 168
    :pswitch_15
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :pswitch_17
    const/16 v0, 0x2a0

    goto :goto_0

    .line 180
    :pswitch_18
    const/16 v0, 0xf0

    goto :goto_0

    .line 182
    :pswitch_19
    const/16 v0, 0x90

    goto :goto_0

    :pswitch_1a
    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :pswitch_1b
    const/16 v0, 0x300

    goto :goto_0

    .line 188
    :pswitch_1c
    const/16 v0, 0x258

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_12
        :pswitch_1
        :pswitch_1
        :pswitch_11
        :pswitch_16
        :pswitch_1
        :pswitch_18
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_9
        :pswitch_b
        :pswitch_15
        :pswitch_f
        :pswitch_e
        :pswitch_6
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_5
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1
    .parameter "resid"

    .prologue
    const/16 v0, 0x320

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 70
    :pswitch_2
    const/16 v0, 0xcc0

    goto :goto_0

    .line 73
    :pswitch_3
    const/16 v0, 0xc00

    goto :goto_0

    .line 75
    :pswitch_4
    const/16 v0, 0xa20

    goto :goto_0

    .line 79
    :pswitch_5
    const/16 v0, 0xa00

    goto :goto_0

    .line 84
    :pswitch_6
    const/16 v0, 0x800

    goto :goto_0

    .line 86
    :pswitch_7
    const/16 v0, 0x780

    goto :goto_0

    .line 88
    :pswitch_8
    const/16 v0, 0x660

    goto :goto_0

    .line 91
    :pswitch_9
    const/16 v0, 0x640

    goto :goto_0

    .line 93
    :pswitch_a
    const/16 v0, 0x600

    goto :goto_0

    .line 95
    :pswitch_b
    const/16 v0, 0x570

    goto :goto_0

    .line 97
    :pswitch_c
    const/16 v0, 0x280

    goto :goto_0

    .line 103
    :pswitch_d
    const/16 v0, 0x500

    goto :goto_0

    .line 105
    :pswitch_e
    const/16 v0, 0x4e0

    goto :goto_0

    .line 107
    :pswitch_f
    const/16 v0, 0x2d0

    goto :goto_0

    .line 109
    :pswitch_10
    const/16 v0, 0x190

    goto :goto_0

    .line 111
    :pswitch_11
    const/16 v0, 0x140

    goto :goto_0

    .line 113
    :pswitch_12
    const/16 v0, 0xb0

    goto :goto_0

    .line 115
    :pswitch_13
    const/16 v0, 0x3c0

    goto :goto_0

    .line 117
    :pswitch_14
    const/16 v0, 0x400

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_7
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_2
        :pswitch_5
        :pswitch_d
        :pswitch_6
        :pswitch_b
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_e
        :pswitch_2
        :pswitch_13
        :pswitch_14
        :pswitch_1
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 314
    const-string v0, "3264x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    .line 316
    :cond_0
    const-string v0, "3264x1968"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const/4 v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    const-string v0, "3264x1960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const/16 v0, 0x1e

    goto :goto_0

    .line 320
    :cond_2
    const-string v0, "3264x1836"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    const/16 v0, 0x14

    goto :goto_0

    .line 322
    :cond_3
    const-string v0, "3072x2304"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    const/4 v0, 0x2

    goto :goto_0

    .line 324
    :cond_4
    const-string v0, "3072x1856"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    const/4 v0, 0x3

    goto :goto_0

    .line 326
    :cond_5
    const-string v0, "2592x1944"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 327
    const/16 v0, 0x19

    goto :goto_0

    .line 328
    :cond_6
    const-string v0, "2560x1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    const/4 v0, 0x4

    goto :goto_0

    .line 330
    :cond_7
    const-string v0, "2560x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    const/4 v0, 0x5

    goto :goto_0

    .line 332
    :cond_8
    const-string v0, "2560x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    const/16 v0, 0x15

    goto :goto_0

    .line 334
    :cond_9
    const-string v0, "2048x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 335
    const/4 v0, 0x6

    goto :goto_0

    .line 336
    :cond_a
    const-string v0, "2048x1232"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 337
    const/4 v0, 0x7

    goto :goto_0

    .line 338
    :cond_b
    const-string v0, "2048x1152"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 339
    const/16 v0, 0x17

    goto :goto_0

    .line 340
    :cond_c
    const-string v0, "2048x1104"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 341
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 342
    :cond_d
    const-string v0, "1920x1080"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 343
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 344
    :cond_e
    const-string v0, "1632x880"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 345
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 346
    :cond_f
    const-string v0, "1600x1200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 347
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 348
    :cond_10
    const-string v0, "1600x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 349
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 350
    :cond_11
    const-string v0, "1536x864"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 351
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 352
    :cond_12
    const-string v0, "1392x1392"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 353
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 354
    :cond_13
    const-string v0, "1280x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 355
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 356
    :cond_14
    const-string v0, "800x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 357
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 358
    :cond_15
    const-string v0, "640x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 359
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 360
    :cond_16
    const-string v0, "1280x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 361
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 362
    :cond_17
    const-string v0, "1280x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 363
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 364
    :cond_18
    const-string v0, "1248x672"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 365
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 366
    :cond_19
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 367
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 368
    :cond_1a
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 369
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 370
    :cond_1b
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 371
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 372
    :cond_1c
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 373
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 374
    :cond_1d
    const-string v0, "960x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 375
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 376
    :cond_1e
    const-string v0, "1024x768"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 377
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 378
    :cond_1f
    const-string v0, "800x600"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 379
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 381
    :cond_20
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 241
    packed-switch p0, :pswitch_data_0

    .line 309
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 243
    :pswitch_1
    const-string v0, "3264x2448"

    goto :goto_0

    .line 245
    :pswitch_2
    const-string v0, "3264x1968"

    goto :goto_0

    .line 247
    :pswitch_3
    const-string v0, "3264x1960"

    goto :goto_0

    .line 249
    :pswitch_4
    const-string v0, "3264x1836"

    goto :goto_0

    .line 251
    :pswitch_5
    const-string v0, "3072x2304"

    goto :goto_0

    .line 253
    :pswitch_6
    const-string v0, "3072x1856"

    goto :goto_0

    .line 255
    :pswitch_7
    const-string v0, "2592x1944"

    goto :goto_0

    .line 257
    :pswitch_8
    const-string v0, "2560x1920"

    goto :goto_0

    .line 259
    :pswitch_9
    const-string v0, "2560x1536"

    goto :goto_0

    .line 261
    :pswitch_a
    const-string v0, "2560x1440"

    goto :goto_0

    .line 263
    :pswitch_b
    const-string v0, "2048x1536"

    goto :goto_0

    .line 265
    :pswitch_c
    const-string v0, "2048x1232"

    goto :goto_0

    .line 267
    :pswitch_d
    const-string v0, "2048x1152"

    goto :goto_0

    .line 269
    :pswitch_e
    const-string v0, "2048x1104"

    goto :goto_0

    .line 271
    :pswitch_f
    const-string v0, "1920x1080"

    goto :goto_0

    .line 273
    :pswitch_10
    const-string v0, "1632x880"

    goto :goto_0

    .line 275
    :pswitch_11
    const-string v0, "1600x1200"

    goto :goto_0

    .line 277
    :pswitch_12
    const-string v0, "1600x960"

    goto :goto_0

    .line 279
    :pswitch_13
    const-string v0, "1536x864"

    goto :goto_0

    .line 281
    :pswitch_14
    const-string v0, "1392x1392"

    goto :goto_0

    .line 283
    :pswitch_15
    const-string v0, "1280x960"

    goto :goto_0

    .line 285
    :pswitch_16
    const-string v0, "1280x800"

    goto :goto_0

    .line 287
    :pswitch_17
    const-string v0, "800x480"

    goto :goto_0

    .line 289
    :pswitch_18
    const-string v0, "640x480"

    goto :goto_0

    .line 291
    :pswitch_19
    const-string v0, "1248x672"

    goto :goto_0

    .line 293
    :pswitch_1a
    const-string v0, "1280x720"

    goto :goto_0

    .line 295
    :pswitch_1b
    const-string v0, "720x480"

    goto :goto_0

    .line 297
    :pswitch_1c
    const-string v0, "400x240"

    goto :goto_0

    .line 299
    :pswitch_1d
    const-string v0, "320x240"

    goto :goto_0

    .line 301
    :pswitch_1e
    const-string v0, "176x144"

    goto :goto_0

    .line 303
    :pswitch_1f
    const-string v0, "960x720"

    goto :goto_0

    .line 305
    :pswitch_20
    const-string v0, "1024x768"

    goto :goto_0

    .line 307
    :pswitch_21
    const-string v0, "800x600"

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_11
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_17
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_4
        :pswitch_a
        :pswitch_16
        :pswitch_d
        :pswitch_14
        :pswitch_7
        :pswitch_e
        :pswitch_10
        :pswitch_13
        :pswitch_19
        :pswitch_3
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    const/4 v0, 0x1

    .line 195
    packed-switch p0, :pswitch_data_0

    .line 236
    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
