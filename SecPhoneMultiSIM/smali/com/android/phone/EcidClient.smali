.class public Lcom/android/phone/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# static fields
.field static cnapDelivered:Z

.field static m_idPendingIntent:I

.field static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private businessName:Ljava/lang/String;

.field public m_bFriends:Z

.field private m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field m_callInfo:Lcom/android/internal/telephony/CallerInfo;

.field public m_callerId:Ljava/lang/String;

.field m_ccOwner:Lcom/android/phone/CallCard;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lConnectionTime:J

.field public m_lastName:Ljava/lang/String;

.field m_pending:Landroid/app/PendingIntent;

.field public m_phoneNumber:Ljava/lang/String;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlPicture:Ljava/lang/String;

.field private strDisplay:Ljava/lang/String;

.field private strFname:Ljava/lang/String;

.field private strLname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 71
    sput v0, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 96
    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 97
    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 98
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .parameter "oInfo"

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v1, p0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 917
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 920
    .end local p0
    :cond_0
    :goto_0
    return-object v0

    .line 918
    .restart local p0
    :cond_1
    instance-of v1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_0

    .line 919
    check-cast p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method static cancelLookupQueriesInSet(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez p0, :cond_1

    .line 398
    :cond_0
    return-void

    .line 385
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 390
    .local v1, key:Ljava/lang/Long;
    :try_start_0
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EcidClient;

    .line 391
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    .line 393
    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v2           #thisObj:Lcom/android/phone/EcidClient;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static endAllLookupQueries()V
    .locals 7

    .prologue
    .line 358
    sget-object v4, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v4

    .line 359
    :try_start_0
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EcidClient;

    .line 360
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v2, :cond_0

    .line 362
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 366
    :try_start_1
    const-string v3, "Phone-ECID"

    const-string v5, "try : endAllLookUpQueries()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, v2, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v3, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch : endAllLookUpQueries()-->  nullPointerException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #thisObj:Lcom/android/phone/EcidClient;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 375
    :cond_1
    :try_start_3
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 376
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    return-void
.end method

.method public static endLookupQuery(J)V
    .locals 4
    .parameter "lConnectionTime"

    .prologue
    .line 343
    :try_start_0
    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :try_start_1
    sget-object v1, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    .line 345
    .local v0, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 350
    :cond_0
    monitor-exit v2

    .line 353
    .end local v0           #thisObj:Lcom/android/phone/EcidClient;
    :goto_0
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getClient(J)Lcom/android/phone/EcidClient;
    .locals 2
    .parameter "lConnectionTime"

    .prologue
    .line 136
    sget-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EcidClient;

    return-object v0
.end method

.method static getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;
    .locals 3
    .parameter "ci"
    .parameter "lConnectionTime"

    .prologue
    .line 141
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 143
    invoke-static {p1, p2}, Lcom/android/phone/EcidClient;->getClient(J)Lcom/android/phone/EcidClient;

    move-result-object v0

    .line 144
    .local v0, cid:Lcom/android/phone/EcidClient;
    if-eqz v0, :cond_1

    .line 146
    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v1, p0, :cond_0

    .line 153
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :goto_0
    return-object v0

    .line 150
    .restart local v0       #cid:Lcom/android/phone/EcidClient;
    :cond_0
    invoke-static {p1, p2}, Lcom/android/phone/EcidClient;->endLookupQuery(J)V

    .line 153
    .end local v0           #cid:Lcom/android/phone/EcidClient;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static handleResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 6
    .parameter "ctx"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 451
    const-string v3, "id"

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 453
    .local v0, lConnectionTime:J
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EcidClient;

    .line 454
    .local v2, thisObj:Lcom/android/phone/EcidClient;
    if-nez v2, :cond_0

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {v2, p0, p2, p3}, Lcom/android/phone/EcidClient;->handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method static removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V
    .locals 5
    .parameter
    .parameter "call"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/internal/telephony/Call;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p1, :cond_1

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 435
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    .line 439
    .local v1, lConnectionTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 440
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #lConnectionTime:J
    :cond_1
    return-void

    .line 431
    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendLookupQueryToService(Ljava/lang/Object;Landroid/app/Activity;Lcom/android/phone/CallCard;IZZZZJLcom/android/internal/telephony/Connection;)Z
    .locals 12
    .parameter "o"
    .parameter "ownerActivity"
    .parameter "ccOwner"
    .parameter "nResultMessage"
    .parameter "bIncoming"
    .parameter "bSystemProvided"
    .parameter "bIsNANP"
    .parameter "bIsRoaming"
    .parameter "lConnectionTime"
    .parameter "conn"

    .prologue
    .line 213
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 215
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p10, :cond_0

    .line 218
    if-eqz v2, :cond_0

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 222
    :cond_0
    if-eqz v2, :cond_1

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v9, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 223
    :cond_1
    const/4 v9, 0x0

    .line 337
    :goto_0
    return v9

    .line 225
    :cond_2
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 227
    const/4 v9, 0x0

    goto :goto_0

    .line 229
    :cond_3
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v6, resultTemplate:Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ecid.query:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/phone/EcidClient;->m_idPendingIntent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 232
    const-string v9, "id"

    move-wide/from16 v0, p8

    invoke-virtual {v6, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    const/4 v9, 0x0

    invoke-virtual {p1, p3, v6, v9}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 235
    .local v5, result:Landroid/app/PendingIntent;
    if-nez v5, :cond_4

    .line 238
    const/4 v9, 0x0

    goto :goto_0

    .line 241
    :cond_4
    const/4 v8, 0x0

    .line 242
    .local v8, thisObj:Lcom/android/phone/EcidClient;
    const/4 v3, 0x0

    .line 251
    .local v3, nFlags:I
    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1}, Lcom/android/phone/EcidClient;->getClient(Lcom/android/internal/telephony/CallerInfo;J)Lcom/android/phone/EcidClient;

    move-result-object v8

    .line 254
    if-nez v8, :cond_b

    .line 258
    new-instance v8, Lcom/android/phone/EcidClient;

    .end local v8           #thisObj:Lcom/android/phone/EcidClient;
    invoke-direct {v8}, Lcom/android/phone/EcidClient;-><init>()V

    .line 259
    .restart local v8       #thisObj:Lcom/android/phone/EcidClient;
    iput-object v4, v8, Lcom/android/phone/EcidClient;->m_phoneNumber:Ljava/lang/String;

    .line 260
    iput-object p2, v8, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    .line 261
    iput-object v2, v8, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 262
    iput-object v5, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    .line 263
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 264
    move-wide/from16 v0, p8

    iput-wide v0, v8, Lcom/android/phone/EcidClient;->m_lConnectionTime:J

    .line 265
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 268
    sget-object v10, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v10

    .line 269
    :try_start_0
    sget-object v9, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz p5, :cond_a

    const/4 v9, 0x2

    :goto_1
    or-int/2addr v3, v9

    .line 277
    if-nez p6, :cond_5

    .line 278
    or-int/lit8 v3, v3, 0x4

    .line 280
    :cond_5
    if-eqz p4, :cond_6

    .line 281
    or-int/lit8 v3, v3, 0x20

    .line 309
    :cond_6
    :goto_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v7, serviceIntent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.cequint.ecid"

    const-string v11, "com.cequint.ecid.CallerIdLookupAsync"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    const-string v9, "pCallerID"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 313
    const-string v9, "pCNAM"

    iget-object v10, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 321
    :cond_7
    if-eqz p7, :cond_8

    .line 325
    or-int/lit8 v3, v3, 0x10

    .line 328
    :cond_8
    const-string v9, "nFlags"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v9, "pending"

    iget-object v10, v8, Lcom/android/phone/EcidClient;->m_pending:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p1, v7}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_9

    .line 333
    invoke-static/range {p8 .. p9}, Lcom/android/phone/EcidClient;->endLookupQuery(J)V

    .line 337
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 270
    .end local v7           #serviceIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 276
    :cond_a
    const/4 v9, 0x1

    goto :goto_1

    .line 287
    :cond_b
    move/from16 v0, p5

    iput-boolean v0, v8, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    .line 289
    sget-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    if-nez v9, :cond_c

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 292
    or-int/lit8 v3, v3, 0x20

    goto :goto_2

    .line 293
    :cond_c
    sget-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 295
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 296
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_0

    .line 299
    :cond_d
    if-eqz p10, :cond_e

    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_e

    .line 301
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    .line 304
    :cond_e
    invoke-virtual {v8, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_0
.end method

.method public static setEcidDisplay(JLcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 8
    .parameter "lConnectionTime"
    .parameter "info"
    .parameter "tvCityId"
    .parameter "ivConnectionIcon"
    .parameter "isDisconnected"

    .prologue
    const/4 v7, 0x0

    .line 633
    const/16 v2, 0x8

    .line 634
    .local v2, nDisplayCityId:I
    const/4 v1, 0x0

    .line 636
    .local v1, nConnectionIconVisibility:I
    invoke-static {p0, p1}, Lcom/android/phone/EcidClient;->getClient(J)Lcom/android/phone/EcidClient;

    move-result-object v3

    .line 639
    .local v3, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v3, :cond_4

    .line 640
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->dbgLogData()V

    .line 642
    iput-boolean v7, v3, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    .line 643
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 644
    iput-boolean v7, v3, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 646
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasCityId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    .line 651
    iget-object v4, v3, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 653
    iget-object v4, v3, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/EcidClient;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, cityId:Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    if-eqz p5, :cond_7

    .line 656
    const/16 v2, 0x8

    .line 662
    .end local v0           #cityId:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasFirstName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getFirstName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    .line 666
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displaying First Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_1
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasLastName()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 675
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getLastName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    .line 676
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displaying Last Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_2
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->hasBussName()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 685
    invoke-virtual {v3}, Lcom/android/phone/EcidClient;->getBussinessName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    .line 686
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Displaying Bussiness Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_3
    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bFriends:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    if-eqz v4, :cond_8

    .line 691
    const/4 v1, 0x3

    .line 701
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 702
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_5
    if-eqz p4, :cond_6

    .line 706
    packed-switch v1, :pswitch_data_0

    .line 721
    const/4 v4, 0x4

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    :cond_6
    :goto_2
    return-void

    .line 658
    .restart local v0       #cityId:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 693
    .end local v0           #cityId:Ljava/lang/String;
    :cond_8
    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bFriends:Z

    if-eqz v4, :cond_9

    .line 694
    const/4 v1, 0x2

    goto :goto_1

    .line 696
    :cond_9
    iget-boolean v4, v3, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    if-eqz v4, :cond_4

    .line 697
    const/4 v1, 0x1

    goto :goto_1

    .line 708
    :pswitch_0
    const v4, 0x7f020471

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 709
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 712
    :pswitch_1
    const v4, 0x7f020368

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 713
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 716
    :pswitch_2
    const v4, 0x7f020472

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 717
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 706
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static truncateCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "city_id"

    .prologue
    const/16 v7, 0x2c

    const/4 v8, 0x0

    .line 956
    const/4 v4, 0x1

    .line 957
    .local v4, orientation:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 958
    .local v2, configuration:Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 959
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 961
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 962
    .local v3, len_city:I
    const/16 v0, 0xf

    .line 963
    .local v0, MAX_LEN:I
    if-lt v3, v0, :cond_1

    .line 964
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v7, v3, -0x4

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 965
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, city_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 967
    .local v5, state_abbr:Ljava/lang/String;
    const-string v6, "hardkeyboardhidden_no"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 968
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 974
    .end local v1           #city_name:Ljava/lang/String;
    .end local v5           #state_abbr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 971
    .restart local v1       #city_name:Ljava/lang/String;
    .restart local v5       #state_abbr:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xb

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "oOld"
    .parameter "oNew"

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 159
    .local v1, ciOld:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p1}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 161
    .local v0, ciNew:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 163
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, phoneNumberOld:Ljava/lang/String;
    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, phoneNumberNew:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 192
    .end local v3           #phoneNumberNew:Ljava/lang/String;
    .end local v4           #phoneNumberOld:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local v3       #phoneNumberNew:Ljava/lang/String;
    .restart local v4       #phoneNumberOld:Ljava/lang/String;
    :cond_1
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    sget-object v6, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/EcidClient;

    .line 175
    .local v5, thisObj:Lcom/android/phone/EcidClient;
    if-eqz v5, :cond_0

    .line 177
    iget-object v6, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v6, v1, :cond_2

    .line 180
    iput-object v0, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method public static updateLookupQueries(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 406
    if-nez p0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 411
    .local v1, phoneType:I
    sget-object v3, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v3

    .line 412
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 413
    .local v0, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 414
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 415
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/phone/EcidClient;->removeKeyFromSet(Ljava/util/Set;Lcom/android/internal/telephony/Call;I)V

    .line 417
    invoke-static {v0}, Lcom/android/phone/EcidClient;->cancelLookupQueriesInSet(Ljava/util/Set;)V

    .line 418
    monitor-exit v3

    goto :goto_0

    .end local v0           #keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public canUpdateContactPhoto()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v1, :cond_0

    .line 526
    :cond_2
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_0

    .line 530
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dbgLogData()V
    .locals 0

    .prologue
    .line 942
    return-void
.end method

.method public getBussinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    .line 628
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCityStateDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    goto :goto_0

    .line 595
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    .line 606
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "ctx"
    .parameter "strImageUrl"

    .prologue
    .line 501
    const/4 v3, 0x0

    .line 503
    .local v3, pic:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 507
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 513
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 509
    :catch_0
    move-exception v1

    .line 511
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    .line 617
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public handleNameIdResponse(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 2
    .parameter "ctx"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 465
    const-string v0, "cid_pNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_callerId:Ljava/lang/String;

    .line 466
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 469
    const-string v0, "cid_pName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    .line 470
    const-string v0, "cid_pCompany"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    .line 471
    const-string v0, "cid_pFirstName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    .line 472
    const-string v0, "cid_pLastName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    .line 473
    const-string v0, "cid_pCityName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    .line 474
    const-string v0, "cid_pStateName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    .line 475
    const-string v0, "cid_pStateAbbr"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    .line 476
    const-string v0, "cid_pCountryName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    .line 477
    const-string v0, "cid_pImage"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    .line 478
    const-string v0, "cid_bSameNetwork"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    .line 479
    const-string v0, "cid_bFriends"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bFriends:Z

    .line 480
    const-string v0, "cid_bPreferCidImage"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    .line 481
    const-string v0, "cid_pDisplayName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/EcidClient;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    .line 487
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    iget-object v0, v0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    iget-object v0, v0, Lcom/android/phone/CallCard;->mGeoDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->getCityStateDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_ccOwner:Lcom/android/phone/CallCard;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 497
    :cond_1
    return-void
.end method

.method hasBussName()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 752
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_bizName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 752
    goto :goto_0

    :cond_1
    move v1, v2

    .line 753
    goto :goto_1
.end method

.method hasCityId()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasFirstName()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 737
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_firstName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 737
    goto :goto_0

    :cond_1
    move v1, v2

    .line 738
    goto :goto_1
.end method

.method hasLastName()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 744
    const-string v3, "Phone-ECID"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!TextUtils.isEmpty(m_lastName) = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 744
    goto :goto_0

    :cond_1
    move v1, v2

    .line 745
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public updateCallerInfo(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, bModified:Z
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 543
    const/4 v0, 0x1

    .line 563
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->canUpdateContactPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 566
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 567
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 569
    const/4 v0, 0x1

    .line 571
    :cond_2
    return v0

    .line 546
    :cond_3
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/phone/EcidClient;->cnapDelivered:Z

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const-string v2, "Unknown Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 553
    const/4 v0, 0x1

    goto :goto_0
.end method
