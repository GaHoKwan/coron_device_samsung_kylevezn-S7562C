.class final Lnbisdk/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/ad$a;,
        Lnbisdk/ad$b;
    }
.end annotation


# instance fields
.field private aV:Lnbisdk/ak;

.field private be:Lnbisdk/gh;

.field private bf:Lnbisdk/ad$b;

.field private bg:Lnbisdk/w;

.field private bh:Ljava/io/ByteArrayOutputStream;

.field private bi:Lnbisdk/af;

.field private bj:I

.field private bk:Lcom/navbuilder/nb/c;

.field private bl:Lnbisdk/ir;


# direct methods
.method constructor <init>(Lnbisdk/ak;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnbisdk/ad;->bj:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ad;->bk:Lcom/navbuilder/nb/c;

    const-wide/high16 v0, 0x4

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ad;->bl:Lnbisdk/ir;

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ad;->bl:Lnbisdk/ir;

    const-string v1, "opening new network connection"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lnbisdk/ad;->aV:Lnbisdk/ak;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lnbisdk/ad;->bh:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lnbisdk/w;

    iget-object v1, p0, Lnbisdk/ad;->bh:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lnbisdk/w;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnbisdk/ad;->bg:Lnbisdk/w;

    :try_start_0
    iget-object v0, p0, Lnbisdk/ad;->bg:Lnbisdk/w;

    const-string v1, "iden!"

    iget-object v2, p0, Lnbisdk/ad;->aV:Lnbisdk/ak;

    invoke-interface {v2}, Lnbisdk/ak;->ac()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/w;->a(Ljava/lang/String;[B)I

    move-result v0

    invoke-direct {p0}, Lnbisdk/ad;->a()V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_1

    const-string v1, "iden"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lnbisdk/db;->b(Ljava/lang/String;III)V
    :try_end_0
    .catch Lnbisdk/kt; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput v4, p0, Lnbisdk/ad;->bj:I

    iget v0, p0, Lnbisdk/ad;->bj:I

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "open not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x62

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lnbisdk/ad;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/ad;->aV:Lnbisdk/ak;

    invoke-interface {v0}, Lnbisdk/ak;->R()V

    new-instance v0, Lnbisdk/ad$b;

    invoke-direct {v0, p0}, Lnbisdk/ad$b;-><init>(Lnbisdk/ad;)V

    iput-object v0, p0, Lnbisdk/ad;->bf:Lnbisdk/ad$b;

    iget-object v0, p0, Lnbisdk/ad;->bf:Lnbisdk/ad$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private O()V
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->bi:Lnbisdk/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ad;->bi:Lnbisdk/af;

    invoke-virtual {v0}, Lnbisdk/af;->P()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ad;->bi:Lnbisdk/af;

    :cond_0
    return-void
.end method

.method static synthetic a(Lnbisdk/ad;I)I
    .locals 0

    iput p1, p0, Lnbisdk/ad;->bj:I

    return p1
.end method

.method static synthetic a(Lnbisdk/ad;Lnbisdk/af;)Lnbisdk/af;
    .locals 0

    iput-object p1, p0, Lnbisdk/ad;->bi:Lnbisdk/af;

    return-object p1
.end method

.method static synthetic a(Lnbisdk/ad;Lnbisdk/gh;)Lnbisdk/gh;
    .locals 0

    iput-object p1, p0, Lnbisdk/ad;->be:Lnbisdk/gh;

    return-object p1
.end method

.method static synthetic a(Lnbisdk/ad;)Lnbisdk/ir;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->bl:Lnbisdk/ir;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v1, p0, Lnbisdk/ad;->bh:Ljava/io/ByteArrayOutputStream;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/ad;->bh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lnbisdk/ad;Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/16 v1, 0x7d3

    const-string v2, "connection dead but not closed"

    invoke-direct {v0, v1, v2, p1}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lnbisdk/ad;->b(Lcom/navbuilder/nb/NBException;)V

    return-void
.end method

.method static synthetic b(Lnbisdk/ad;)Lnbisdk/ad$b;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->bf:Lnbisdk/ad$b;

    return-object v0
.end method

.method static synthetic c(Lnbisdk/ad;)Ljava/io/ByteArrayOutputStream;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->bh:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic d(Lnbisdk/ad;)Lnbisdk/ak;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->aV:Lnbisdk/ak;

    return-object v0
.end method

.method static synthetic e(Lnbisdk/ad;)I
    .locals 1

    iget v0, p0, Lnbisdk/ad;->bj:I

    return v0
.end method

.method static synthetic f(Lnbisdk/ad;)Lnbisdk/gh;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->be:Lnbisdk/gh;

    return-object v0
.end method

.method static synthetic g(Lnbisdk/ad;)Lcom/navbuilder/nb/c;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->bk:Lcom/navbuilder/nb/c;

    return-object v0
.end method

.method static synthetic h(Lnbisdk/ad;)Lnbisdk/af;
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->bi:Lnbisdk/af;

    return-object v0
.end method

.method static synthetic i(Lnbisdk/ad;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/ad;->O()V

    return-void
.end method


# virtual methods
.method protected final R()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/ad;->b(Lcom/navbuilder/nb/NBException;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    invoke-virtual {p0}, Lnbisdk/ad;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output on non-open connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lnbisdk/ad;->bh:Ljava/io/ByteArrayOutputStream;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/ad;->bg:Lnbisdk/w;

    invoke-virtual {v0, p1, p2}, Lnbisdk/w;->a(Ljava/lang/String;[B)I

    move-result v0

    invoke-direct {p0}, Lnbisdk/ad;->a()V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/navbuilder/nb/c;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ad;->bk:Lcom/navbuilder/nb/c;

    return-void
.end method

.method public final aE()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/ad;->be:Lnbisdk/gh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/navbuilder/nb/NBException;)V
    .locals 5

    iget-object v1, p0, Lnbisdk/ad;->aV:Lnbisdk/ak;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lnbisdk/ad;->bj:I

    if-lez v0, :cond_4

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection is open and about to be closed.  Connection.close("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v2, 0x1000

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lnbisdk/ad;->O()V

    iget-object v0, p0, Lnbisdk/ad;->be:Lnbisdk/gh;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnbisdk/ad;->be:Lnbisdk/gh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Connection.closeSocket()"

    const-wide/high16 v2, 0x1000

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_1
    iget-object v0, p0, Lnbisdk/ad;->be:Lnbisdk/gh;

    invoke-interface {v0}, Lnbisdk/gh;->close()V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    const-string v0, "close"

    const-string v2, "closeSocket"

    const-string v3, "Connection.java"

    const/16 v4, 0x7a

    invoke-static {v0, v2, v3, v4}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lnbisdk/ad;->be:Lnbisdk/gh;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lnbisdk/ad;->bj:I

    invoke-direct {p0}, Lnbisdk/ad;->a()V

    iget-object v0, p0, Lnbisdk/ad;->aV:Lnbisdk/ak;

    invoke-interface {v0, p1}, Lnbisdk/ak;->b(Lcom/navbuilder/nb/NBException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :cond_5
    :try_start_6
    const-string v0, "null"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v0, "IOException thrown in Connection.closeSocket()"

    const-wide/high16 v2, 0x1000

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_8
    iput v2, p0, Lnbisdk/ad;->bj:I

    invoke-direct {p0}, Lnbisdk/ad;->a()V

    iget-object v2, p0, Lnbisdk/ad;->aV:Lnbisdk/ak;

    invoke-interface {v2, p1}, Lnbisdk/ak;->b(Lcom/navbuilder/nb/NBException;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    :try_start_9
    sget-boolean v2, Lnbisdk/me;->sE:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "close(NimException)"

    const-string v3, "Connection.java"

    const/16 v4, 0x7d

    invoke-static {v0, v2, v3, v4}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :cond_6
    :try_start_a
    iget-object v0, p0, Lnbisdk/ad;->bf:Lnbisdk/ad$b;

    const/4 v2, 0x0

    iput-object v2, p0, Lnbisdk/ad;->bf:Lnbisdk/ad$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method

.method protected final e()Z
    .locals 1

    iget v0, p0, Lnbisdk/ad;->bj:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
