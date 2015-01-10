.class public Lcom/android/mms/util/AddressUtils;
.super Ljava/lang/Object;
.source "AddressUtils.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/AddressUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "charset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/AddressUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "uri"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 102
    const/4 v8, 0x0

    .line 103
    .local v8, addresses:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 104
    .local v16, msgId:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 106
    .local v10, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "addr"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/util/AddressUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 111
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 113
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 117
    const/4 v14, 0x0

    .local v14, i:I
    move v15, v14

    .line 125
    .end local v14           #i:I
    .local v15, i:I
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 126
    .local v11, bytes:[B
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 127
    .local v12, charset:I
    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v12, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v15

    .line 129
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 135
    if-eqz v13, :cond_0

    .line 136
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v9, v8

    .line 147
    .end local v8           #addresses:[Ljava/lang/String;
    .end local v11           #bytes:[B
    .end local v12           #charset:I
    .end local v14           #i:I
    .local v9, addresses:[Ljava/lang/String;
    :goto_1
    return-object v9

    .line 135
    .end local v9           #addresses:[Ljava/lang/String;
    .restart local v8       #addresses:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_1

    .line 136
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_1
    throw v1

    :cond_2
    if-eqz v13, :cond_3

    .line 136
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_3
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v8, v1

    :goto_2
    move-object v9, v8

    .line 147
    .end local v8           #addresses:[Ljava/lang/String;
    .restart local v9       #addresses:[Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v9           #addresses:[Ljava/lang/String;
    .restart local v8       #addresses:[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    const v2, 0x7f0a0069

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    goto :goto_2

    .restart local v11       #bytes:[B
    .restart local v12       #charset:I
    .restart local v14       #i:I
    :cond_5
    move v15, v14

    .end local v14           #i:I
    .restart local v15       #i:I
    goto :goto_0
.end method

.method public static getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 84
    const-string v0, "type=137"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecipients(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getRecipientsMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, TempRecipients:[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, Temp:Ljava/lang/StringBuffer;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    .line 52
    .local v3, contactData:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v3           #contactData:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .end local v0           #Temp:Ljava/lang/StringBuffer;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_1
    return-object v6

    :cond_2
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getRecipientsMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    goto :goto_1
.end method

.method public static getRecipientsMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 73
    const-string v0, "type=137 OR type=130"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 91
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "type=151 OR type=130 OR type=129"

    const-string v1, "_id"

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "type=151"

    const-string v1, "_id"

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
