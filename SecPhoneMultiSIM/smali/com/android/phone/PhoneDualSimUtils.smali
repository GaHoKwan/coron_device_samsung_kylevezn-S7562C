.class public Lcom/android/phone/PhoneDualSimUtils;
.super Ljava/lang/Object;
.source "PhoneDualSimUtils.java"


# static fields
.field private static mSimMaster:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallSimIcon(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 255
    move-object v1, p0

    .line 256
    .local v1, mContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 257
    .local v3, simIconIdx:I
    const/4 v2, 0x0

    .line 260
    .local v2, simIcon:I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 261
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 274
    :goto_0
    const-string v4, "support_multisim_ver2"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    packed-switch v3, :pswitch_data_0

    .line 313
    const v2, 0x7f02010c

    .line 317
    :cond_0
    :goto_1
    return v2

    .line 263
    :cond_1
    :try_start_1
    const-string v4, "ril.MSIMM"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    .line 264
    sget-object v4, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v2, 0x7f02010c

    .line 278
    goto :goto_1

    .line 281
    :pswitch_1
    const v2, 0x7f02012b

    .line 282
    goto :goto_1

    .line 285
    :pswitch_2
    const v2, 0x7f020123

    .line 286
    goto :goto_1

    .line 289
    :pswitch_3
    const v2, 0x7f020127

    .line 290
    goto :goto_1

    .line 293
    :pswitch_4
    const v2, 0x7f02011c

    .line 294
    goto :goto_1

    .line 297
    :pswitch_5
    const v2, 0x7f020119

    .line 298
    goto :goto_1

    .line 301
    :pswitch_6
    const v2, 0x7f020116

    .line 302
    goto :goto_1

    .line 305
    :pswitch_7
    const v2, 0x7f020120

    .line 306
    goto :goto_1

    .line 309
    :pswitch_8
    const v2, 0x7f020112

    .line 310
    goto :goto_1

    .line 275
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
.end method

.method public static getCallSimIconDim(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 322
    move-object v1, p0

    .line 323
    .local v1, mContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 324
    .local v3, simIconIdx:I
    const/4 v2, 0x0

    .line 327
    .local v2, simIcon:I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 341
    :goto_0
    const-string v4, "support_multisim_ver2"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    packed-switch v3, :pswitch_data_0

    .line 381
    const v2, 0x7f02010d

    .line 385
    :cond_0
    :goto_1
    return v2

    .line 330
    :cond_1
    :try_start_1
    const-string v4, "ril.MSIMM"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    .line 331
    sget-object v4, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_icon_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v2, 0x7f02010d

    .line 346
    goto :goto_1

    .line 349
    :pswitch_1
    const v2, 0x7f02012c

    .line 350
    goto :goto_1

    .line 353
    :pswitch_2
    const v2, 0x7f020124

    .line 354
    goto :goto_1

    .line 357
    :pswitch_3
    const v2, 0x7f020128

    .line 358
    goto :goto_1

    .line 361
    :pswitch_4
    const v2, 0x7f02011d

    .line 362
    goto :goto_1

    .line 365
    :pswitch_5
    const v2, 0x7f02011a

    .line 366
    goto :goto_1

    .line 369
    :pswitch_6
    const v2, 0x7f020117

    .line 370
    goto :goto_1

    .line 373
    :pswitch_7
    const v2, 0x7f020121

    .line 374
    goto :goto_1

    .line 377
    :pswitch_8
    const v2, 0x7f020113

    .line 378
    goto :goto_1

    .line 343
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
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, simIconIdx:I
    const/4 v1, 0x0

    .line 60
    .local v1, simIcon:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 76
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 99
    const v1, 0x7f0204f1

    .line 103
    :goto_1
    return v1

    .line 63
    :cond_0
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    .line 64
    sget-object v3, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v1, 0x7f0204f1

    .line 80
    goto :goto_1

    .line 83
    :pswitch_1
    const v1, 0x7f0204f3

    .line 84
    goto :goto_1

    .line 87
    :pswitch_2
    const v1, 0x7f0204ff

    .line 88
    goto :goto_1

    .line 91
    :pswitch_3
    const v1, 0x7f020506

    .line 92
    goto :goto_1

    .line 95
    :pswitch_4
    const v1, 0x7f0204fb

    .line 96
    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimIconSmall(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, simIconIdx:I
    const/4 v1, 0x0

    .line 169
    .local v1, simIcon:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 184
    :goto_0
    const-string v3, "support_multisim_ver2"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    packed-switch v2, :pswitch_data_0

    .line 215
    const v1, 0x7f0204f2

    .line 250
    :goto_1
    return v1

    .line 172
    :cond_0
    :try_start_1
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    .line 173
    sget-object v3, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v1, 0x7f0204f2

    .line 189
    goto :goto_1

    .line 191
    :pswitch_1
    const v1, 0x7f02050c

    .line 192
    goto :goto_1

    .line 194
    :pswitch_2
    const v1, 0x7f0204ed

    .line 195
    goto :goto_1

    .line 197
    :pswitch_3
    const v1, 0x7f020505

    .line 198
    goto :goto_1

    .line 200
    :pswitch_4
    const v1, 0x7f020504

    .line 201
    goto :goto_1

    .line 203
    :pswitch_5
    const v1, 0x7f020503

    .line 204
    goto :goto_1

    .line 206
    :pswitch_6
    const v1, 0x7f020502

    .line 207
    goto :goto_1

    .line 209
    :pswitch_7
    const v1, 0x7f020509

    .line 210
    goto :goto_1

    .line 212
    :pswitch_8
    const v1, 0x7f0204fe

    .line 213
    goto :goto_1

    .line 223
    :cond_2
    packed-switch v2, :pswitch_data_1

    .line 246
    const v1, 0x7f0204f8

    goto :goto_1

    .line 226
    :pswitch_9
    const v1, 0x7f0204f8

    .line 227
    goto :goto_1

    .line 230
    :pswitch_a
    const v1, 0x7f0204f9

    .line 231
    goto :goto_1

    .line 234
    :pswitch_b
    const v1, 0x7f020501

    .line 235
    goto :goto_1

    .line 238
    :pswitch_c
    const v1, 0x7f020508

    .line 239
    goto :goto_1

    .line 242
    :pswitch_d
    const v1, 0x7f0204fd

    .line 243
    goto :goto_1

    .line 185
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

    .line 223
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
    .locals 3
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, simName:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/android/phone/PhoneDualSimUtils;->mSimMaster:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isOneSIMcardsInsertedInSlot2()Z
    .locals 3

    .prologue
    .line 23
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, mSIMM:Ljava/lang/String;
    const/4 v1, 0x1

    .line 25
    .local v1, vReturn:Z
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 34
    :goto_0
    return v1

    .line 31
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
