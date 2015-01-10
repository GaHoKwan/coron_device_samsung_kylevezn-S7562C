.class final Lnbisdk/ad$a;
.super Lnbisdk/sz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hu:Lnbisdk/ad;


# direct methods
.method constructor <init>(Lnbisdk/ad;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    const-string v0, "Input Thread"

    invoke-direct {p0, v0}, Lnbisdk/sz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final fc()V
    .locals 7

    const/4 v1, 0x0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->a(Lnbisdk/ad;)Lnbisdk/ir;

    move-result-object v0

    const-string v2, "network input thread starting"

    invoke-virtual {v0, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->f(Lnbisdk/ad;)Lnbisdk/gh;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/gh;->d()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    new-instance v2, Lnbisdk/hh;

    invoke-direct {v2, v0}, Lnbisdk/hh;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    new-instance v3, Lnbisdk/af;

    iget-object v4, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v4}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lnbisdk/af;-><init>(Lnbisdk/ak;Lnbisdk/wa;)V

    invoke-static {v0, v3}, Lnbisdk/ad;->a(Lnbisdk/ad;Lnbisdk/af;)Lnbisdk/af;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->h(Lnbisdk/ad;)Lnbisdk/af;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lnbisdk/bz; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lnbisdk/mg; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->i(Lnbisdk/ad;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0, v1}, Lnbisdk/ad;->a(Lnbisdk/ad;Ljava/lang/Exception;)V

    :goto_3
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->a(Lnbisdk/ad;)Lnbisdk/ir;

    move-result-object v0

    const-string v1, "network input thread stopped"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "sock.openOutputStream()\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v2, 0x1000

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->R()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputThread.runprotected()"

    const-string v3, "Connection.java"

    const/16 v4, 0x166

    invoke-static {v1, v2, v3, v4}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    iget-object v1, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v1, v0}, Lnbisdk/ad;->a(Lnbisdk/ad;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    :try_start_6
    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->h(Lnbisdk/ad;)Lnbisdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/af;->aF()Lnbisdk/ai;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->d(Lnbisdk/ad;)Lnbisdk/ak;

    move-result-object v2

    invoke-interface {v2, v0}, Lnbisdk/ak;->c(Lnbisdk/ai;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lnbisdk/bz; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lnbisdk/mg; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-virtual {v2}, Lnbisdk/ad;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "InputThread.runloop(): StreamEOFException caught while connection is still openned."

    const-wide/high16 v3, 0x1000

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    :try_start_8
    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, 0x1000

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_6
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_9
    iget-object v2, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v2}, Lnbisdk/ad;->i(Lnbisdk/ad;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catchall_1
    move-exception v0

    :goto_4
    iget-object v2, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v2, v1}, Lnbisdk/ad;->a(Lnbisdk/ad;Ljava/lang/Exception;)V

    throw v0

    :catch_4
    move-exception v0

    :try_start_a
    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InputThread.runloop(): StreamIOException caught."

    const-wide/high16 v2, 0x1000

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->R()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4
.end method

.method public final fd()Lcom/navbuilder/nb/c;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad$a;->hu:Lnbisdk/ad;

    invoke-static {v0}, Lnbisdk/ad;->g(Lnbisdk/ad;)Lcom/navbuilder/nb/c;

    move-result-object v0

    return-object v0
.end method
