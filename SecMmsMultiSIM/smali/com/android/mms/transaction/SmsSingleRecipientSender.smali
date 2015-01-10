.class public Lcom/android/mms/transaction/SmsSingleRecipientSender;
.super Lcom/android/mms/transaction/SmsMessageSender;
.source "SmsSingleRecipientSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SmsSingleRecipientSender"


# instance fields
.field private mDest:Ljava/lang/String;

.field private mPriority:I

.field private final mRequestDeliveryReport:Z

.field private mSendSimSlot:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V
    .locals 7
    .parameter "context"
    .parameter "dest"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "requestDeliveryReport"
    .parameter "uri"
    .parameter "sendSimSlot"

    .prologue
    .line 65
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 60
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    .line 66
    iput-boolean p6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    .line 67
    iput-object p2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 69
    iput p8, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSendSimSlot:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsSingleRecipientSender() mSendSimSlot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSendSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;II)V
    .locals 10
    .parameter "context"
    .parameter "dest"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "requestDeliveryReport"
    .parameter "uri"
    .parameter "priority"
    .parameter "sendSimSlot"

    .prologue
    .line 82
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V

    .line 83
    iput-object p2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 85
    move/from16 v0, p8

    iput v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    .line 86
    const-string v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsSingleRecipientSender priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;II)V
    .locals 10
    .parameter "context"
    .parameter "dest"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "requestDeliveryReport"
    .parameter "uri"
    .parameter "callbackNumber"
    .parameter "priority"
    .parameter "sendSimSlot"

    .prologue
    .line 75
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V

    .line 76
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    .line 77
    move/from16 v0, p9

    iput v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    .line 78
    return-void
.end method

.method private EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "msgText"

    .prologue
    .line 346
    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    if-nez v7, :cond_5

    .line 347
    move-object v0, p1

    .line 348
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v4, stringBuilder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v3, s:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 359
    .local v6, v:C
    const/16 v7, 0x3130

    if-ge v7, v6, :cond_0

    const/16 v7, 0x318d

    if-lt v6, v7, :cond_1

    :cond_0
    const v7, 0xabff

    if-ge v7, v6, :cond_2

    const v7, 0xd7a4

    if-ge v6, v7, :cond_2

    .line 360
    :cond_1
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    move-object v2, p1

    .line 381
    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #s:Ljava/lang/StringBuffer;
    .end local v4           #stringBuilder:Ljava/lang/StringBuilder;
    .end local v6           #v:C
    .end local p1
    .local v2, msgText:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 364
    .end local v2           #msgText:Ljava/lang/String;
    .restart local v0       #Tempbuff:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #s:Ljava/lang/StringBuffer;
    .restart local v4       #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v6       #v:C
    .restart local p1
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v5

    .line 365
    .local v5, temp:C
    const-string v7, "Mms/SmsSingleRecipientSender"

    const-string v8, "char temp"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 367
    const v7, 0xfeff

    if-ne v7, v5, :cond_3

    .line 369
    const/16 v5, 0x3f

    .line 370
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Unavialable to show"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v5           #temp:C
    .end local v6           #v:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #s:Ljava/lang/StringBuffer;
    .end local v4           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_5
    move-object v2, p1

    .line 381
    .end local p1
    .restart local v2       #msgText:Ljava/lang/String;
    goto :goto_1
.end method

.method private convertSMSAddress()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    const-class v4, Landroid/telephony/PhoneNumberUtils;

    const-string v5, "convertSMSDestinationAddress"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 333
    .local v0, convertSMSDestinationAddress:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v0, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 335
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "convertSMSAddress() result is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return v2

    .line 340
    :cond_0
    iput-object v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move v2, v3

    .line 341
    goto :goto_0
.end method

