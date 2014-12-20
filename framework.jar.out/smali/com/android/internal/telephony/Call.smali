.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$CallType;,
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public callType:Lcom/android/internal/telephony/Call$CallType;

.field protected isGeneric:Z

.field public state:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 54
    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->NO_CALL:Lcom/android/internal/telephony/Call$CallType;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    .line 64
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract fallbackHangupVTCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public getCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 4

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    sget-object v3, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v2, v3, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 238
    .local v0, domain:I
    const/4 v1, 0x0

    .line 256
    .local v1, type:I
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/CallDetails;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    return-object v2

    .line 239
    .end local v0           #domain:I
    .end local v1           #type:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    sget-object v3, Lcom/android/internal/telephony/Call$CallType;->CS_CALL_VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v2, v3, :cond_1

    .line 240
    const/4 v0, 0x1

    .line 241
    .restart local v0       #domain:I
    const/4 v1, 0x3

    .restart local v1       #type:I
    goto :goto_0

    .line 242
    .end local v0           #domain:I
    .end local v1           #type:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    sget-object v3, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v2, v3, :cond_2

    .line 243
    const/4 v0, 0x2

    .line 244
    .restart local v0       #domain:I
    const/4 v1, 0x0

    .restart local v1       #type:I
    goto :goto_0

    .line 245
    .end local v0           #domain:I
    .end local v1           #type:I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    sget-object v3, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    sget-object v3, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v2, v3, :cond_4

    .line 246
    :cond_3
    const/4 v0, 0x2

    .line 247
    .restart local v0       #domain:I
    const/4 v1, 0x3

    .restart local v1       #type:I
    goto :goto_0

    .line 248
    .end local v0           #domain:I
    .end local v1           #type:I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    sget-object v3, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v2, v3, :cond_5

    .line 249
    const/4 v0, 0x2

    .line 250
    .restart local v0       #domain:I
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 252
    .end local v0           #domain:I
    .end local v1           #type:I
    :cond_5
    const/4 v0, 0x4

    .line 253
    .restart local v0       #domain:I
    const/16 v1, 0xa

    .restart local v1       #type:I
    goto :goto_0
.end method

.method public getCallType()Lcom/android/internal/telephony/Call$CallType;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    return-object v0
.end method

.method public getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;
    .locals 6

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 316
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 317
    const/4 v1, 0x0

    .line 328
    :cond_0
    return-object v1

    .line 320
    :cond_1
    const/4 v1, 0x0

    .line 321
    .local v1, cwActive:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 322
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 323
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isCdmaCwActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    move-object v1, v0

    .line 321
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;
    .locals 6

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 336
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 337
    const/4 v1, 0x0

    .line 348
    :cond_0
    return-object v1

    .line 340
    :cond_1
    const/4 v1, 0x0

    .line 341
    .local v1, cwHolding:Lcom/android/internal/telephony/Connection;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 342
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 343
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isCdmaCwHolding()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 344
    move-object v1, v0

    .line 341
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .locals 10

    .prologue
    .line 186
    const-wide v6, 0x7fffffffffffffffL

    .line 187
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 190
    const-wide/16 v8, 0x0

    .line 202
    :goto_0
    return-wide v8

    .line 193
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 194
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 197
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    .line 199
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 193
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2
    move-wide v8, v6

    .line 202
    goto :goto_0
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 136
    const-wide v7, 0x7fffffffffffffffL

    .line 138
    .local v7, time:J
    const/4 v1, 0x0

    .line 140
    .local v1, earliest:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 142
    .local v3, l:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 143
    const/4 v9, 0x0

    .line 158
    :goto_0
    return-object v9

    .line 146
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 147
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 150
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 152
    .local v5, t:J
    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 153
    move-object v1, v0

    .line 154
    move-wide v7, v5

    .line 146
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #t:J
    :cond_2
    move-object v9, v1

    .line 158
    goto :goto_0
.end method

.method public getEarliestCreateTime()J
    .locals 10

    .prologue
    .line 164
    const-wide v6, 0x7fffffffffffffffL

    .line 166
    .local v6, time:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 169
    const-wide/16 v8, 0x0

    .line 181
    :goto_0
    return-wide v8

    .line 172
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 173
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 176
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 178
    .local v4, t:J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #t:J
    :cond_2
    move-wide v8, v6

    .line 181
    goto :goto_0
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 266
    .local v2, l:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 267
    const/4 v3, 0x0

    .line 282
    :cond_0
    return-object v3

    .line 270
    :cond_1
    const-wide/16 v7, 0x0

    .line 271
    .local v7, time:J
    const/4 v3, 0x0

    .line 272
    .local v3, latest:Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 273
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 274
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    .line 276
    .local v5, t:J
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 277
    move-object v3, v0

    .line 278
    move-wide v7, v5

    .line 272
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupDueToLowBattery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "hangupAllCalls: Unsupported Action"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangupIfAlive()V
    .locals 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnections()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, connections:Ljava/util/List;
    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isGeneric()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public abstract isVideoCall()Z
.end method

.method public setCallType(Lcom/android/internal/telephony/Call$CallType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    .line 230
    return-void
.end method

.method public setGeneric(Z)V
    .locals 0
    .parameter "generic"

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/android/internal/telephony/Call;->isGeneric:Z

    .line 298
    return-void
.end method
