.class final Lnbisdk/ao;
.super Ljava/lang/Thread;

# interfaces
.implements Lnbisdk/ar;


# instance fields
.field private O:Z

.field private bB:Lnbisdk/v;

.field private bC:Lnbisdk/w;

.field private bD:Ljava/io/ByteArrayOutputStream;

.field private bE:I

.field private bF:J

.field private bG:Z


# direct methods
.method constructor <init>(Lnbisdk/v;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v3, p0, Lnbisdk/ao;->bG:Z

    iput-object p1, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lnbisdk/ao;->bD:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lnbisdk/w;

    iget-object v1, p0, Lnbisdk/ao;->bD:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lnbisdk/w;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    :try_start_0
    iget-object v0, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    const-string v1, "iden!"

    iget-object v2, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    invoke-virtual {v2}, Lnbisdk/x;->ac()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/w;->a(Ljava/lang/String;[B)I

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/ao;->bG:Z
    :try_end_0
    .catch Lnbisdk/kt; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lnbisdk/ao;->O:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ao;->bF:J

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x62

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-direct {p0, v1}, Lnbisdk/ao;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0
.end method

.method private M()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/navbuilder/nb/NBException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lnbisdk/ao;->bD:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v1, p0, Lnbisdk/ao;->bD:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v1, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    invoke-virtual {v1}, Lnbisdk/x;->Y()Lnbisdk/kd;

    move-result-object v1

    iget-boolean v3, p0, Lnbisdk/ao;->bG:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lnbisdk/ao;->bE:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnbisdk/ao;->bE:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lnbisdk/ao;->bG:Z

    :cond_0
    iget-object v3, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    invoke-virtual {v3}, Lnbisdk/x;->X()Lnbisdk/gv;

    move-result-object v3

    const-string v5, "replies_count"

    iget v6, p0, Lnbisdk/ao;->bE:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lnbisdk/gv;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    invoke-virtual {v3}, Lnbisdk/x;->aa()Lnbisdk/zo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnbisdk/kd;->c(Lnbisdk/zo;)Lnbisdk/fu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v3

    :try_start_1
    invoke-interface {v3}, Lnbisdk/gh;->c()Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    :try_start_3
    invoke-interface {v3}, Lnbisdk/gh;->d()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    :try_start_4
    new-instance v4, Lnbisdk/hh;

    invoke-direct {v4, v2}, Lnbisdk/hh;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lnbisdk/af;

    iget-object v6, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    invoke-direct {v5, v6, v4}, Lnbisdk/af;-><init>(Lnbisdk/ak;Lnbisdk/wa;)V

    :goto_0
    iget v4, p0, Lnbisdk/ao;->bE:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-ge v0, v4, :cond_6

    :try_start_5
    invoke-virtual {v5}, Lnbisdk/af;->aF()Lnbisdk/ai;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Lnbisdk/kt; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v4

    :try_start_6
    iget-object v6, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    invoke-virtual {v6, v4}, Lnbisdk/x;->c(Lnbisdk/ai;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_7
    new-instance v4, Lcom/navbuilder/nb/NBException;

    const/16 v5, 0x7d5

    invoke-direct {v4, v5, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    move-object v8, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v8

    :goto_2
    :try_start_8
    sget-boolean v4, Lnbisdk/me;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    sget-boolean v4, Lnbisdk/me;->sE:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lnbisdk/ao;->bF:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/ju;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/ju;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "post"

    const-string v6, "HTTPNetwork.java"

    const/16 v7, 0x267

    invoke-static {v4, v5, v6, v7}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    new-instance v4, Lcom/navbuilder/nb/NBException;

    const/16 v5, 0x7d3

    invoke-direct {v4, v5, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    :try_start_b
    invoke-interface {v2}, Lnbisdk/gh;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    :cond_5
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    :try_start_c
    iget-object v4, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    iget-object v4, v4, Lnbisdk/x;->aP:Lnbisdk/ir;

    const-string v5, "Transaction.do_post(): StreamException caught."

    invoke-virtual {v4, v5}, Lnbisdk/ir;->ar(Ljava/lang/String;)V

    new-instance v4, Lcom/navbuilder/nb/NBException;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    move-exception v0

    :try_start_d
    new-instance v4, Lcom/navbuilder/nb/NBException;

    const/16 v5, 0x7d6

    invoke-direct {v4, v5, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    move-exception v0

    move-object v8, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    :try_start_f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    :try_start_10
    invoke-interface {v3}, Lnbisdk/gh;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :cond_9
    :goto_9
    return-void

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v8, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v8, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_3

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_1
.end method

.method private b(Lcom/navbuilder/nb/NBException;)V
    .locals 4

    const/16 v3, 0x267

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/ju;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/ju;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    const-string v2, "HTTPNetwork.java"

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/ao;->bB:Lnbisdk/v;

    invoke-virtual {v0, p1}, Lnbisdk/x;->e(Lcom/navbuilder/nb/NBException;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-string v0, "No Message"

    const-string v1, "post"

    const-string v2, "HTTPNetwork.java"

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/ao;->O:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t output on ready txn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    invoke-virtual {v0, p1, p2}, Lnbisdk/w;->a(Ljava/lang/String;[B)I

    move-result v0

    iget v1, p0, Lnbisdk/ao;->bE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnbisdk/ao;->bE:I

    return v0
.end method

.method public final run()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/ao;->O:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t post ready txn"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnbisdk/tt;->g(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    invoke-virtual {v0}, Lnbisdk/w;->P()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    iput-object v1, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    iput-object v1, p0, Lnbisdk/ao;->bD:Ljava/io/ByteArrayOutputStream;

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lnbisdk/ao;->O:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-direct {p0}, Lnbisdk/ao;->M()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/navbuilder/nb/NBException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-direct {p0, v0}, Lnbisdk/ao;->b(Lcom/navbuilder/nb/NBException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    iget-object v0, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    if-eqz v0, :cond_3

    :try_start_6
    iget-object v0, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    invoke-virtual {v0}, Lnbisdk/w;->P()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_3
    iput-object v1, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    iput-object v1, p0, Lnbisdk/ao;->bD:Ljava/io/ByteArrayOutputStream;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    if-eqz v2, :cond_4

    :try_start_7
    iget-object v2, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    invoke-virtual {v2}, Lnbisdk/w;->P()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_4
    iput-object v1, p0, Lnbisdk/ao;->bC:Lnbisdk/w;

    iput-object v1, p0, Lnbisdk/ao;->bD:Ljava/io/ByteArrayOutputStream;

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3
.end method
