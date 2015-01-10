.class public Lcom/android/mms/transaction/WapPushMessage;
.super Ljava/lang/Object;
.source "WapPushMessage.java"

# interfaces
.implements Lcom/android/mms/transaction/WBXmlMessage;


# static fields
.field public static final ATTRIBUTE_VALUE_TOKEN_COM:I = 0x85

.field public static final ATTRIBUTE_VALUE_TOKEN_EDU:I = 0x86

.field public static final ATTRIBUTE_VALUE_TOKEN_NET:I = 0x87

.field public static final ATTRIBUTE_VALUE_TOKEN_ORG:I = 0x88

.field public static final PREFIX_DEFAULT:Ljava/lang/String; = "http://"

.field public static final PREFIX_HTTP:Ljava/lang/String; = "http://"

.field public static final PREFIX_HTTPS:Ljava/lang/String; = "https://"

.field public static final PREFIX_HTTPS_WWW:Ljava/lang/String; = "https://www."

.field public static final PREFIX_HTTP_WWW:Ljava/lang/String; = "http://www."

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_DELETE:I = 0x9

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_HIGH:I = 0x8

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_LOW:I = 0x6

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_MEDIUM:I = 0x7

.field public static final SI_ATTRIBUTE_START_TOKEN_ACTION_SIGNAL_NONE:I = 0x5

.field public static final SI_ATTRIBUTE_START_TOKEN_CLASS:I = 0x12

.field public static final SI_ATTRIBUTE_START_TOKEN_CREATED:I = 0xa

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF:I = 0xb

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTP:I = 0xc

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTPS:I = 0xe

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTPS_WWW:I = 0xf

.field public static final SI_ATTRIBUTE_START_TOKEN_HREF_HTTP_WWW:I = 0xd

.field public static final SI_ATTRIBUTE_START_TOKEN_SI_EXPIRES:I = 0x10

.field public static final SI_ATTRIBUTE_START_TOKEN_SI_ID:I = 0x11

.field public static final SI_TAG_TOKEN_INDICATION:I = 0x6

.field public static final SI_TAG_TOKEN_INFO:I = 0x7

.field public static final SI_TAG_TOKEN_ITEM:I = 0x8

.field public static final SI_TAG_TOKEN_SI:I = 0x5

.field public static final SL_ATTRIBUTE_START_TOKEN_ACTION_CACHE:I = 0x7

.field public static final SL_ATTRIBUTE_START_TOKEN_ACTION_EXECUTE_HIGH:I = 0x6

.field public static final SL_ATTRIBUTE_START_TOKEN_ACTION_EXECUTE_LOW:I = 0x5

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF:I = 0x8

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTP:I = 0x9

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTPS:I = 0xb

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTPS_WWW:I = 0xc

.field public static final SL_ATTRIBUTE_START_TOKEN_HREF_HTTP_WWW:I = 0xa

.field public static final SL_PRIORITY_ACTION_CACHE:I = 0x3

.field public static final SL_PRIORITY_ACTION_EXECUTE_HIGH:I = 0x1

.field public static final SL_PRIORITY_ACTION_EXECUTE_LOW:I = 0x2

.field public static final SL_TAG_TOKEN_SL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Mms/WapPushMessage"

.field public static final VALUE_COM:Ljava/lang/String; = ".com/"

.field public static final VALUE_EDU:Ljava/lang/String; = ".edu/"

.field public static final VALUE_NET:Ljava/lang/String; = ".net/"

.field public static final VALUE_ORG:Ljava/lang/String; = ".org/"


# instance fields
.field private OriginalAddress:Ljava/lang/String;

.field private action:I

.field private created:J

.field private encodingCharsetName:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private in:Ljava/io/ByteArrayInputStream;

.field protected mSimID:I

.field private publicId:I

.field private publicIdStr:Ljava/lang/String;

.field private siExpires:J

.field private siId:Ljava/lang/String;

