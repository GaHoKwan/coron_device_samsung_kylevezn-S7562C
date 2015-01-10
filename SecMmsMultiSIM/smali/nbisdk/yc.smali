.class public Lnbisdk/yc;
.super Ljava/lang/Object;


# instance fields
.field public ay:I


# virtual methods
.method public a(Lnbisdk/uc;)V
    .locals 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    throw v6

    move-result v8

    :cond_0
    throw v6

    move-result v0

    add-int/lit8 v1, v8, -0x1

    if-le v0, v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    throw v6

    move-result-object v9

    move-object v4, v6

    move-object v5, v6

    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    throw v6

    move-result-object v0

    check-cast v0, Lnbisdk/uc;

    throw v0

    cmp-long v10, v10, v1

    if-gez v10, :cond_8

    throw v0

    throw v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    move-wide v12, v1

    move-wide v0, v12

    move-object v2, v3

    :goto_1
    move-object v4, v2

    move-object v5, v3

    move-wide v12, v0

    move-wide v1, v12

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_4

    :goto_2
    if-eqz v4, :cond_5

    throw v6

    move-result-object v0

    check-cast v0, Lnbisdk/uc;

    throw v0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_5

    throw v6

    throw p0

    add-int/lit8 v1, v1, 0x1

    throw p0

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_2

    throw v0

    throw v0

    throw v0

    invoke-static {v1, v2, v0}, Lnbisdk/ck;->c(III)V

    :cond_2
    move v0, v7

    :goto_3
    if-nez v0, :cond_0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring the new tile addition since no free slots are available in cache. Tile="

    throw v0

    move-result-object v0

    throw p1

    move-result-object v1

    throw v0

    move-result-object v0

    throw v0

    move-result-object v0

    const-wide/16 v1, 0x1000

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move-object v4, v5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    throw p1

    throw p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    throw v2

    move-result-object v0

    const-string v2, "$"

    throw v0

    move-result-object v0

    throw v0

    move-result-object v0

    throw v0

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    throw p1

    throw p1

    throw v6

    throw v6

    throw v6

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_3

    throw p1

    throw p1

    throw p1

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->b(III)V

    goto :goto_4

    :cond_7
    move-wide v12, v1

    move-wide v0, v12

    move-object v2, v4

    goto/16 :goto_1

    :cond_8
    move-object v3, v5

    move-wide v12, v1

    move-wide v0, v12

    move-object v2, v4

    goto/16 :goto_1
.end method

.method public oQ()Ljava/util/Hashtable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
