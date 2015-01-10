.class public Lcom/android/mms/ui/VMessage;
.super Ljava/lang/Object;
.source "VMessage.java"


# static fields
.field public static final BEGIN_VBODY:Ljava/lang/String; = "BEGIN:VBODY"

.field public static final BEGIN_VCARD:Ljava/lang/String; = "BEGIN:VCARD"

.field public static final BEGIN_VENV:Ljava/lang/String; = "BEGIN:VENV"

.field public static final BEGIN_VMSG:Ljava/lang/String; = "BEGIN:VMSG"

.field public static final DATE_VMSG:Ljava/lang/String; = "Date:"

.field public static final END_VBODY:Ljava/lang/String; = "END:VBODY"

.field public static final END_VCARD:Ljava/lang/String; = "END:VCARD"

.field public static final END_VENV:Ljava/lang/String; = "END:VENV"

.field public static final END_VMSG:Ljava/lang/String; = "END:VMSG"

.field public static final FNAME_UTF8_VCARD:Ljava/lang/String; = "FN;CHARSET=UTF-8:"

.field public static final FNAME_VCARD:Ljava/lang/String; = "FN:"

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final LOG_TAG:Ljava/lang/String; = "VMessage"

.field public static final NAME_UTF8_VCARD:Ljava/lang/String; = "N;CHARSET=UTF-8:"

.field public static final NAME_VCARD:Ljava/lang/String; = "N:"

.field private static final ROW_VMSG_BODY:I = 0x5

.field private static final ROW_VMSG_DATE:I = 0x4

.field private static final ROW_VMSG_INBOX_ADDR:I = 0x2

.field private static final ROW_VMSG_SENT_ADDR:I = 0x3

.field private static final ROW_VMSG_TYPE:I = 0x0

.field public static final SUBJECT_VMSG:Ljava/lang/String; = "Subject:"

.field public static final TEL_VCARD:Ljava/lang/String; = "TEL;"

.field public static final VERSION_VCARD:Ljava/lang/String; = "VERSION:2.1"

.field public static final VERSION_VMSG:Ljava/lang/String; = "VERSION:1.1"

.field private static final VMSG_ATTR_CHARSET_PROPERTY:Ljava/lang/String; = "CHARSET"

.field private static final VMSG_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VMSG_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VMSG_ATTR_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VMSG_ATTR_LANGUAGE_PROPERTY:Ljava/lang/String; = "LANGUAGE"

.field public static final VMSG_BODY_PROPERTY_DATE:Ljava/lang/String; = "Date"

.field public static final VMSG_BODY_PROPERTY_FROM:Ljava/lang/String; = "From"

.field public static final VMSG_BODY_PROPERTY_SUBJECT:Ljava/lang/String; = "Subject"

.field public static final VMSG_BODY_PROPERTY_TO:Ljava/lang/String; = "To"

.field private static final VMSG_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VMSG_INDICATION_MESSAGE_TYPE:Ljava/lang/String; = "X-IRMC-TYPE"

.field private static final VMSG_INDICATION_MESSAGE_TYPE_INET:Ljava/lang/String; = "INET"

.field private static final VMSG_INDICATION_MESSAGE_TYPE_MSG:Ljava/lang/String; = "MSG"

.field private static final VMSG_INDICATION_MSG_BOX:Ljava/lang/String; = "X-IRMC-BOX"

.field private static final VMSG_INDICATION_MSG_BOX_DRAFT:Ljava/lang/String; = "DRAFT"

.field private static final VMSG_INDICATION_MSG_BOX_INBOX:Ljava/lang/String; = "INBOX"

.field private static final VMSG_INDICATION_MSG_BOX_SENT:Ljava/lang/String; = "SENT"

.field private static final VMSG_INDICATION_READ_STATUS:Ljava/lang/String; = "X-IRMC-STATUS"

.field private static final VMSG_INDICATION_READ_STATUS_READ:Ljava/lang/String; = "READ"

.field private static final VMSG_INDICATION_READ_STATUS_UNREAD:Ljava/lang/String; = "UNREAD"

.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private needCharset:Z

