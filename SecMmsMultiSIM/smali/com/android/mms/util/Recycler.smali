.class public abstract Lcom/android/mms/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/Recycler$MmsRecycler;,
        Lcom/android/mms/util/Recycler$SmsRecycler;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_DELETE:Z = false

.field private static final LOCAL_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Mms/Recycler"

.field private static sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

.field private static sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    return-void
.end method

.method public static checkForThreadsOverLimit(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 71
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    .line 72
    .local v2, smsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    .line 74
    .local v0, mmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-virtual {v2, p0}, Lcom/android/mms/util/Recycler$SmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/Recycler$MmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 76
    .local v1, result:Z
    :goto_0
    const-string v3, "Mms/Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForThreadsOverLimit(),return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v1

    .line 74
    .end local v1           #result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/mms/util/Recycler$MmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$MmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    return-object v0
.end method

.method public static getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/mms/util/Recycler$SmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$SmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    return-object v0
.end method

.method public static isAutoDeleteEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_auto_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract anyThreadOverLimit(Landroid/content/Context;)Z
.end method

.method protected abstract deleteMessagesForThread(Landroid/content/Context;JI)V
.end method

.method public deleteOldMessages(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v1

    .line 88
    .local v1, limit:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/mms/util/Recycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 90
    .local v2, threadId:J
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 93
    .end local v1           #limit:I
    .end local v2           #threadId:J
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v1       #limit:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 99
    const-string v0, "Mms/Recycler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycler.deleteOldMessagesByThreadId threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method protected abstract dumpMessage(Landroid/database/Cursor;Landroid/content/Context;)V
.end method

.method protected abstract getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getMessageLimit(Landroid/content/Context;)I
.end method

.method public getMessageMaxLimit()I
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method public getMessageMinLimit()I
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method protected abstract getThreadId(Landroid/database/Cursor;)J
.end method

.method public abstract setMessageLimit(Landroid/content/Context;I)V
.end method