.method private createMessages(Landroid/telephony/SmsManager;)Ljava/util/ArrayList;
    .locals 5
    .parameter "smsManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getEmailLen()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->fragmentTextWithEmail(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 279
    .end local v0           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 280
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 282
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    const-string v2, "createMessages 2) IS41 Email : CDMA sendMessage"

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->divideMessageWithIS41Email(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 296
    .restart local v0       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto :goto_0

    .line 285
    .end local v0           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 3) CDMA Alias destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, msgText:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 289
    .restart local v0       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .end local v0           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #msgText:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 4) CDMA Email destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->divideMessageWithEmailCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 293
    .end local v0           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v0, 0x0

    .line 294
    .restart local v0       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "SmsMessageSender.sendMessage: address checking falied"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    .end local v0           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 5) CDMA phone number destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 300
    .restart local v0       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_0

    .line 304
    .end local v0           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 306
    :cond_8
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaximumEmailAddressLength()I

    move-result v3

    if-le v2, v3, :cond_9

    .line 307
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "SmsMessageSender.sendMessage: divideMessage returned wrong address"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_9
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 6) GSM Email destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->divideMessageWithEmailCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 312
    .restart local v0       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_0

    .line 315
    .end local v0           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const-string v2, "Mms/SmsSingleRecipientSender"

    const-string v3, "createMessages 7) GSM phone number destination"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    invoke-virtual {p1, v2, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    .restart local v0       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private divideMessageWithEmailCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "text"
    .parameter "email"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 422
    .local v0, emailLength:I
    const/4 v3, 0x0

    .line 426
    .local v3, message_header_margin:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 427
    const/4 v9, 0x0

    invoke-static {p1, v9, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .line 432
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    const/4 v3, 0x7

    .line 435
    :goto_1
    const/4 v9, 0x3

    new-array v2, v9, [I

    .line 436
    .local v2, limit:[I
    iget v9, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 437
    const/4 v9, 0x0

    rsub-int v10, v3, 0x8c

    div-int/lit8 v10, v10, 0x2

    aput v10, v2, v9

    .line 438
    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x7e

    div-int/lit8 v10, v10, 0x2

    aput v10, v2, v9

    .line 439
    const/4 v9, 0x2

    const/16 v10, 0x4c

    aput v10, v2, v9

    .line 446
    :goto_2
    if-lez v0, :cond_3

    .line 447
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v9, v2

    if-ge v1, v9, :cond_3

    .line 448
    aget v9, v2, v1

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    aput v9, v2, v1

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 429
    .end local v1           #i:I
    .end local v2           #limit:[I
    .end local v7           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    const/4 v9, 0x0

    invoke-static {p1, v9, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .restart local v7       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto :goto_0

    .line 432
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 441
    .restart local v2       #limit:[I
    :cond_2
    const/4 v9, 0x0

    rsub-int v10, v3, 0xa0

    aput v10, v2, v9

    .line 442
    const/4 v9, 0x1

    add-int/lit16 v10, v3, 0x92

    aput v10, v2, v9

    .line 443
    const/4 v9, 0x2

    const/16 v10, 0x99

    aput v10, v2, v9

    goto :goto_2

    .line 452
    :cond_3
    const/4 v5, 0x0

    .line 453
    .local v5, pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 455
    .local v8, textLength:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 457
    .restart local v1       #i:I
    :goto_4
    add-int/lit8 v9, v8, -0x1

    if-gt v5, v9, :cond_5

    .line 458
    aget v9, v2, v1

    sub-int v10, v8, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int v4, v5, v9

    .line 459
    .local v4, nextPos:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_4

    .line 461
    add-int/lit8 v1, v1, 0x1

    .line 463
    :cond_4
    move v5, v4

    .line 464
    goto :goto_4

    .line 465
    .end local v4           #nextPos:I
    :cond_5
    return-object v6
.end method

.method private divideMessageWithIS41Email(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "text"
    .parameter "email"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 392
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 394
    .local v0, emailLength:I
    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 395
    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-static {p1, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    .line 397
    .local v1, length:[I
    aget v8, v1, v8

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 398
    aget v8, v1, v9

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 400
    const/16 v2, 0xa0

    .line 401
    .local v2, limit:I
    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v8, v9, :cond_0

    .line 402
    const/16 v2, 0x46

    .line 404
    :cond_0
    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 405
    sub-int v8, v2, v0

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v8, -0x7

    .line 407
    :cond_1
    const/4 v4, 0x0

    .line 408
    .local v4, pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 410
    .local v7, textLength:I
    new-instance v5, Ljava/util/ArrayList;

    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-ge v4, v7, :cond_2

    .line 412
    sub-int v8, v7, v4

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    .line 414
    .local v3, nextPos:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    move v4, v3

    .line 416
    goto :goto_0

    .line 417
    .end local v3           #nextPos:I
    :cond_2
    return-object v5
.end method

.method public static fragmentTextWithEmail(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .parameter "text"
    .parameter "maxEmailLen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x1

    .line 477
    const/4 v7, 0x0

    invoke-static {p0, v7, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    .line 480
    .local v5, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v7, v9, :cond_4

    .line 481
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v8, :cond_3

    .line 482
    const/16 v1, 0x40

    .line 494
    .local v1, limit:I
    :goto_0
    if-lez p1, :cond_0

    .line 495
    sub-int v7, v1, p1

    add-int/lit8 v1, v7, -0x1

    .line 498
    :cond_0
    const/4 v3, 0x0

    .line 499
    .local v3, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 500
    .local v6, textLen:I
    const/4 v0, 0x1

    .line 502
    .local v0, i:I
    new-instance v4, Ljava/util/ArrayList;

    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 503
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-ge v3, v6, :cond_2

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, nextPos:I
    sub-int v7, v6, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v2, v3, v7

    .line 506
    if-le v2, v3, :cond_1

    if-le v2, v6, :cond_6

    .line 507
    :cond_1
    const-string v7, "Mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SmsSingleRecipientSender] fragmentText failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .end local v2           #nextPos:I
    :cond_2
    return-object v4

    .line 484
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #pos:I
    .end local v4           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #textLen:I
    :cond_3
    const/16 v1, 0x9a

    .restart local v1       #limit:I
    goto :goto_0

    .line 487
    .end local v1           #limit:I
    :cond_4
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v8, :cond_5

    .line 488
    const/16 v1, 0x46

    .restart local v1       #limit:I
    goto :goto_0

    .line 490
    .end local v1           #limit:I
    :cond_5
    const/16 v1, 0xa0

    .restart local v1       #limit:I
    goto :goto_0

    .line 511
    .restart local v0       #i:I
    .restart local v2       #nextPos:I
    .restart local v3       #pos:I
    .restart local v4       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #textLen:I
    :cond_6
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v7, v9, :cond_7

    .line 512
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :goto_2
    move v3, v2

    .line 517
    add-int/lit8 v0, v0, 0x1

    .line 518
    goto :goto_1

    .line 514
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getEmailLen()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSendInfoLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "dest"
    .parameter "messageText"
    .parameter "messageTextEncoded"
    .parameter "userSelectedEncodingType"

    .prologue
    const/4 v1, 0x1

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v2, "[SendInfo]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v2, "destLen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    const-string v2, ", txtLen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 95
    const-string v2, ", encLen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 96
    const-string v2, ", userEnc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 97
    const-string v2, ", isEml:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 98
    const-string v2, ", isAl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 99
    const-string v2, ", 7bit:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 100
    const-string v2, ", isGrk:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 101
    const-string v2, ", isCd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 102
    const-string v2, ", hasEmailGate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, ", useSegSms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, ", useSmsExp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 105
    const-string v1, ", is41:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 523
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsSingleRecipientSender] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void
.end method


# virtual methods
.method public sendMessage(J)Z
    .locals 24
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 114
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Null message body or have multiple destinations."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 121
    .local v12, beforeEncode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/GreekInputHandler;->EncodeGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 131
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    invoke-static {v3, v12, v4, v8}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getSendInfoLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 132
    .local v22, sendInfoLog:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSendSimSlot:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSendSimSlot:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    .line 138
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage() mSendSimSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mSendSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSimSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-static {v3}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v2

    .line 141
    .local v2, smsManager:Landroid/telephony/SmsManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->createMessages(Landroid/telephony/SmsManager;)Ljava/util/ArrayList;

    move-result-object v5

    .line 143
    .local v5, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 144
    .local v19, messageCount:I
    const-string v3, "Mms/SmsSingleRecipientSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multi part count = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-nez v19, :cond_2

    .line 147
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptySms()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .restart local v5       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 162
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {v3, v4, v8, v9}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 176
    .local v20, moved:Z
    :goto_1
    if-nez v20, :cond_5

    .line 177
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessageSender.sendMessage: couldn\'t move message to outbox: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v2           #smsManager:Landroid/telephony/SmsManager;
    .end local v5           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #messageCount:I
    .end local v20           #moved:Z
    .end local v22           #sendInfoLog:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    goto/16 :goto_0

    .line 153
    .restart local v2       #smsManager:Landroid/telephony/SmsManager;
    .restart local v5       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #messageCount:I
    .restart local v22       #sendInfoLog:Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessageSender.sendMessage: divideMessage returned empty messages. Original message is \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :catch_0
    move-exception v15

    .line 164
    .local v15, ex:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v3, "Mms/SmsSingleRecipientSender"

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/16 v20, 0x0

    .line 168
    .restart local v20       #moved:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v4, v8, v9, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 169
    .local v13, count:I
    const-string v3, "Mms/SmsSingleRecipientSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted invalid data:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ",count="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 170
    .end local v13           #count:I
    :catch_1
    move-exception v14

    .line 171
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "Got exception while deleting"

    invoke-static {v3, v4, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 181
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #ex:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v7, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v6, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    if-eqz v3, :cond_6

    .line 189
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v23, Lcom/android/mms/transaction/MessageStatusReceiver;

    move-object/from16 v0, v23

    invoke-direct {v8, v9, v10, v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    invoke-static {v3, v4, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_6
    :goto_3
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_SENT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/mms/transaction/SmsReceiver;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v17, intent:Landroid/content/Intent;
    const/16 v21, 0x0

    .line 201
    .local v21, requestCode:I
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_7

    .line 205
    const/16 v21, 0x1

    .line 206
    const-string v3, "SendNextMsg"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    :cond_7
    const-string v3, "simSlot"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 194
    .end local v17           #intent:Landroid/content/Intent;
    .end local v21           #requestCode:I
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 215
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getExpiryTime(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    .line 218
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 219
    const-string v3, "IS41 Email and Segmented SMS2"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 221
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "Sprint fragment email address"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 223
    new-instance v4, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 225
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 234
    .end local v18           #j:I
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 235
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 236
    :cond_d
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "CDMA Priority or CallBack Number multi Part sending"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriority:I

    invoke-virtual/range {v2 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage: address=XXXXXXX, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgs.count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 269
    const/4 v3, 0x0

    return v3

    .line 240
    :cond_e
    :try_start_3
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "CDMA default or Sprint Segmented Message"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 263
    :catch_2
    move-exception v15

    .line 264
    .local v15, ex:Ljava/lang/Exception;
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessageSender.sendMessage: caught "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " from SmsManager.sendTextMessage()"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    .end local v15           #ex:Ljava/lang/Exception;
    :cond_f
    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 245
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "CDMA default or Sprint Segmented Message"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_5

    .line 249
    :cond_10
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "GSM multi Part sending"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v3, "Mms/SmsSingleRecipientSender"

    const-string v4, "GSM CONFIG_REPLY_PATH_FEATURE || CONFIG_GSM7BIT_INPUT_METHOD_FEATURE"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mReplyPath:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceType:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5
.end method
