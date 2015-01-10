.class public Lcom/android/mms/transaction/MTMessageParser;
.super Ljava/lang/Object;
.source "MTMessageParser.java"


# static fields
.field public static final MT_URI:Ljava/lang/String; = "content://com.samsung.mobileTracker.provider.MTContentProvider"

.field static final PASSWD_KEY:Ljava/lang/String; = "passwd"

.field private static final RM_CMD_DEACTCALLFWD:Ljava/lang/String; = "DEACTCALLFWD"

.field private static final RM_CMD_DELUSRDATA:Ljava/lang/String; = "DELUSRDATA"

.field private static final RM_CMD_GETLOCINFO:Ljava/lang/String; = "GETLOCINFO"

.field private static final RM_CMD_GETPBK:Ljava/lang/String; = "GETPBK"

.field private static final RM_CMD_GETPBKA:Ljava/lang/String; = "GETPBKA"

.field private static final RM_CMD_GETPBKG:Ljava/lang/String; = "GETPBKG"

.field private static final RM_CMD_GETPBKW:Ljava/lang/String; = "GETPBKW"

.field private static final RM_CMD_HIDEUSRDATA:Ljava/lang/String; = "HIDEUSRDATA"

.field private static final RM_CMD_RESETMSGFWD:Ljava/lang/String; = "RESETMSGFWD"

.field private static final RM_CMD_RESETPVL:Ljava/lang/String; = "RESETPVL"

.field private static final RM_CMD_SETCALLFWD:Ljava/lang/String; = "SETCALLFWD"

.field private static final RM_CMD_SETMSGFWD:Ljava/lang/String; = "SETMSGFWD"

.field private static final RM_CMD_SETPL:Ljava/lang/String; = "SETPL"

.field private static final RM_CMD_SETPLD:Ljava/lang/String; = "SETPLD"

.field private static final RM_CMD_SETPVL:Ljava/lang/String; = "SETPVL"

.field private static final RM_CMD_UNHIDEUSRDATA:Ljava/lang/String; = "UNHIDEUSRDATA"

.field private static final TAG:Ljava/lang/String; = "Mms/MTMessageParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMTCmd(Ljava/lang/String;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    if-eqz p0, :cond_3

    .line 143
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, str:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 146
    .local v1, msgTockens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 147
    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    aget-object v5, v1, v4

    const-string v6, "SETPL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 194
    .end local v0           #i:I
    .end local v1           #msgTockens:[Ljava/lang/String;
    .end local v2           #str:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    return v3

    .line 154
    .restart local v0       #i:I
    .restart local v1       #msgTockens:[Ljava/lang/String;
    .restart local v2       #str:Ljava/util/StringTokenizer;
    :cond_2
    aget-object v5, v1, v4

    const-string v6, "SETPLD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 156
    aget-object v5, v1, v4

    const-string v6, "SETPVL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    aget-object v5, v1, v4

    const-string v6, "RESETPVL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    aget-object v5, v1, v4

    const-string v6, "HIDEUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    aget-object v5, v1, v4

    const-string v6, "UNHIDEUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    aget-object v5, v1, v4

    const-string v6, "DELUSRDATA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    aget-object v5, v1, v4

    const-string v6, "GETPBKA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    aget-object v5, v1, v4

    const-string v6, "GETPBKG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    aget-object v5, v1, v4

    const-string v6, "GETPBKW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    aget-object v5, v1, v4

    const-string v6, "GETPBK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 175
    aget-object v5, v1, v4

    const-string v6, "SETCALLFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    aget-object v5, v1, v4

    const-string v6, "DEACTCALLFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 181
    aget-object v5, v1, v4

    const-string v6, "SETMSGFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    aget-object v5, v1, v4

    const-string v6, "RESETMSGFWD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    aget-object v5, v1, v4

    const-string v6, "GETLOCINFO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 191
    goto/16 :goto_1

    .end local v0           #i:I
    .end local v1           #msgTockens:[Ljava/lang/String;
    .end local v2           #str:Ljava/util/StringTokenizer;
    :cond_3
    move v3, v4

    .line 194
    goto/16 :goto_1
.end method

.method private static isMTOn(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 202
    const-string v6, "status"

    .line 204
    .local v6, STATUS:Ljava/lang/String;
    const-string v0, "content://com.samsung.mobileTracker.provider.MTContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 209
    .local v8, status:Ljava/lang/String;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 214
    :cond_0
    if-eqz v7, :cond_1

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 223
    :goto_0
    return v0

    .line 212
    :cond_2
    :try_start_1
    const-string v0, "status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 214
    if-eqz v7, :cond_3

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v9

    .line 223
    goto :goto_0
.end method

.method public static messageParser(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "message"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    if-eqz p0, :cond_0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_2

    .line 121
    const-string v3, "Mms/MTMessageParser"

    const-string v4, "Mobile Tracker message - received 0x1b"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    invoke-static {p1}, Lcom/android/mms/transaction/MTMessageParser;->isMTOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/android/mms/transaction/MTMessageParser;->isMTCmd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    const-string v3, "Mms/MTMessageParser"

    const-string v4, "Mobile Tracker message - received manual command"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 125
    goto :goto_0

    .line 128
    :cond_3
    const-string v2, "Mms/MTMessageParser"

    const-string v3, "Mobile Tracker - Normal msg received"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static msgFwdFlag(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 79
    :try_start_0
    const-string v6, "MsgFwdStatus"

    .line 81
    .local v6, STATUS:Ljava/lang/String;
    const-string v0, "content://com.samsung.mttwo.service.MTContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 83
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 85
    .local v9, status:Ljava/lang/String;
    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "MsgFwdStatus"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 89
    :cond_0
    if-eqz v7, :cond_1

    .line 90
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_1
    if-eqz v9, :cond_4

    .line 94
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    const/4 v0, 0x1

    .line 104
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #STATUS:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #status:Ljava/lang/String;
    :goto_0
    return v0

    .line 89
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #STATUS:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #status:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 90
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #STATUS:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #status:Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v0, v10

    .line 104
    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #STATUS:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #status:Ljava/lang/String;
    :cond_3
    move v0, v10

    .line 97
    goto :goto_0

    :cond_4
    move v0, v10

    .line 100
    goto :goto_0
.end method