.field private stringTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private wbxmlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    .line 83
    iput v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    .line 84
    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->publicIdStr:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    .line 86
    iput v0, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    .line 87
    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    .line 88
    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    .line 89
    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 92
    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    .line 98
    iput-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->OriginalAddress:Ljava/lang/String;

    return-void
.end method

.method private hasProtocol(Ljava/lang/String;)Z
    .locals 1
    .parameter "href"

    .prologue
    .line 324
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private parseDateTime()J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v9

    .line 401
    .local v9, datetimeEncoding:I
    const/16 v3, 0xc3

    if-eq v9, v3, :cond_0

    .line 402
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported datetime encoding. datetime encoding= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", remainBytes ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v10

    .line 408
    .local v10, datetimeLength:I
    const/4 v3, 0x2

    if-ge v10, v3, :cond_1

    .line 409
    new-instance v3, Lcom/google/android/mms/InvalidHeaderValueException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid datetime length. length= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 414
    .local v1, datetime:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 415
    .local v2, year:I
    const/4 v13, 0x0

    .line 416
    .local v13, month:I
    const/4 v4, 0x0

    .line 417
    .local v4, day:I
    const/4 v5, 0x0

    .line 418
    .local v5, hour:I
    const/4 v6, 0x0

    .line 419
    .local v6, minute:I
    const/4 v7, 0x0

    .line 421
    .local v7, second:I
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    .local v15, yearBuf:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_2

    .line 423
    packed-switch v12, :pswitch_data_0

    .line 422
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 425
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 428
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 430
    goto :goto_1

    .line 432
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 433
    goto :goto_1

    .line 435
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 436
    goto :goto_1

    .line 438
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 439
    goto :goto_1

    .line 441
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 442
    goto :goto_1

    .line 444
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 445
    goto :goto_1

    .line 451
    :cond_2
    add-int/lit8 v3, v13, -0x1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 454
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    .line 455
    .local v14, timeZone:Ljava/util/TimeZone;
    const/4 v11, 0x0

    .line 456
    .local v11, gmtOffset:I
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 458
    .local v8, curDate:Ljava/util/Date;
    invoke-virtual {v14}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v14, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 459
    invoke-virtual {v14}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual {v14}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v16

    add-int v11, v3, v16

    .line 463
    :goto_2
    const/16 v3, 0xe

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 464
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v11}, Ljava/util/Calendar;->add(II)V

    .line 467
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    return-wide v16

    .line 461
    :cond_3
    invoke-virtual {v14}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    goto :goto_2

    .line 423
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
    .end packed-switch
.end method

