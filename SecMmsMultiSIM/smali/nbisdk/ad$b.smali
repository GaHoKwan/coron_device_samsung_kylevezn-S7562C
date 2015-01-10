.class final Lnbisdk/ad$b;
.super Lnbisdk/sz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic hu:Lnbisdk/ad;


# direct methods
.method constructor <init>(Lnbisdk/ad;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    const-string v0, "Output Thread"

    invoke-direct {p0, v0}, Lnbisdk/sz;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->b(Lnbisdk/ad;)Lnbisdk/ad$b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-ne v1, v2, :cond_2

    :try_start_1
    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v1}, Lnbisdk/ad;->c(Lnbisdk/ad;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-virtual {v2}, Lnbisdk/ad;->e()Z

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v1

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->c(Lnbisdk/ad;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    :try_start_3
    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->c(Lnbisdk/ad;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->c(Lnbisdk/ad;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v3}, Lnbisdk/ad;->c(Lnbisdk/ad;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    array-length v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->R()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private aq()Z
    .locals 9

    const-wide/high16 v7, 0x1000

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/ak;->aa()Lnbisdk/zo;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/zo;->getHostName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open connection to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v4, 0x1000

    const/16 v6, 0x8

    invoke-static {v2, v4, v5, v6}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_0
    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/ak;->S()I

    move-result v2

    add-int/lit16 v2, v2, 0x1388

    add-int/lit16 v2, v2, 0x4e20

    iget-object v4, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v4}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/ak;->X()Lnbisdk/gv;

    move-result-object v4

    const-string v5, "idle_timeout"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lnbisdk/gv;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-direct {p0}, Lnbisdk/ad$b;->ff()Lnbisdk/gh;

    move-result-object v4

    invoke-static {v2, v4}, Lnbisdk/ad;->a(Lnbisdk/ad;Lnbisdk/gh;)Lnbisdk/gh;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->e(Lnbisdk/ad;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->f(Lnbisdk/ad;)Lnbisdk/gh;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v2, v1}, Lnbisdk/ad;->a(Lnbisdk/ad;I)I

    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-virtual {v1}, Lnbisdk/ad;->R()V

    :goto_0
    return v0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Connector.open("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Connector.READ_WRITE, false)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7, v8, v1}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    new-instance v3, Lcom/navbuilder/nb/NBException;

    const/16 v4, 0x7d4

    invoke-direct {v3, v4, v2}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-virtual {v1, v3}, Lnbisdk/ad;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Connector.open("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Connector.READ_WRITE, false)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7, v8, v1}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    new-instance v3, Lcom/navbuilder/nb/NBException;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v2}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-virtual {v1, v3}, Lnbisdk/ad;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->e(Lnbisdk/ad;)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "opened non-opening conn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lnbisdk/ad;->a(Lnbisdk/ad;I)I

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private ff()Lnbisdk/gh;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/ak;->Y()Lnbisdk/kd;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/ak;->aa()Lnbisdk/zo;

    move-result-object v0

    const-string v1, "retry_times"

    invoke-interface {v0, v1}, Lnbisdk/zo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v1}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/ak;->Q()I

    move-result v4

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v5, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v5}, Lnbisdk/ad;->b(Lnbisdk/ad;)Lnbisdk/ad$b;

    move-result-object v5

    if-eq v1, v5, :cond_1

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    const-string v5, "open failed"

    const-string v6, "opensock"

    const-string v7, "Connection.java"

    const/16 v8, 0x17e

    invoke-static {v5, v6, v7, v8}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v5, v0, -0x1

    if-lt v2, v5, :cond_4

    throw v1

    :catch_1
    move-exception v0

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    :try_start_2
    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_2

    const-string v1, "open"

    const-string v5, "opensock"

    const-string v6, "Connection.java"

    const/16 v7, 0x171

    invoke-static {v1, v5, v6, v7}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v1}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/ak;->R()V

    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v1}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/ak;->aa()Lnbisdk/zo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnbisdk/kd;->b(Lnbisdk/zo;)Lnbisdk/gh;

    move-result-object v1

    sget-boolean v5, Lnbisdk/me;->sE:Z

    if-eqz v5, :cond_3

    const-string v5, "open successful"

    const-string v6, "opensock"

    const-string v7, "Connection.java"

    const/16 v8, 0x177

    invoke-static {v5, v6, v7, v8}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v1

    :cond_4
    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private fg()Ljava/io/OutputStream;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->f(Lnbisdk/ad;)Lnbisdk/gh;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/gh;->c()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "sock.openOutputStream()\n"

    const-wide/high16 v1, 0x1000

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->R()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final fc()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->a(Lnbisdk/ad;)Lnbisdk/ir;

    move-result-object v0

    const-string v1, "network output thread starting"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnbisdk/ad$b;->aq()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnbisdk/ad$a;

    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-direct {v0, v1}, Lnbisdk/ad$a;-><init>(Lnbisdk/ad;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lnbisdk/ad$b;->fg()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-direct {p0, v0}, Lnbisdk/ad$b;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0, v4}, Lnbisdk/ad;->a(Lnbisdk/ad;Ljava/lang/Exception;)V

    :goto_1
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->a(Lnbisdk/ad;)Lnbisdk/ir;

    move-result-object v0

    const-string v1, "network output thread stopped"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :try_start_5
    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutputThread.runprotected()"

    const-string v2, "Connection.java"

    const/16 v3, 0xd6

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0, v4}, Lnbisdk/ad;->a(Lnbisdk/ad;Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v1, v4}, Lnbisdk/ad;->a(Lnbisdk/ad;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public final fd()Lcom/navbuilder/nb/c;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad$b;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->g(Lnbisdk/ad;)Lcom/navbuilder/nb/c;

    move-result-object v0

    return-object v0
.end method