.field strBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "\r\n"

    sput-object v0, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VMessage;->strBuilder:Ljava/lang/StringBuilder;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/VMessage;->strBuilder:Ljava/lang/StringBuilder;

    .line 113
    iput-object p1, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "unescaped"

    .prologue
    .line 726
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 727
    const-string v5, ""

    .line 774
    :goto_0
    return-object v5

    .line 730
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 732
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 733
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 734
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 769
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    :sswitch_0
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 741
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 742
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 743
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 753
    .end local v3           #nextChar:C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 761
    :sswitch_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 765
    :sswitch_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 774
    .end local v0           #ch:C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 734
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_4
        0x3b -> :sswitch_0
        0x3c -> :sswitch_3
        0x3e -> :sswitch_3
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 1143
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v2, "=3D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "=0D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "=0A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unfoldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 1151
    const-string v0, "\n"

    const-string v1, "\r\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=3D"

    const-string v2, "="

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=0D"

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=0A"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private vMessageBodyContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 9
    .parameter "msgItem"

    .prologue
    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v2, sResult:Ljava/lang/StringBuilder;
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 405
    .local v4, time:J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "h:mma, yyyy MMM dd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 406
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 407
    .local v1, date:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 408
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    :goto_0
    const/4 v0, 0x0

    .line 414
    .local v0, body_text:Ljava/lang/String;
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/VMessage;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-boolean v6, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 418
    const-string v6, "VMessage"

    const-string v7, "vMessageBodyContent: not supported INET type in current version .."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Date:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, "sms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 453
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_1
    const-string v6, "sms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 460
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 410
    .end local v0           #body_text:Ljava/lang/String;
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 462
    .restart local v0       #body_text:Ljava/lang/String;
    :cond_4
    const-string v6, "mms"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private vMessageBodyProperties(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 6
    .parameter "msgItem"

    .prologue
    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v3, sResult:Ljava/lang/StringBuilder;
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 380
    const/4 v4, 0x0

    .line 398
    :goto_0
    return-object v4

    .line 382
    :cond_0
    const-string v4, "sms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 386
    :cond_2
    const-string v4, "mms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, e_str:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHARSET="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 392
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private vMessageContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, sResult:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN:VBODY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageBodyContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "END:VBODY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v0, sResult:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageRecipient(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNestedEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, "END:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageNestedEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v0, sResult:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageContent(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, "END:VENV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private vMessageObject(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 8
    .parameter "msgItem"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, sResult:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 135
    .local v0, mBoxId:I
    const-string v2, "BEGIN:VMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, "VERSION:1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "sms"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-ne v2, v4, :cond_3

    .line 143
    const-string v2, "X-IRMC-STATUS:READ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    :goto_0
    if-eq v0, v4, :cond_1

    if-ne v0, v4, :cond_6

    .line 158
    :cond_1
    const-string v2, "X-IRMC-BOX:INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_a

    .line 172
    iput-boolean v5, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    .line 173
    const-string v2, "X-IRMC-TYPE:MSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageOriginator(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageEnvelope(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v2, "END:VMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 145
    :cond_3
    const-string v2, "X-IRMC-STATUS:UNREAD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :cond_4
    const-string v2, "mms"

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v2, v4, :cond_5

    .line 150
    const-string v2, "X-IRMC-STATUS:READ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_5
    const-string v2, "X-IRMC-STATUS:UNREAD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_6
    if-eq v0, v6, :cond_7

    if-ne v0, v6, :cond_8

    .line 163
    :cond_7
    const-string v2, "X-IRMC-BOX:SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :cond_8
    if-eq v0, v7, :cond_9

    if-ne v0, v7, :cond_2

    .line 168
    :cond_9
    const-string v2, "X-IRMC-BOX:DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 182
    :cond_a
    iput-boolean v5, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    .line 183
    const-string v2, "X-IRMC-TYPE:MSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/VMessage;->mNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private vMessageOriginator(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 10
    .parameter "msgItem"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 196
    const/4 v5, 0x0

    .line 197
    .local v5, vcard:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, phone_number:Ljava/lang/String;
    const/4 v3, 0x0

    .line 199
    .local v3, phone_name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 203
    .local v1, composer:Lcom/android/mms/ui/VCardComposerMsg;
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v6

    .line 206
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    .line 208
    .local v2, mBoxId:I
    if-eq v2, v8, :cond_2

    if-ne v2, v8, :cond_6

    .line 211
    :cond_2
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 212
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 220
    :goto_1
    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 222
    .local v0, cinfo:Lcom/android/mms/data/Contact;
    iget-boolean v7, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    if-ne v7, v8, :cond_3

    .line 224
    const-string v4, ""

    .line 225
    const-string v3, ""

    .line 228
    :cond_3
    if-nez v4, :cond_4

    if-eqz v3, :cond_0

    .line 230
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 233
    :cond_5
    new-instance v1, Lcom/android/mms/ui/VCardComposerMsg;

    .end local v1           #composer:Lcom/android/mms/ui/VCardComposerMsg;
    iget-object v6, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const-string v7, "default"

    invoke-direct {v1, v6, v7, v9}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 235
    .restart local v1       #composer:Lcom/android/mms/ui/VCardComposerMsg;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 238
    invoke-virtual {v1, v9, v3, v4, v8}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v6, v5

    .line 255
    goto :goto_0

    .line 216
    .end local v0           #cinfo:Lcom/android/mms/data/Contact;
    :cond_6
    const-string v4, ""

    .line 217
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_1

    .line 247
    .restart local v0       #cinfo:Lcom/android/mms/data/Contact;
    :cond_7
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3, v4, v8}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private vMessageRecipient(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 14
    .parameter "msgItem"

    .prologue
    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v8, sResult:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 262
    .local v10, vcard:Ljava/lang/String;
    const/4 v0, 0x0

    .line 266
    .local v0, composer:Lcom/android/mms/ui/VCardComposerMsg;
    if-nez p1, :cond_0

    .line 267
    const/4 v11, 0x0

    .line 331
    :goto_0
    return-object v11

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    .line 271
    .local v4, mBoxId:I
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v12, v2, v11

    .line 272
    .local v2, dests:[Ljava/lang/String;
    array-length v5, v2

    .line 274
    .local v5, mNumberOfDests:I
    if-nez v5, :cond_1

    .line 275
    const/4 v11, 0x0

    goto :goto_0

    .line 277
    :cond_1
    new-instance v0, Lcom/android/mms/ui/VCardComposerMsg;

    .end local v0           #composer:Lcom/android/mms/ui/VCardComposerMsg;
    iget-object v11, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const-string v12, "default"

    const/4 v13, 0x0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 279
    .restart local v0       #composer:Lcom/android/mms/ui/VCardComposerMsg;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_7

    .line 281
    aget-object v11, v2, v3

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, name_in_ct:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, ctname:Ljava/lang/String;
    const/4 v9, 0x0

    .line 284
    .local v9, to_number:Ljava/lang/String;
    aget-object v9, v2, v3

    .line 286
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 287
    const-string v1, ""

    .line 291
    :goto_2
    const/4 v11, 0x1

    if-eq v4, v11, :cond_2

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 295
    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0011

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, meString:Ljava/lang/String;
    move-object v1, v6

    .line 297
    const-string v9, ""

    .line 300
    .end local v6           #meString:Ljava/lang/String;
    :cond_3
    iget-boolean v11, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 302
    const-string v1, ""

    .line 303
    const-string v9, ""

    .line 279
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    :cond_4
    move-object v1, v7

    goto :goto_2

    .line 308
    :cond_5
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 311
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v1, v9, v12}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 328
    :goto_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 320
    :cond_6
    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v1, v9, v12}, Lcom/android/mms/ui/VCardComposerMsg;->composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 331
    .end local v1           #ctname:Ljava/lang/String;
    .end local v7           #name_in_ct:Ljava/lang/String;
    .end local v9           #to_number:Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method


# virtual methods
.method public checkPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    const/4 v0, 0x0

    .line 1068
    const-string v1, "BEGIN:VMSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 1107
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1070
    .restart local p1
    :cond_1
    const-string v1, "VERSION:1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    .line 1071
    goto :goto_0

    .line 1072
    :cond_2
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    .line 1073
    goto :goto_0

    .line 1074
    :cond_3
    const-string v1, "VERSION:2.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    .line 1075
    goto :goto_0

    .line 1076
    :cond_4
    const-string v1, "FN:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p1, v0

    .line 1077
    goto :goto_0

    .line 1078
    :cond_5
    const-string v1, "FN;CHARSET=UTF-8:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p1, v0

    .line 1079
    goto :goto_0

    .line 1080
    :cond_6
    const-string v1, "END:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p1, v0

    .line 1081
    goto :goto_0

    .line 1082
    :cond_7
    const-string v1, "BEGIN:VENV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p1, v0

    .line 1083
    goto :goto_0

    .line 1084
    :cond_8
    const-string v1, "BEGIN:VBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p1, v0

    .line 1085
    goto :goto_0

    .line 1086
    :cond_9
    const-string v1, "END:VBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object p1, v0

    .line 1087
    goto :goto_0

    .line 1088
    :cond_a
    const-string v1, "END:VENV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object p1, v0

    .line 1089
    goto :goto_0

    .line 1090
    :cond_b
    const-string v1, "END:VMSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object p1, v0

    .line 1091
    goto :goto_0

    .line 1092
    :cond_c
    const-string v1, "X-IRMC-STATUS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object p1, v0

    .line 1093
    goto :goto_0

    .line 1094
    :cond_d
    const-string v1, "X-IRMC-TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object p1, v0

    .line 1095
    goto/16 :goto_0

    .line 1096
    :cond_e
    const-string v0, "X-IRMC-BOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1097
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageMsgTypeParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1098
    :cond_f
    const-string v0, "N:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1099
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1100
    :cond_10
    const-string v0, "TEL;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageTelParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1102
    :cond_11
    const-string v0, "Date:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1103
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageDateParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1104
    :cond_12
    const-string v0, "N;CHARSET=UTF-8:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public createVMessage(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 2
    .parameter "msgItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, sResult:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/VMessage;->needCharset:Z

    .line 122
    if-eqz p1, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VMessage;->vMessageObject(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method public readFileFromSDCard1(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 12
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    .line 781
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 782
    .local v6, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 783
    .local v5, ir:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 785
    .local v2, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v1, arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x6

    new-array v0, v9, [Ljava/lang/String;

    .line 790
    .local v0, VmsgString:[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "INBOX"

    aput-object v10, v0, v9

    .line 792
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, tmp:Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 793
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 795
    const-string v9, "X-IRMC-BOX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 796
    const/4 v9, 0x0

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 831
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v1           #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #ir:Ljava/io/InputStreamReader;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 832
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 836
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return-object v1

    .line 797
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v1       #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #ir:Ljava/io/InputStreamReader;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "TEL;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 798
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "SENT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 799
    const/4 v9, 0x3

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 833
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v1           #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #ir:Ljava/io/InputStreamReader;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 834
    .local v4, ioe:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 801
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v1       #arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #ir:Ljava/io/InputStreamReader;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x2

    :try_start_2
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    goto :goto_0

    .line 803
    :cond_3
    const-string v9, "N:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "N;CHARSET=UTF-8:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 804
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "INBOX"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x2

    aget-object v9, v0, v9

    if-nez v9, :cond_5

    .line 805
    const/4 v9, 0x2

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    goto :goto_0

    .line 806
    :cond_5
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, "SENT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    aget-object v9, v0, v9

    if-nez v9, :cond_0

    .line 807
    const/4 v9, 0x3

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    goto/16 :goto_0

    .line 809
    :cond_6
    const-string v9, "Date:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 810
    const/4 v9, 0x4

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    goto/16 :goto_0

    .line 812
    :cond_7
    const/4 v9, 0x5

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    goto/16 :goto_0

    .line 817
    :cond_8
    const/4 v9, 0x5

    aget-object v9, v0, v9

    if-eqz v9, :cond_9

    .line 818
    const/4 v9, 0x5

    const/4 v10, 0x5

    aget-object v10, v0, v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 820
    :cond_9
    const/4 v7, 0x0

    .local v7, row:I
    :goto_3
    if-gt v7, v11, :cond_a

    .line 822
    aget-object v9, v0, v7

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 825
    :cond_a
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 826
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 827
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method public readFileFromSDCard2(Ljava/io/File;)Lcom/android/mms/ui/MsgItem;
    .locals 14
    .parameter "file"

    .prologue
    .line 842
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 843
    .local v9, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 844
    .local v8, ir:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 848
    .local v4, br:Ljava/io/BufferedReader;
    const/4 v12, 0x6

    new-array v0, v12, [Ljava/lang/String;

    .line 851
    .local v0, VmsgString:[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 852
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 853
    const/4 v10, 0x0

    .line 925
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v9           #is:Ljava/io/InputStream;
    :goto_0
    return-object v10

    .line 856
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v9       #is:Ljava/io/InputStream;
    :cond_0
    const/4 v12, 0x0

    const-string v13, "INBOX"

    aput-object v13, v0, v12

    .line 858
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, tmp:Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 859
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 861
    const-string v12, "X-IRMC-BOX"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 862
    const/4 v12, 0x0

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 920
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 921
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 925
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v10, 0x0

    goto :goto_0

    .line 863
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #tmp:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "TEL;"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 864
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 865
    const/4 v12, 0x3

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 922
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 923
    .local v7, ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 867
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #tmp:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x2

    :try_start_2
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    .line 869
    :cond_4
    const-string v12, "N:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "N;CHARSET=UTF-8:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 870
    :cond_5
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    aget-object v12, v0, v12

    if-nez v12, :cond_6

    .line 871
    const/4 v12, 0x2

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    .line 872
    :cond_6
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x3

    aget-object v12, v0, v12

    if-nez v12, :cond_1

    .line 873
    const/4 v12, 0x3

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 875
    :cond_7
    const-string v12, "Date:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 876
    const/4 v12, 0x4

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 878
    :cond_8
    const/4 v12, 0x5

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 883
    :cond_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 884
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 885
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 888
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 889
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 892
    :cond_a
    const-string v1, ""

    .line 893
    .local v1, addr:Ljava/lang/String;
    const-string v2, ""

    .line 894
    .local v2, body:Ljava/lang/String;
    const/4 v12, 0x4

    aget-object v5, v0, v12

    .line 897
    .local v5, date:Ljava/lang/String;
    const/4 v12, 0x5

    aget-object v12, v0, v12

    if-eqz v12, :cond_b

    .line 898
    const/4 v12, 0x5

    aget-object v2, v0, v12

    .line 900
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 902
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 903
    const/4 v3, 0x1

    .line 904
    .local v3, boxId:I
    const/4 v12, 0x3

    aget-object v1, v0, v12

    .line 910
    :goto_3
    if-nez v1, :cond_c

    .line 911
    iget-object v12, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0188

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    :cond_c
    if-nez v5, :cond_d

    .line 914
    const-string v5, "2000.1.1.12.00.00"

    .line 916
    :cond_d
    new-instance v10, Lcom/android/mms/ui/MsgItem;

    invoke-direct {v10, v3, v1, v2, v5}, Lcom/android/mms/ui/MsgItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .local v10, item:Lcom/android/mms/ui/MsgItem;
    goto/16 :goto_0

    .line 906
    .end local v3           #boxId:I
    .end local v10           #item:Lcom/android/mms/ui/MsgItem;
    :cond_e
    const/4 v3, 0x2

    .line 907
    .restart local v3       #boxId:I
    const/4 v12, 0x2

    aget-object v1, v0, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public readStreamFromViewer1(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 12
    .parameter "is"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 930
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 931
    .local v3, ir:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 932
    .local v2, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v1, arrString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x6

    new-array v0, v6, [Ljava/lang/String;

    .line 937
    .local v0, VmsgString:[Ljava/lang/String;
    const-string v6, "INBOX"

    aput-object v6, v0, v8

    .line 939
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, tmp:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 940
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 941
    const-string v6, "X-IRMC-BOX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 942
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    goto :goto_0

    .line 943
    :cond_1
    const-string v6, "TEL;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 944
    aget-object v6, v0, v8

    const-string v7, "SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 945
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    goto :goto_0

    .line 947
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    goto :goto_0

    .line 949
    :cond_3
    const-string v6, "N:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "N;CHARSET=UTF-8:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 950
    :cond_4
    aget-object v6, v0, v8

    const-string v7, "INBOX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v0, v10

    if-nez v6, :cond_5

    .line 951
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    goto :goto_0

    .line 952
    :cond_5
    aget-object v6, v0, v8

    const-string v7, "SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v0, v11

    if-nez v6, :cond_0

    .line 953
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    goto :goto_0

    .line 955
    :cond_6
    const-string v6, "Date:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 956
    const/4 v6, 0x4

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    goto/16 :goto_0

    .line 958
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    goto/16 :goto_0

    .line 963
    :cond_8
    aget-object v6, v0, v9

    if-eqz v6, :cond_9

    .line 964
    aget-object v6, v0, v9

    invoke-direct {p0, v6}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 966
    :cond_9
    const/4 v4, 0x0

    .local v4, row:I
    :goto_1
    if-gt v4, v9, :cond_a

    .line 968
    aget-object v6, v0, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 971
    :cond_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 972
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 973
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 975
    return-object v1
.end method

.method public readStreamFromViewer2(Ljava/io/InputStream;)Lcom/android/mms/ui/MsgItem;
    .locals 14
    .parameter "is"

    .prologue
    const/4 v11, 0x0

    .line 981
    :try_start_0
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 982
    .local v8, ir:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 986
    .local v4, br:Ljava/io/BufferedReader;
    const/4 v12, 0x6

    new-array v0, v12, [Ljava/lang/String;

    .line 989
    .local v0, VmsgString:[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 990
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    move-object v9, v11

    .line 1063
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    :goto_0
    return-object v9

    .line 994
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    :cond_0
    const/4 v12, 0x0

    const-string v13, "INBOX"

    aput-object v13, v0, v12

    .line 996
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, tmp:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 997
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 999
    const-string v12, "X-IRMC-BOX"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1000
    const/4 v12, 0x0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1058
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1059
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    move-object v9, v11

    .line 1063
    goto :goto_0

    .line 1001
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v10       #tmp:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "TEL;"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1002
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1003
    const/4 v12, 0x3

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1060
    .end local v0           #VmsgString:[Ljava/lang/String;
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v8           #ir:Ljava/io/InputStreamReader;
    .end local v10           #tmp:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1061
    .local v7, ioe:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1005
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v0       #VmsgString:[Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #ir:Ljava/io/InputStreamReader;
    .restart local v10       #tmp:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x2

    :try_start_2
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    .line 1007
    :cond_4
    const-string v12, "N:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "N;CHARSET=UTF-8:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1008
    :cond_5
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    aget-object v12, v0, v12

    if-nez v12, :cond_6

    .line 1009
    const/4 v12, 0x2

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto :goto_1

    .line 1010
    :cond_6
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x3

    aget-object v12, v0, v12

    if-nez v12, :cond_1

    .line 1011
    const/4 v12, 0x3

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 1013
    :cond_7
    const-string v12, "Date:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1014
    const/4 v12, 0x4

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 1016
    :cond_8
    const/4 v12, 0x5

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/VMessage;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v12

    goto/16 :goto_1

    .line 1021
    :cond_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 1022
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1023
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1026
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "INBOX"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    move-object v9, v11

    .line 1027
    goto/16 :goto_0

    .line 1030
    :cond_a
    const-string v1, ""

    .line 1031
    .local v1, addr:Ljava/lang/String;
    const-string v2, ""

    .line 1032
    .local v2, body:Ljava/lang/String;
    const/4 v12, 0x4

    aget-object v5, v0, v12

    .line 1035
    .local v5, date:Ljava/lang/String;
    const/4 v12, 0x5

    aget-object v12, v0, v12

    if-eqz v12, :cond_b

    .line 1036
    const/4 v12, 0x5

    aget-object v2, v0, v12

    .line 1038
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/mms/ui/VMessage;->unfoldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    const/4 v12, 0x0

    aget-object v12, v0, v12

    const-string v13, "SENT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1041
    const/4 v3, 0x1

    .line 1042
    .local v3, boxId:I
    const/4 v12, 0x3

    aget-object v1, v0, v12

    .line 1048
    :goto_3
    if-nez v1, :cond_c

    .line 1049
    iget-object v12, p0, Lcom/android/mms/ui/VMessage;->mContext:Landroid/content/Context;

    const v13, 0x7f0a0188

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1051
    :cond_c
    if-nez v5, :cond_d

    .line 1052
    const-string v5, "2000.1.1.12.00.00"

    .line 1054
    :cond_d
    new-instance v9, Lcom/android/mms/ui/MsgItem;

    invoke-direct {v9, v3, v1, v2, v5}, Lcom/android/mms/ui/MsgItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .local v9, item:Lcom/android/mms/ui/MsgItem;
    goto/16 :goto_0

    .line 1044
    .end local v3           #boxId:I
    .end local v9           #item:Lcom/android/mms/ui/MsgItem;
    :cond_e
    const/4 v3, 0x2

    .line 1045
    .restart local v3       #boxId:I
    const/4 v12, 0x2

    aget-object v1, v0, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method public vMessageDateParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "Date"

    .prologue
    .line 1135
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1136
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1137
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1139
    :cond_0
    return-object p1
.end method

.method public vMessageMsgTypeParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 1111
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1112
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1113
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1115
    :cond_0
    return-object p1
.end method

.method public vMessageNameParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1119
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1120
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1121
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1123
    :cond_0
    return-object p1
.end method

.method public vMessageTelParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tel"

    .prologue
    .line 1127
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1128
    .local v0, sep:I
    if-ltz v0, :cond_0

    .line 1129
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1131
    :cond_0
    return-object p1
.end method
