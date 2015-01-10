.class public Lcom/android/phone/EmergencyCallList;
.super Landroid/app/ListActivity;
.source "EmergencyCallList.java"


# instance fields
.field final RTS_CS:I

.field final RTS_PS:I

.field final RTS_STATUS:I

.field final RTS_TOKEN_CS:Ljava/lang/String;

.field final RTS_TOKEN_STATUS:Ljava/lang/String;

.field final RTS_VALUES_COUNT:I

.field final RTS_VALUE_LOC:I

.field private mDialAlertDialog:Landroid/app/AlertDialog;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mLocked:Z

.field private mNameList:[Ljava/lang/String;

.field private mNumberList:[Ljava/lang/String;

.field private mSelectedPosition:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_STATUS:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_VALUE_LOC:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_CS:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_PS:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_VALUES_COUNT:I

    .line 48
    const-string v0, "Status"

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_TOKEN_STATUS:Ljava/lang/String;

    .line 49
    const-string v0, "CS"

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_TOKEN_CS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyCallList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isDomesticArea()Z
    .locals 3

    .prologue
    .line 339
    const-string v1, "ril.currentplmn"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, currIso:Ljava/lang/String;
    const-string v1, "domestic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    const/4 v1, 0x1

    .line 343
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 377
    :goto_0
    return v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemKeyEventRequested - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 381
    const-string v0, "EmergencyCallList"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 385
    const-string v0, "EmergencyCallList"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 386
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSystemKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCategoryOf119(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    .line 229
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v7

    if-nez v7, :cond_2

    .line 230
    const-string v7, "ril.skt.network_regist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, ril:Ljava/lang/String;
    const-string v7, ";"

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, rtsValues:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, statusValue:[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v5, v7

    const-string v8, "CS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, csValue:[Ljava/lang/String;
    aget-object v7, v1, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 235
    .local v3, rtsCsValue:I
    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 236
    .local v4, rtsStatusValue:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsCsValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rtsStatusValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 237
    const/4 v7, 0x5

    if-ne v4, v7, :cond_1

    if-nez v3, :cond_1

    .line 238
    packed-switch p1, :pswitch_data_0

    .line 249
    :pswitch_0
    const/4 v0, 0x4

    .line 268
    .local v0, categoryOf119:I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryOf119 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 269
    const-string v7, "ril.skt119Cat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v0           #categoryOf119:I
    .end local v1           #csValue:[Ljava/lang/String;
    .end local v2           #ril:Ljava/lang/String;
    .end local v3           #rtsCsValue:I
    .end local v4           #rtsStatusValue:I
    .end local v5           #rtsValues:[Ljava/lang/String;
    .end local v6           #statusValue:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 240
    .restart local v1       #csValue:[Ljava/lang/String;
    .restart local v2       #ril:Ljava/lang/String;
    .restart local v3       #rtsCsValue:I
    .restart local v4       #rtsStatusValue:I
    .restart local v5       #rtsValues:[Ljava/lang/String;
    .restart local v6       #statusValue:[Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x2

    .line 241
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 243
    .end local v0           #categoryOf119:I
    :pswitch_2
    const/4 v0, 0x4

    .line 244
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 246
    .end local v0           #categoryOf119:I
    :pswitch_3
    const/16 v0, 0x10

    .line 247
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 253
    .end local v0           #categoryOf119:I
    :cond_1
    packed-switch p1, :pswitch_data_1

    .line 264
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 255
    .end local v0           #categoryOf119:I
    :pswitch_5
    const/4 v0, 0x2

    .line 256
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 258
    .end local v0           #categoryOf119:I
    :pswitch_6
    const/4 v0, 0x4

    .line 259
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 261
    .end local v0           #categoryOf119:I
    :pswitch_7
    const/16 v0, 0x10

    .line 262
    .restart local v0       #categoryOf119:I
    goto :goto_0

    .line 270
    .end local v0           #categoryOf119:I
    .end local v1           #csValue:[Ljava/lang/String;
    .end local v2           #ril:Ljava/lang/String;
    .end local v3           #rtsCsValue:I
    .end local v4           #rtsStatusValue:I
    .end local v5           #rtsValues:[Ljava/lang/String;
    .end local v6           #statusValue:[Ljava/lang/String;
    :cond_2
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v7

    if-nez v7, :cond_0

    .line 271
    packed-switch p1, :pswitch_data_2

    .line 282
    :pswitch_8
    const/4 v0, 0x4

    .line 285
    .restart local v0       #categoryOf119:I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryOf119 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 286
    const-string v7, "ril.skt119Cat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 273
    .end local v0           #categoryOf119:I
    :pswitch_9
    const/4 v0, 0x2

    .line 274
    .restart local v0       #categoryOf119:I
    goto :goto_2

    .line 276
    .end local v0           #categoryOf119:I
    :pswitch_a
    const/4 v0, 0x4

    .line 277
    .restart local v0       #categoryOf119:I
    goto :goto_2

    .line 279
    .end local v0           #categoryOf119:I
    :pswitch_b
    const/16 v0, 0x10

    .line 280
    .restart local v0       #categoryOf119:I
    goto :goto_2

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 253
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 271
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private setEmergencyList()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 291
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 292
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    const-string v6, "3"

    const-string v7, "ril.simtype"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "18"

    const-string v7, "ril.simtype"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    .line 336
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    .line 302
    :cond_2
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 303
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_4
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 311
    const-string v6, "ril.skt.network_regist"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, ril:Ljava/lang/String;
    const-string v6, ";"

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, rtsValues:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "Status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, statusValue:[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 315
    .local v3, rtsStatusValue:I
    aget-object v6, v4, v9

    const-string v7, "CS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, csValue:[Ljava/lang/String;
    aget-object v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 318
    .local v2, rtsCsValue:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rtsStatusValue - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rtsCsValue - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 321
    const/4 v6, 0x5

    if-ne v3, v6, :cond_5

    if-nez v2, :cond_5

    .line 322
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 325
    :cond_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 328
    .end local v0           #csValue:[Ljava/lang/String;
    .end local v1           #ril:Ljava/lang/String;
    .end local v2           #rtsCsValue:I
    .end local v3           #rtsStatusValue:I
    .end local v4           #rtsValues:[Ljava/lang/String;
    .end local v5           #statusValue:[Ljava/lang/String;
    :cond_6
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 329
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 332
    :cond_7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 59
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    .line 61
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "20"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "18"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 65
    invoke-direct {p0, v3, v2}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 68
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallList;->isSystemKeyEventRequested(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    .line 70
    :cond_2
    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 349
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "20"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 352
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 359
    :goto_0
    return v0

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 168
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 170
    iput p3, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    .line 172
    invoke-direct {p0, p3}, Lcom/android/phone/EmergencyCallList;->setCategoryOf119(I)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 176
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    iget v4, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    if-nez v4, :cond_0

    .line 181
    const-string v0, "com.android.phone.EmergencyDialer.DIAL"

    .line 182
    .local v0, ACTION_EMERGENCY_DIAL:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 224
    .end local v0           #ACTION_EMERGENCY_DIAL:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e051a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    iget v7, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    const v4, 0x7f0e002a

    new-instance v5, Lcom/android/phone/EmergencyCallList$2;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyCallList$2;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    const v4, 0x7f0e002e

    new-instance v5, Lcom/android/phone/EmergencyCallList$3;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyCallList$3;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    new-instance v4, Lcom/android/phone/EmergencyCallList$4;

    invoke-direct {v4, p0}, Lcom/android/phone/EmergencyCallList$4;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    .line 219
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f0e0519

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 220
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 221
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 145
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 147
    const-string v2, "ota_mode_disable_expand"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 150
    const/16 v2, 0x1a

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 154
    :cond_0
    const-string v2, "ota_mode_disable_expand"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 157
    .local v1, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 160
    .end local v1           #sbm:Landroid/app/StatusBarManager;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 163
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 78
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v11, -0x1000001

    and-int/2addr v10, v11

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    const-string v10, "ota_mode_disable_expand"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 82
    iget-object v10, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 85
    const/4 v10, 0x3

    invoke-direct {p0, v10, v12}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 86
    const/16 v10, 0x1a

    invoke-direct {p0, v10, v12}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 89
    const-string v10, "statusbar"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    .line 90
    .local v8, sbm:Landroid/app/StatusBarManager;
    const/high16 v10, 0x47

    invoke-virtual {v8, v10}, Landroid/app/StatusBarManager;->disable(I)V

    .line 101
    .end local v8           #sbm:Landroid/app/StatusBarManager;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->setEmergencyList()V

    .line 103
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v11, 0x1090003

    iget-object v12, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    const v10, 0x7f0e0519

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setTitle(I)V

    .line 105
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 106
    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, sIMEI:Ljava/lang/String;
    const-string v10, "ril.simtype"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, sSimType:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 111
    const/4 v3, 0x0

    .line 116
    .local v3, iSimType:I
    :goto_1
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, sNumeric:Ljava/lang/String;
    const-string v10, "000000000000000"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/16 v10, 0xc

    if-ne v3, v10, :cond_2

    const-string v10, "45001"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 122
    :cond_1
    new-instance v1, Lcom/android/phone/EmergencyCallList$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyCallList$1;-><init>(Lcom/android/phone/EmergencyCallList;)V

    .line 128
    .local v1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0e01ba

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 130
    .local v2, defaultIMEI_Dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 132
    .end local v1           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v2           #defaultIMEI_Dialog:Landroid/app/AlertDialog;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 133
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v10, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 134
    return-void

    .line 94
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #iSimType:I
    .end local v5           #sIMEI:Ljava/lang/String;
    .end local v6           #sNumeric:Ljava/lang/String;
    .end local v7           #sSimType:Ljava/lang/String;
    .end local v9           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v10, "statusbar"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    .line 95
    .restart local v8       #sbm:Landroid/app/StatusBarManager;
    const/high16 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_0

    .line 113
    .end local v8           #sbm:Landroid/app/StatusBarManager;
    .restart local v5       #sIMEI:Ljava/lang/String;
    .restart local v7       #sSimType:Ljava/lang/String;
    .restart local v9       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #iSimType:I
    goto :goto_1
.end method
