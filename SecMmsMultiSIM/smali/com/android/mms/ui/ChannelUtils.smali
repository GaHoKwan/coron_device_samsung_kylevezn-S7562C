.class public Lcom/android/mms/ui/ChannelUtils;
.super Ljava/lang/Object;
.source "ChannelUtils.java"


# static fields
.field private static final CB_CHANNEL_ENABLED_ALL:I = 0x2

.field private static final CB_CHANNEL_ENABLED_NOTHING:I = 0x0

.field private static final CB_CHANNEL_ENABLED_SOME:I = 0x1

.field public static final CB_CHANNEL_REMOVE_ALL:I = 0x3

.field public static final CB_CHANNEL_REMOVE_ONE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mms/ChannelUtils"

.field private static bRunAfterFirst:Z

.field private static bRunAfterFirst2:Z

.field private static final multiSimNum:I

.field private static oldChStatus:I

.field private static oldChStatus2:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 46
    sput v0, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    .line 49
    sput v0, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    .line 50
    sput-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst2:Z

    .line 53
    sput-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ChannelUtils;->multiSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannel(Landroid/content/Context;III)V
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "value"
    .parameter "simSlot"

    .prologue
    .line 221
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v1, "channel_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHANNEL_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v1, "sim_slot"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 228
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {p0, p1, p3}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    :goto_0
    return v1

    .line 186
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "channel_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "channel_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "is_checked"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v1, "sim_slot"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 192
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"
    .parameter "simSlot"

    .prologue
    .line 201
    invoke-static {p0, p1, p4}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    .line 205
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "is_checked"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v1, "sim_slot"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 211
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static appendId(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3
    .parameter "id"

    .prologue
    .line 280
    sget-object v0, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Landroid/content/Context;I)[S
    .locals 10
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 68
    const/4 v6, 0x0

    .line 69
    .local v6, channelIDs:[S
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "channel_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_checked=1 and sim_slot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 72
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [S

    .line 74
    const/4 v7, 0x0

    .local v7, chid:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v6, v7

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 79
    :cond_0
    if-eqz v8, :cond_1

    .line 80
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_1
    return-object v6

    .line 79
    .end local v7           #chid:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 80
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getChannelbyId(Landroid/content/Context;Ljava/lang/Long;I)I
    .locals 8
    .parameter "context"
    .parameter "Id"
    .parameter "simSlot"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "channel_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sim_slot"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 156
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 166
    :goto_0
    return v0

    .line 159
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 166
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getChannels(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 109
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    move-object v6, v2

    goto :goto_0
.end method

.method public static getCheckedCount(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "is_checked"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_checked=1 and sim_slot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 95
    if-eqz v7, :cond_0

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    return v6

    .line 95
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static getIdbyChannel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Long;
    .locals 9
    .parameter "context"
    .parameter "channelid"
    .parameter "simSlot"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sim_slot"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 138
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :goto_0
    return-object v0

    .line 141
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8
    .parameter "context"
    .parameter "channelid"
    .parameter "simSlot"

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sim_slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 118
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 121
    .local v6, count:I
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 123
    if-eqz v7, :cond_0

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_0
    if-nez v6, :cond_2

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 123
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 124
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 130
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isChannelEnabled(Ljava/lang/String;[S)Z
    .locals 6
    .parameter "channel"
    .parameter "channelsList"

    .prologue
    const/4 v3, 0x0

    .line 607
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 613
    .local v0, convertedChannel:S
    if-nez p1, :cond_1

    .line 621
    .end local v0           #convertedChannel:S
    :cond_0
    :goto_0
    return v3

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "Mms/ChannelUtils"

    const-string v5, "isChannelEnabled()- Invalid channel number"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #convertedChannel:S
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 617
    aget-short v4, p1, v2

    if-ne v4, v0, :cond_2

    .line 618
    const/4 v3, 0x1

    goto :goto_0

    .line 616
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "simSlot"

    .prologue
    const/4 v4, 0x0

    .line 252
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyChannel - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p4}, Lcom/android/mms/ui/ChannelUtils;->getChannelbyId(Landroid/content/Context;Ljava/lang/Long;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x4

    invoke-static {p0, p1, p4}, Lcom/android/mms/ui/ChannelUtils;->getChannelbyId(Landroid/content/Context;Ljava/lang/Long;I)I

    move-result v2

    invoke-static {p0, v1, v2, p4}, Lcom/android/mms/ui/ChannelUtils;->removeCbChannelRange(Landroid/content/Context;III)V

    .line 255
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "sim_slot"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x1

    return v1
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"
    .parameter "simSlot"

    .prologue
    const/4 v4, 0x0

    .line 264
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyChannel - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p5}, Lcom/android/mms/ui/ChannelUtils;->getChannelbyId(Landroid/content/Context;Ljava/lang/Long;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x4

    invoke-static {p0, p1, p5}, Lcom/android/mms/ui/ChannelUtils;->getChannelbyId(Landroid/content/Context;Ljava/lang/Long;I)I

    move-result v2

    invoke-static {p0, v1, v2, p5}, Lcom/android/mms/ui/ChannelUtils;->removeCbChannelRange(Landroid/content/Context;III)V

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "is_checked"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v1, "sim_slot"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x1

    return v1
.end method

.method public static removeCbChannelRange(Landroid/content/Context;III)V
    .locals 7
    .parameter "context"
    .parameter "mode"
    .parameter "channelId"
    .parameter "simSlot"

    .prologue
    .line 574
    const/4 v3, 0x0

    .line 575
    .local v3, success:Z
    invoke-static {p3}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v2

    .line 576
    .local v2, smsManager:Landroid/telephony/SmsManager;
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeCbChannelRange - simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 579
    invoke-static {p0, p3}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v0

    .line 581
    .local v0, checkedChId:[S
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 582
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable channel : ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-short v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    aget-short v4, v0, v1

    invoke-virtual {v2, v4}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    move-result v3

    .line 584
    if-nez v3, :cond_0

    .line 585
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-short v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not in SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v0           #checkedChId:[S
    .end local v1           #i:I
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 590
    const/4 v4, -0x1

    if-eq p2, v4, :cond_2

    .line 591
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable channel : ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v2, p2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    move-result v3

    .line 593
    if-nez v3, :cond_2

    .line 594
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not in SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_2
    return-void
.end method

.method public static removeChannel(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 235
    const-string v0, "Mms/ChannelUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChannel - simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lcom/android/mms/ui/ChannelUtils;->removeCbChannelRange(Landroid/content/Context;III)V

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public static removeChannel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "simSlot"

    .prologue
    .line 242
    const-string v0, "Mms/ChannelUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChannel - channelid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/android/mms/ui/ChannelUtils;->removeCbChannelRange(Landroid/content/Context;III)V

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sim_slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method private static resetAllCbChannelRange(ZI)V
    .locals 7
    .parameter "bEnable"
    .parameter "simSlot"

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x3e7

    const/4 v4, 0x0

    .line 513
    invoke-static {p1}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 514
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAllCbChannelRange - simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v1, 0x1

    if-ne v1, p1, :cond_6

    .line 518
    if-nez p0, :cond_2

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    if-eqz v1, :cond_2

    .line 519
    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    sput v4, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    .line 521
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_2
    if-eqz p0, :cond_4

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    if-eq v1, v6, :cond_4

    .line 526
    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sput v6, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    goto :goto_0

    .line 530
    :cond_3
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_4
    sget-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst2:Z

    if-eqz v1, :cond_0

    .line 534
    if-nez p0, :cond_5

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    if-nez v1, :cond_5

    .line 535
    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 536
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_5
    sput-boolean v4, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst2:Z

    goto :goto_0

    .line 545
    :cond_6
    if-nez p0, :cond_8

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-eqz v1, :cond_8

    .line 546
    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 547
    sput v4, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    .line 548
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_7
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_8
    if-eqz p0, :cond_a

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-eq v1, v6, :cond_a

    .line 553
    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 554
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sput v6, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto :goto_0

    .line 557
    :cond_9
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_a
    sget-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    if-eqz v1, :cond_0

    .line 561
    if-nez p0, :cond_b

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-nez v1, :cond_b

    .line 562
    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 563
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_b
    sput-boolean v4, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    goto/16 :goto_0
.end method

.method public static resetCMASSettings()V
    .locals 5

    .prologue
    .line 312
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 315
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    const-string v2, "Mms/ChannelUtils"

    const-string v3, "resetCMASSettings : End."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/ChannelUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setDisableCMASSettings channelUtils "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 22
    .parameter "context"
    .parameter "sharedpref"
    .parameter "simSlot"

    .prologue
    .line 336
    invoke-static/range {p2 .. p2}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v18

    .line 337
    .local v18, smsManager:Landroid/telephony/SmsManager;
    const-string v19, "pref_key_cb_settings_activation"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 338
    .local v4, bCbActivation:Z
    const-string v19, "pref_key_cb_channel_selection"

    const-string v20, "All channels"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, chSelection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 342
    .local v6, bMyChannels:Z
    const-string v19, "Mms/ChannelUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setCbSettings - simSlot = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget v19, Lcom/android/mms/ui/ChannelUtils;->multiSimNum:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 345
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pref_key_cb_settings_activation_sim"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, p2, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 346
    .local v16, preference_activation:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pref_key_cb_channel_selection_sim"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, p2, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 348
    .local v17, preference_channel:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 349
    const-string v19, "All channels"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 352
    .end local v16           #preference_activation:Ljava/lang/String;
    .end local v17           #preference_channel:Ljava/lang/String;
    :cond_0
    const-string v19, "Mms/ChannelUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setCbSettings : bCbActivation :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", chSelection = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v19, "My channel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 355
    const/4 v6, 0x1

    .line 357
    :cond_1
    if-eqz v4, :cond_e

    .line 358
    if-eqz v6, :cond_d

    .line 359
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v9

    .line 360
    .local v9, checkedChId:[S
    const/4 v13, 0x0

    .line 361
    .local v13, include919Ch:Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(ZI)V

    .line 362
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    .line 363
    const-string v19, "Mms/ChannelUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "enable channel : ID = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-short v21, v9, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    aget-short v19, v9, v12

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 365
    aget-short v19, v9, v12

    const/16 v20, 0x397

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 366
    const/4 v13, 0x1

    .line 362
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 369
    :cond_3
    if-nez v13, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 370
    const/16 v19, 0x397

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 372
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    array-length v0, v9

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 403
    .end local v9           #checkedChId:[S
    .end local v12           #i:I
    .end local v13           #include919Ch:Z
    :cond_5
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v19, "com.android.mms.CB_SETTINGS_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v7, cbintent:Landroid/content/Intent;
    const-string v19, "cbActivation"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    const-string v19, "bMyChannels"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;

    move-result-object v11

    .line 410
    .local v11, enableDirectDisplayCBCh:Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 411
    const/4 v15, 0x0

    .line 412
    .local v15, numActiveCh:I
    const/4 v9, 0x0

    .line 413
    .restart local v9       #checkedChId:[S
    if-eqz v6, :cond_6

    .line 414
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v9

    .line 415
    array-length v15, v9

    .line 417
    :cond_6
    if-eqz v4, :cond_8

    if-eqz v6, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v15, v0, :cond_8

    :cond_7
    if-eqz v6, :cond_9

    invoke-static {v11, v9}, Lcom/android/mms/ui/ChannelUtils;->isChannelEnabled(Ljava/lang/String;[S)Z

    move-result v19

    if-nez v19, :cond_9

    .line 418
    :cond_8
    new-instance v14, Landroid/content/Intent;

    const-string v19, "com.sec.android.app.mms.CB_CLEAR"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v14, intent:Landroid/content/Intent;
    const-string v19, "simSlot"

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    .end local v9           #checkedChId:[S
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #numActiveCh:I
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v19

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 426
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v5, bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 430
    .local v3, Prefs:Landroid/content/SharedPreferences;
    invoke-static {v3, v5}, Lcom/android/mms/ui/CMASPreferenceActivity;->CheckCMASChannelInfo(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 455
    const-string v19, "Mms/ChannelUtils"

    const-string v20, "CMAS SET Partial"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v19, "Mms/ChannelUtils"

    const-string v20, "CMAS SET President"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/16 v19, 0x1112

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 461
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 462
    const-string v19, "Mms/ChannelUtils"

    const-string v20, "CMAS SET Extream"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/16 v19, 0x1113

    const/16 v20, 0x1114

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    .line 468
    :goto_2
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 469
    const-string v19, "Mms/ChannelUtils"

    const-string v20, "CMAS SET Severity"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/16 v19, 0x1115

    const/16 v20, 0x111a

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    .line 475
    :goto_3
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 476
    const-string v19, "Mms/ChannelUtils"

    const-string v20, "CMAS SET Amber"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/16 v19, 0x111b

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    .line 482
    :goto_4
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 483
    const-string v19, "Mms/ChannelUtils"

    const-string v20, "CMAS SET RMT"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/16 v19, 0x111c

    const/16 v20, 0x111f

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v3           #Prefs:Landroid/content/SharedPreferences;
    .end local v5           #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_a
    :goto_5
    const-string v19, "Mms/ChannelUtils"

    const-string v20, "setCbSettings : End."

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void

    .line 376
    .end local v7           #cbintent:Landroid/content/Intent;
    .end local v11           #enableDirectDisplayCBCh:Ljava/lang/String;
    .restart local v9       #checkedChId:[S
    .restart local v12       #i:I
    .restart local v13       #include919Ch:Z
    :cond_b
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_c

    .line 377
    const/16 v19, 0x1

    sput v19, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    goto/16 :goto_1

    .line 380
    :cond_c
    const/16 v19, 0x1

    sput v19, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto/16 :goto_1

    .line 384
    .end local v9           #checkedChId:[S
    .end local v12           #i:I
    .end local v13           #include919Ch:Z
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(ZI)V

    goto/16 :goto_1

    .line 387
    :cond_e
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(ZI)V

    .line 388
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 389
    const/16 v19, 0x397

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 391
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_f

    .line 392
    const/16 v19, 0x1

    sput v19, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    goto/16 :goto_1

    .line 395
    :cond_f
    const/16 v19, 0x1

    sput v19, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto/16 :goto_1

    .line 465
    .restart local v3       #Prefs:Landroid/content/SharedPreferences;
    .restart local v5       #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v7       #cbintent:Landroid/content/Intent;
    .restart local v11       #enableDirectDisplayCBCh:Ljava/lang/String;
    :cond_10
    const/16 v19, 0x1113

    const/16 v20, 0x1114

    :try_start_1
    invoke-virtual/range {v18 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 503
    .end local v3           #Prefs:Landroid/content/SharedPreferences;
    .end local v5           #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v10

    .line 504
    .local v10, e:Ljava/lang/Exception;
    const-string v19, "Mms/ChannelUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error in setCbSettings channelUtils "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 472
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v3       #Prefs:Landroid/content/SharedPreferences;
    .restart local v5       #bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_11
    const/16 v19, 0x1115

    const/16 v20, 0x111a

    :try_start_2
    invoke-virtual/range {v18 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto/16 :goto_3

    .line 479
    :cond_12
    const/16 v19, 0x111b

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    goto/16 :goto_4

    .line 486
    :cond_13
    const/16 v19, 0x111c

    const/16 v20, 0x111f

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5
.end method

.method public static setDisableCMASSettings()V
    .locals 5

    .prologue
    .line 284
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 287
    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/16 v2, 0x1112

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 298
    const/16 v2, 0x1113

    const/16 v3, 0x1114

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 299
    const/16 v2, 0x1115

    const/16 v3, 0x111a

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    .line 300
    const/16 v2, 0x111b

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    .line 301
    const/16 v2, 0x111c

    const/16 v3, 0x111f

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    const-string v2, "Mms/ChannelUtils"

    const-string v3, "setDisableCMASSettings : End."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/ChannelUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setDisableCMASSettings channelUtils "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSubscription(Landroid/content/Context;III)V
    .locals 5
    .parameter "context"
    .parameter "channelid"
    .parameter "value"
    .parameter "simSlot"

    .prologue
    .line 173
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sim_slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    return-void
.end method