.method private parseSIAttr()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 236
    const/4 v5, 0x1

    .line 237
    .local v5, isReadByte:Z
    const/4 v8, -0x1

    .line 240
    .local v8, token:I
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v8

    .line 243
    :cond_1
    const/4 v5, 0x1

    .line 245
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 321
    return-void

    .line 249
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 317
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported attribute. attribute= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 255
    :pswitch_0
    iput v8, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    goto :goto_0

    .line 264
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 266
    .local v6, siIdBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 267
    const/4 v5, 0x0

    .line 270
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, tempsiId:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 272
    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    goto :goto_0

    .line 277
    .end local v6           #siIdBuf:Ljava/lang/StringBuffer;
    .end local v7           #tempsiId:Ljava/lang/String;
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    .local v0, hrefBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 280
    const/4 v5, 0x0

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 285
    .end local v0           #hrefBuf:Ljava/lang/StringBuffer;
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    .local v1, hrefHttpBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 288
    const/4 v5, 0x0

    .line 290
    const-string v9, "http://"

    invoke-virtual {v1, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 293
    .end local v1           #hrefHttpBuf:Ljava/lang/StringBuffer;
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v2, hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 296
    const/4 v5, 0x0

    .line 298
    const-string v9, "http://www."

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    .end local v2           #hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local v3, hrefHttpsBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 304
    const/4 v5, 0x0

    .line 306
    const-string v9, "https://"

    invoke-virtual {v3, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 309
    .end local v3           #hrefHttpsBuf:Ljava/lang/StringBuffer;
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v4, hrefHttpsWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v8

    .line 312
    const/4 v5, 0x0

    .line 314
    const-string v9, "https://www."

    invoke-virtual {v4, v11, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseSLAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 328
    const/4 v5, 0x1

    .line 329
    .local v5, isReadByte:Z
    const/4 v6, -0x1

    .line 332
    .local v6, token:I
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v6

    .line 335
    :cond_1
    const/4 v5, 0x1

    .line 337
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 397
    return-void

    .line 341
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 393
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported attribute. attribute= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 345
    :pswitch_0
    iput v6, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    .line 348
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v0, hrefBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 351
    const/4 v5, 0x0

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    .line 355
    iget-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/WapPushMessage;->hasProtocol(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 356
    const-string v7, "Mms/WapPushMessage"

    const-string v8, "WAP Sl message uses default protocol"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 361
    .end local v0           #hrefBuf:Ljava/lang/StringBuffer;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 363
    .local v1, hrefHttpBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 364
    const/4 v5, 0x0

    .line 366
    const-string v7, "http://"

    invoke-virtual {v1, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 369
    .end local v1           #hrefHttpBuf:Ljava/lang/StringBuffer;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 371
    .local v2, hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 372
    const/4 v5, 0x0

    .line 374
    const-string v7, "http://www."

    invoke-virtual {v2, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 377
    .end local v2           #hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 379
    .local v3, hrefHttpsBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 380
    const/4 v5, 0x0

    .line 382
    const-string v7, "https://"

    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 385
    .end local v3           #hrefHttpsBuf:Ljava/lang/StringBuffer;
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    .local v4, hrefHttpsWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 388
    const/4 v5, 0x0

    .line 390
    const-string v7, "https://www."

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseTag(I)V
    .locals 3
    .parameter "_tagToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSIAttr()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSLAttr()V

    goto :goto_0

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported operation. publicId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 473
    .local v0, inByte:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 474
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_0
    return v0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 483
    .local v1, intValue:I
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    .line 484
    .local v0, inByte:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 485
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 487
    return v1
.end method

.method private readOPAQUE()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    .line 493
    .local v1, inByte:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 494
    .local v0, buf:Ljava/lang/StringBuffer;
    shr-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readString(Ljava/lang/StringBuffer;)I
    .locals 7
    .parameter "_value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 501
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    .line 503
    .local v0, inByte:I
    sparse-switch v0, :sswitch_data_0

    .line 535
    return v0

    .line 505
    :sswitch_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    .local v2, stringValues:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    .line 509
    .local v1, stringValue:I
    if-nez v1, :cond_0

    .line 510
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 519
    .end local v1           #stringValue:I
    .end local v2           #stringValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v3

    .line 520
    .local v3, tableIndex:I
    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 523
    .end local v3           #tableIndex:I
    :sswitch_2
    const-string v4, ".com/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 526
    :sswitch_3
    const-string v4, ".edu/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 529
    :sswitch_4
    const-string v4, ".net/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 532
    :sswitch_5
    const-string v4, ".org/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 503
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x83 -> :sswitch_1
        0x85 -> :sswitch_2
        0x86 -> :sswitch_3
        0x87 -> :sswitch_4
        0x88 -> :sswitch_5
    .end sparse-switch
.end method

.method public static slActionToPriority(I)I
    .locals 1
    .parameter "_action"

    .prologue
    const/4 v0, 0x3

    .line 618
    packed-switch p0, :pswitch_data_0

    .line 628
    :goto_0
    :pswitch_0
    return v0

    .line 620
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 622
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    return-wide v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->OriginalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    return v0
.end method

.method public getSiExpires()J
    .locals 2

    .prologue
    .line 606
    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    return-wide v0
.end method

.method public getSiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIdentifier()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->mSimID:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getWbxmlVersion()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    return v0
.end method

.method public parse([B)V
    .locals 19
    .parameter "_wbxmlData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    check-cast v14, [B

    invoke-direct {v15, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    .line 116
    const/4 v4, -0x1

    .line 117
    .local v4, publicIdStIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    if-nez v14, :cond_0

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v4

    .line 122
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v1

    .line 123
    .local v1, encodingCharset:I
    sparse-switch v1, :sswitch_data_0

    .line 134
    new-instance v14, Ljava/io/UnsupportedEncodingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported encoding charset. charset= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1           #encodingCharset:I
    .end local v4           #publicIdStIndex:I
    :catch_0
    move-exception v2

    .line 203
    .local v2, ex:Ljava/lang/Exception;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v14}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 205
    throw v2

    .line 125
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #encodingCharset:I
    .restart local v4       #publicIdStIndex:I
    :sswitch_0
    :try_start_1
    const-string v14, "US-ASCII"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 139
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v6

    .line 140
    .local v6, stringTableLength:I
    const/4 v8, 0x0

    .line 141
    .local v8, stringValues:Ljava/io/ByteArrayOutputStream;
    const/4 v5, -0x1

    .line 142
    .local v5, startIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 143
    if-nez v8, :cond_1

    .line 144
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .end local v8           #stringValues:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .restart local v8       #stringValues:Ljava/io/ByteArrayOutputStream;
    move v5, v3

    .line 148
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v7

    .line 150
    .local v7, stringValue:I
    if-nez v7, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v8, 0x0

    .line 142
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    .end local v3           #i:I
    .end local v5           #startIndex:I
    .end local v6           #stringTableLength:I
    .end local v7           #stringValue:I
    .end local v8           #stringValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_1
    const-string v14, "ISO-8859-1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 131
    :sswitch_2
    const-string v14, "UTF-8"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 156
    .restart local v3       #i:I
    .restart local v5       #startIndex:I
    .restart local v6       #stringTableLength:I
    .restart local v7       #stringValue:I
    .restart local v8       #stringValues:Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 164
    .end local v7           #stringValue:I
    :cond_3
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v10, textBuf:Ljava/lang/StringBuffer;
    :goto_3
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 169
    .local v13, token:I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 199
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-eqz v14, :cond_4

    .line 200
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    .line 207
    :cond_4
    return-void

    .line 173
    :cond_5
    sparse-switch v13, :sswitch_data_1

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/WapPushMessage;->parseTag(I)V

    goto :goto_3

    .line 177
    :sswitch_4
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v12, textValues:Ljava/io/ByteArrayOutputStream;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v11

    .line 181
    .local v11, textValue:I
    if-nez v11, :cond_6

    .line 182
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 186
    :cond_6
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 191
    .end local v11           #textValue:I
    .end local v12           #textValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v9

    .line 192
    .local v9, tableIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6a -> :sswitch_2
    .end sparse-switch

    .line 173
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_4
        0x83 -> :sswitch_5
    .end sparse-switch
.end method

.method public parsepushaddress(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 212
    const-string v0, "origaddr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->OriginalAddress:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setSimIdentifier(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 640
    const-string v0, "gsm/WapPushMessage _ MULTISIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIdentifier() simId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iput p1, p0, Lcom/android/mms/transaction/WapPushMessage;->mSimID:I

    .line 642
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x3a

    const/16 v9, 0x2d

    const/16 v8, 0x9

    const/16 v7, 0xa

    .line 541
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "WapPushMessage = {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 544
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "wbxmlVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 545
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "publicId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 546
    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    :cond_0
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 550
    .local v1, cal:Ljava/util/Calendar;
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 552
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 553
    .local v2, calBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 554
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 555
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 556
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 557
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 558
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 560
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #calBuf:Ljava/lang/StringBuffer;
    :cond_1
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 563
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 564
    .restart local v1       #cal:Ljava/util/Calendar;
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 566
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 567
    .restart local v2       #calBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 570
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 571
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 572
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siExpires= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 576
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #calBuf:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "action= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "href= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 579
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "text= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 580
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
