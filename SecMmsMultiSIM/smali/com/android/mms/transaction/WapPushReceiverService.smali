.class public Lcom/android/mms/transaction/WapPushReceiverService;
.super Landroid/app/Service;
.source "WapPushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/WapPushReceiverService$1;,
        Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;,
        Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "Mms/WapPushReceiverService"

.field private static final WPM_COL_ACTION:I = 0x2

.field private static final WPM_COL_CREATED:I = 0x1

.field private static final WPM_COL_ID:I

.field private static final WPM_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/WapPushReceiverService;->WPM_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    .line 50
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 428
    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/WapPushReceiverService;->handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/WapPushReceiverService;->handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V

    return-void
.end method

.method private deleteWPMInfo(I)V
    .locals 5
    .parameter "_id"

    .prologue
    const/4 v4, 0x0

    .line 360
    const-string v1, "Mms/WapPushReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteWPMInfo. id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wap-push-messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 364
    .local v0, wpmUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, v0, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method private handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 14
    .parameter "_recvSiMessage"

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x0

    const-wide/16 v10, -0x1

    .line 94
    const-string v6, "Mms/WapPushReceiverService"

    const-string v7, "handleSiMessage."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 100
    const-string v6, "Mms/WapPushReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "discard message because of expiration. expires= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfo(Lcom/android/mms/transaction/WapPushMessage;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v4

    .line 119
    .local v4, storedWpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    if-eqz v4, :cond_6

    .line 120
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    .line 122
    const-string v6, "Mms/WapPushReceiverService"

    const-string v7, "insert message because of no create time"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v6

    if-ne v6, v13, :cond_6

    .line 152
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v4}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/transaction/WapPushReceiverService;->deleteWPMInfo(I)V

    .line 155
    const-string v6, "Mms/WapPushReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "discard message because of deletion. , recv_action= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v1, 0x0

    .line 125
    .local v1, isDiscard:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDiscardSmsCreateWapPush()Z

    move-result v6

    if-eqz v6, :cond_4

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v4}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 127
    const/4 v1, 0x1

    .line 132
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 134
    const-string v6, "Mms/WapPushReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "discard message because of Handling of out of order delivery. stored_created= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v4}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "recv_created= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v4}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 129
    const/4 v1, 0x1

    goto :goto_2

    .line 140
    :cond_5
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v4}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/transaction/WapPushReceiverService;->deleteWPMInfo(I)V

    .line 142
    const-string v6, "Mms/WapPushReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process Replacement. 01>stored_created= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v4}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", recv_created= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 162
    .end local v1           #isDiscard:Z
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v6

    if-ne v6, v13, :cond_7

    .line 165
    const-string v6, "Mms/WapPushReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "discard message because of deletion. recv_action= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    .line 174
    const-string v6, "Mms/WapPushReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "discard message because of action_signal_none. recv_action= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_8
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "address"

    const-string v7, "Pushmessage"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v6, "body"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v6, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string v6, "type"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisplayPushSenderAddress()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 185
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 186
    .local v3, res:Landroid/content/res/Resources;
    const-string v6, "href"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0a00a9

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_3
    const-string v6, "si_id"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v6, "created"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v6, "si_expires"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v6, "action"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v6, "sim_slot"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSimIdentifier()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSimIdentifier()I

    move-result v6

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, imsi:Ljava/lang/String;
    const-string v6, "sim_imsi"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/WapPushReceiverService;->insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 203
    .local v2, messageUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 204
    invoke-static {p0, v10, v11, v12, v12}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    goto/16 :goto_0

    .line 188
    .end local v0           #imsi:Ljava/lang/String;
    .end local v2           #messageUri:Landroid/net/Uri;
    :cond_9
    const-string v6, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 13
    .parameter "_recvSlMessage"

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 225
    const-string v10, "Mms/WapPushReceiverService"

    const-string v11, "handleSlMessage."

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v10

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v6

    .line 233
    .local v6, storedWpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    if-eqz v6, :cond_3

    .line 234
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v10

    invoke-static {v10}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v10

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I
    invoke-static {v6}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$200(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v11

    invoke-static {v11}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v11

    if-lt v10, v11, :cond_2

    .line 237
    const-string v9, "Mms/WapPushReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "discard message because of priority. , recv_action_priority= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v11

    invoke-static {v11}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", stored_action+priority= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I
    invoke-static {v6}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$200(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v11

    invoke-static {v11}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v6}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/mms/transaction/WapPushReceiverService;->deleteWPMInfo(I)V

    .line 248
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "address"

    const-string v11, "Pushmessage"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v10, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    const-string v10, "type"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisplayPushSenderAddress()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 254
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 255
    .local v4, res:Landroid/content/res/Resources;
    const-string v10, "href"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0a00a9

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_1
    const-string v10, "action"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v10, "sim_slot"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSimIdentifier()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSimIdentifier()I

    move-result v10

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, imsi:Ljava/lang/String;
    const-string v10, "sim_imsi"

    invoke-virtual {v8, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, v8}, Lcom/android/mms/transaction/WapPushReceiverService;->insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 269
    .local v2, messageUri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 270
    const-wide/16 v10, -0x1

    invoke-static {p0, v10, v11, v1, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 273
    :cond_4
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Landroid/content/Context;)I

    move-result v5

    .line 274
    .local v5, slOption:I
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 275
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_5

    move v1, v9

    .line 277
    .local v1, isCallIdle:Z
    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_0

    .line 280
    if-nez v5, :cond_8

    .line 281
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/android/mms/transaction/WapPushReceiverService;->processHref(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 257
    .end local v0           #imsi:Ljava/lang/String;
    .end local v1           #isCallIdle:Z
    .end local v2           #messageUri:Landroid/net/Uri;
    .end local v5           #slOption:I
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v10, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .restart local v0       #imsi:Ljava/lang/String;
    .restart local v1       #isCallIdle:Z
    .restart local v2       #messageUri:Landroid/net/Uri;
    .restart local v5       #slOption:I
    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    if-ne v5, v9, :cond_0

    .line 284
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/mms/ui/PushMessageDialog;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x1800

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 287
    .local v3, pushMessageDialogIntent:Landroid/content/Intent;
    const-string v9, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v9, "sender"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "_values"

    .prologue
    .line 368
    const-string v0, "Mms/WapPushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertWPMInfo. _values= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static processHref(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "href"
    .parameter "context"

    .prologue
    .line 296
    const-string v2, "wtai://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 297
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, number:Ljava/lang/String;
    const-string v2, "Mms/WapPushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUri uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 303
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 304
    .local v1, uriIntent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private selectWPMInfo(Lcom/android/mms/transaction/WapPushMessage;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 3
    .parameter "_recvSiMessage"

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, storedWpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    const-string v1, "Mms/WapPushReceiverService"

    const-string v2, "No ID for si message is provided"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 11
    .parameter "selection"
    .parameter "_type"
    .parameter "_id"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "wap-push-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 333
    .local v2, wpmUri:Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object p3, v5, v4

    .line 337
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/WapPushReceiverService;->WPM_INFO_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 340
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 342
    .local v8, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    if-eqz v7, :cond_0

    .line 343
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v9, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;-><init>(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushReceiverService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local v8           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .local v9, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #setter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v9, v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$102(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;I)I

    .line 346
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$002(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;J)J

    .line 347
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #setter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I
    invoke-static {v9, v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$202(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 351
    .end local v9           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .restart local v8       #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    :cond_0
    if-eqz v7, :cond_1

    .line 352
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_1
    return-object v8

    .line 351
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v7, :cond_2

    .line 352
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 351
    .end local v8           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .restart local v9       #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .restart local v8       #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    goto :goto_0
.end method

.method private selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 4
    .parameter "_type"
    .parameter "_href"

    .prologue
    .line 321
    const-string v1, "type=? and href=?"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    .line 324
    .local v0, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    const-string v2, "Mms/WapPushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWPMInfoByHref. href= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", _id= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-object v0

    .line 324
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.method private selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 4
    .parameter "_type"
    .parameter "_siId"

    .prologue
    .line 311
    const-string v1, "type=? and si_id=?"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    .line 314
    .local v0, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    const-string v2, "Mms/WapPushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWPMInfoBySiId. siId= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", _id= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-object v0

    .line 314
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 88
    const-string v0, "Mms/WapPushReceiverService"

    const-string v1, "onBind."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 54
    const-string v1, "Mms/WapPushReceiverService"

    const-string v2, "onCreate."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/WapPushReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 57
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 61
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/WapPushReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v1, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/WapPushReceiverService;)V

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "Mms/WapPushReceiverService"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 84
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 69
    const-string v1, "Mms/WapPushReceiverService"

    const-string v2, "onStartCommand."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 73
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    const/4 v1, 0x2

    return v1
.end method
