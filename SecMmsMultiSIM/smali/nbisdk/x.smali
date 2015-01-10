.class public abstract Lnbisdk/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/navbuilder/nb/c;
.implements Lnbisdk/ak;
.implements Lnbisdk/dl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/x$a;
    }
.end annotation


# instance fields
.field private aA:Lnbisdk/yn;

.field protected aB:Ljava/util/Vector;

.field private aC:Lnbisdk/ad;

.field private aD:B

.field private aE:Ljava/lang/Thread;

.field private aF:J

.field private aG:J

.field protected aH:Z

.field protected aI:Lcom/navbuilder/nb/c;

.field private aJ:Lnbisdk/ev;

.field protected aK:Lnbisdk/gv;

.field private aL:Lnbisdk/dz;

.field protected aM:Lnbisdk/s;

.field private aN:Ljava/lang/String;

.field private aO:Ljava/lang/Object;

.field protected aP:Lnbisdk/ir;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lnbisdk/dz;Lnbisdk/ev;Z)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    iput-byte v1, p0, Lnbisdk/x;->aD:B

    iput-wide v2, p0, Lnbisdk/x;->aF:J

    iput-wide v2, p0, Lnbisdk/x;->aG:J

    iput-boolean v1, p0, Lnbisdk/x;->aH:Z

    iput-object p0, p0, Lnbisdk/x;->aI:Lcom/navbuilder/nb/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/x;->aO:Ljava/lang/Object;

    const-wide/high16 v0, 0x4

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/x;->aP:Lnbisdk/ir;

    iput-object p1, p0, Lnbisdk/x;->aL:Lnbisdk/dz;

    iput-object p2, p0, Lnbisdk/x;->aJ:Lnbisdk/ev;

    invoke-interface {p2}, Lnbisdk/ev;->aU()Lnbisdk/gv;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    new-instance v0, Lnbisdk/s;

    iget-object v1, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-direct {v0, v1, p3}, Lnbisdk/s;-><init>(Lnbisdk/gv;Z)V

    iput-object v0, p0, Lnbisdk/x;->aM:Lnbisdk/s;

    iget-object v0, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-virtual {v0}, Lnbisdk/gv;->aQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/x;->aN:Ljava/lang/String;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->na()Lnbisdk/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/y;->a(Lnbisdk/dl;)V

    return-void
.end method

.method private declared-synchronized U()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/x;->aH:Z

    invoke-direct {p0}, Lnbisdk/x;->W()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/x$a;

    invoke-direct {v0, p0}, Lnbisdk/x$a;-><init>(Lnbisdk/x;)V

    iput-object v0, p0, Lnbisdk/x;->aE:Ljava/lang/Thread;

    iget-object v0, p0, Lnbisdk/x;->aE:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private V()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/x;->aE:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method private W()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/x;->aE:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/x;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lnbisdk/x;->aE:Ljava/lang/Thread;

    return-object v0
.end method

.method private a(Lnbisdk/ai;)Lnbisdk/ag;
    .locals 7

    const/4 v1, 0x0

    iget-object v3, p0, Lnbisdk/x;->aO:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Lnbisdk/ai;->aC()Lnbisdk/ag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnbisdk/ai;->aC()Lnbisdk/ag;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ag;->aG()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnbisdk/ai;->aC()Lnbisdk/ag;

    move-result-object v0

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    invoke-virtual {v0}, Lnbisdk/ag;->ai()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/ai;->ap()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lnbisdk/ag;->aH()B

    move-result v2

    invoke-virtual {p1}, Lnbisdk/ai;->aA()B

    move-result v5

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lnbisdk/ai;->a(Lnbisdk/ag;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad()V
    .locals 2

    iget-byte v0, p0, Lnbisdk/x;->aD:B

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lnbisdk/x;->aD:B

    iget-byte v0, p0, Lnbisdk/x;->aD:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-byte v0, p0, Lnbisdk/x;->aD:B

    :cond_0
    return-void
.end method

.method private b(I)B
    .locals 3

    :goto_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "all IDs are in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    iget-byte v2, p0, Lnbisdk/x;->aD:B

    invoke-virtual {v0, v2}, Lnbisdk/ag;->d(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnbisdk/x;->ad()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lnbisdk/x;->aD:B

    invoke-direct {p0}, Lnbisdk/x;->ad()V

    return v0
.end method

.method private b(Lnbisdk/ai;)Lnbisdk/ag;
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lnbisdk/x;->aO:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p1}, Lnbisdk/x;->a(Lnbisdk/ai;)Lnbisdk/ag;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lnbisdk/x;->c(Lnbisdk/ag;)Z

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_b

    monitor-exit v5

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lnbisdk/ai;->aw()Lnbisdk/ql;

    move-result-object v6

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iden="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v7, 0x2000

    const/16 v4, 0x8

    invoke-static {v0, v7, v8, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_2
    const-string v0, "client-guid"

    invoke-virtual {v6, v0}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "client-guid"

    invoke-virtual {v6, v0}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    move-object v4, v0

    :goto_2
    const-string v0, "error"

    invoke-static {v6, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-static {v6}, Lcom/navbuilder/nb/NBException;->getReplyErrorCode(Lnbisdk/ql;)I

    move-result v4

    const/16 v0, 0xfce

    if-eq v4, v0, :cond_3

    const/16 v0, 0xfba

    if-eq v4, v0, :cond_3

    const/16 v0, 0xfc8

    if-ne v4, v0, :cond_6

    :cond_3
    :goto_3
    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    invoke-virtual {p0, v0}, Lnbisdk/x;->c(Lnbisdk/ag;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v7, Lcom/navbuilder/nb/NBException;

    invoke-direct {v7, v4}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-virtual {v0, v7}, Lnbisdk/ag;->e(Lcom/navbuilder/nb/NBException;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move-object v4, v2

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lnbisdk/x;->ae()V

    :cond_6
    const/16 v0, 0xfcd

    if-ne v4, v0, :cond_7

    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/16 v7, 0x7d1

    invoke-direct {v0, v7}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-direct {p0, v0}, Lnbisdk/x;->d(Lcom/navbuilder/nb/NBException;)V

    :cond_7
    new-instance v0, Lnbisdk/fk;

    const-string v7, "code"

    invoke-static {v6, v7}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "description"

    invoke-static {v6, v8}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v7, v6}, Lnbisdk/fk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v6, Lnbisdk/me;->sE:Z

    if-eqz v6, :cond_8

    const-string v6, "iden"

    invoke-virtual {p1}, Lnbisdk/ai;->aA()B

    move-result v7

    const/4 v8, 0x5

    invoke-static {v6, v7, v8, v4}, Lnbisdk/db;->a(Ljava/lang/String;III)V

    :cond_8
    move-object v9, v0

    move v0, v3

    move-object v3, v9

    :goto_4
    if-eqz v3, :cond_0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnbisdk/tt;->b(Lnbisdk/fk;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_c

    new-instance v0, Lnbisdk/fk;

    invoke-direct {v0, v4}, Lnbisdk/fk;-><init>([B)V

    iget-object v6, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-virtual {v6, v4}, Lnbisdk/gv;->g([B)V

    :goto_5
    sget-boolean v4, Lnbisdk/me;->sE:Z

    if-eqz v4, :cond_a

    const-string v4, "iden"

    invoke-virtual {p1}, Lnbisdk/ai;->aA()B

    move-result v6

    invoke-virtual {p1}, Lnbisdk/ai;->aD()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lnbisdk/db;->c(Ljava/lang/String;III)V

    :cond_a
    move-object v9, v0

    move v0, v3

    move-object v3, v9

    goto :goto_4

    :cond_b
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto :goto_5
.end method

.method private c(Lcom/navbuilder/nb/NBException;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    invoke-virtual {v0, p1}, Lnbisdk/ad;->b(Lcom/navbuilder/nb/NBException;)V

    invoke-virtual {p0, p1}, Lnbisdk/x;->b(Lcom/navbuilder/nb/NBException;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connEnd didn\'t close conn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/navbuilder/nb/NBException;)V
    .locals 3

    invoke-direct {p0, p1}, Lnbisdk/x;->c(Lcom/navbuilder/nb/NBException;)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->hasInnerException()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/x;->aP:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getInnerException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->ar(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/x;->aP:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->ar(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "assert in non-debug build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string v1, "want network unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "All"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KidFriendly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public L()V
    .locals 3

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    invoke-virtual {v0}, Lnbisdk/ag;->aI()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnbisdk/ag;->aJ()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected declared-synchronized M()V
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lnbisdk/x;->aH:Z

    iget-object v1, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lnbisdk/x;->T()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lnbisdk/x;->aF:J

    sub-long/2addr v1, v3

    invoke-virtual {p0}, Lnbisdk/x;->S()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnbisdk/x;->c(Lcom/navbuilder/nb/NBException;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lnbisdk/x;->aH:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/x;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lnbisdk/x;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnbisdk/x;->V()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-direct {p0, v1}, Lnbisdk/x;->d(Lcom/navbuilder/nb/NBException;)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "triage()"

    const-string v2, "TCPNetwork.java"

    const/16 v3, 0x1c4

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    if-nez v0, :cond_6

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connection already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lnbisdk/ad;

    invoke-direct {v0, p0}, Lnbisdk/ad;-><init>(Lnbisdk/ak;)V

    iput-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    iget-object v1, p0, Lnbisdk/x;->aI:Lcom/navbuilder/nb/c;

    invoke-virtual {v0, v1}, Lnbisdk/ad;->a(Lcom/navbuilder/nb/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :try_start_4
    invoke-virtual {p0}, Lnbisdk/x;->N()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lnbisdk/kt; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lnbisdk/x;->O()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-direct {p0, v1}, Lnbisdk/x;->d(Lcom/navbuilder/nb/NBException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method protected N()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    invoke-virtual {v0}, Lnbisdk/ag;->aI()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    invoke-virtual {v0, v1}, Lnbisdk/ag;->a(Lnbisdk/ar;)V

    invoke-virtual {v0}, Lnbisdk/ag;->aK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lnbisdk/ag;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "triageOutput"

    const-string v3, "TCPNetwork.java"

    const/16 v4, 0x173

    invoke-static {v0, v1, v3, v4}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/navbuilder/nb/NBException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v4, v1}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-virtual {v0, v3}, Lnbisdk/ag;->e(Lcom/navbuilder/nb/NBException;)V

    invoke-virtual {p0, v0}, Lnbisdk/x;->c(Lnbisdk/ag;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected O()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    iget-wide v3, p0, Lnbisdk/x;->aG:J

    invoke-virtual {v0, v3, v4}, Lnbisdk/ag;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-direct {p0, v0}, Lnbisdk/x;->d(Lcom/navbuilder/nb/NBException;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final Q()I
    .locals 4

    const/16 v0, 0x2710

    :try_start_0
    iget-object v1, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    const-string v2, "retry_interval"

    invoke-virtual {v1, v2}, Lnbisdk/gv;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lnbisdk/x;->aL:Lnbisdk/dz;

    invoke-interface {v1}, Lnbisdk/dz;->eP()Lnbisdk/jm;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lnbisdk/jm;->e(B)Lnbisdk/cm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lnbisdk/jm;->e(B)Lnbisdk/cm;

    move-result-object v1

    invoke-virtual {v2}, Lnbisdk/cm;->cN()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lnbisdk/cm;->cN()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {v2}, Lnbisdk/cm;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnbisdk/cm;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    div-int/lit8 v0, v0, 0x2

    :cond_3
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final R()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/x;->aG:J

    return-void
.end method

.method public final S()I
    .locals 2

    iget-object v0, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    const-string v1, "conn_idle_timeout"

    invoke-virtual {v0, v1}, Lnbisdk/gv;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected final T()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lnbisdk/x;->aF:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/x;->aF:J

    :cond_0
    iput-wide v2, p0, Lnbisdk/x;->aG:J

    return-void
.end method

.method public final X()Lnbisdk/gv;
    .locals 1

    iget-object v0, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    return-object v0
.end method

.method public final Y()Lnbisdk/kd;
    .locals 1

    iget-object v0, p0, Lnbisdk/x;->aL:Lnbisdk/dz;

    invoke-interface {v0}, Lnbisdk/dz;->eF()Lnbisdk/kd;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnbisdk/x;->aJ:Lnbisdk/ev;

    invoke-interface {v0}, Lnbisdk/ev;->aW()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/16 v1, 0x7d0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lnbisdk/x;->d(Lcom/navbuilder/nb/NBException;)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/x;->V()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/tt;->g(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lnbisdk/ag;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnbisdk/x;->aO:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lnbisdk/x;->b(I)B

    move-result v0

    invoke-virtual {p1, v0}, Lnbisdk/ag;->c(B)V

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lnbisdk/ag;->a(Ljava/util/Vector;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnbisdk/x;->aF:J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lnbisdk/x;->U()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lnbisdk/fk;)V
    .locals 0

    return-void
.end method

.method public final aa()Lnbisdk/zo;
    .locals 1

    iget-object v0, p0, Lnbisdk/x;->aM:Lnbisdk/s;

    return-object v0
.end method

.method public final ab()Lnbisdk/yn;
    .locals 1

    iget-object v0, p0, Lnbisdk/x;->aA:Lnbisdk/yn;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnbisdk/ak;->Z()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/gs$a;->b(Ljava/io/InputStream;)Lnbisdk/yn;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/x;->aA:Lnbisdk/yn;

    :cond_0
    iget-object v0, p0, Lnbisdk/x;->aA:Lnbisdk/yn;

    return-object v0
.end method

.method public final ac()[B
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lnbisdk/x;->ab()Lnbisdk/yn;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/yn;->ap()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lnbisdk/x;->ab()Lnbisdk/yn;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/x;->aN:Ljava/lang/String;

    iget-object v3, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-virtual {v3}, Lnbisdk/gv;->aQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-virtual {v2}, Lnbisdk/gv;->aQ()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnbisdk/x;->aN:Ljava/lang/String;

    iget-object v2, p0, Lnbisdk/x;->aM:Lnbisdk/s;

    iget-object v3, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-virtual {v2, v3}, Lnbisdk/s;->a(Lnbisdk/gv;)V

    :cond_0
    iget-object v2, p0, Lnbisdk/x;->aJ:Lnbisdk/ev;

    iget-object v3, p0, Lnbisdk/x;->aK:Lnbisdk/gv;

    invoke-static {v2, v3}, Lnbisdk/s;->a(Lnbisdk/ev;Lnbisdk/gv;)Lnbisdk/ql;

    move-result-object v2

    sget-boolean v3, Lnbisdk/me;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iden="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x2000

    const/16 v6, 0x8

    invoke-static {v3, v4, v5, v6}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_1
    invoke-static {v0, v2}, Lnbisdk/w;->a(Lnbisdk/yn;Lnbisdk/ql;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ByteArrayOutputStream IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public final ae()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    invoke-virtual {p0, v0}, Lnbisdk/x;->b(Lnbisdk/ag;)Z

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lnbisdk/x;->aE:Ljava/lang/Thread;

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->R()V

    iput-object v2, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    :cond_1
    return-void
.end method

.method public final af()V
    .locals 3

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/x;->aP:Lnbisdk/ir;

    const-string v1, "Network Status changed."

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->aE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    invoke-virtual {v0}, Lnbisdk/ad;->R()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    :cond_1
    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/x;->aL:Lnbisdk/dz;

    invoke-interface {v0}, Lnbisdk/dz;->eP()Lnbisdk/jm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnbisdk/jm;->e(B)Lnbisdk/cm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lnbisdk/jm;->e(B)Lnbisdk/cm;

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/cm;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnbisdk/cm;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lnbisdk/x;->U()V

    :cond_3
    return-void
.end method

.method public final ag()V
    .locals 0

    return-void
.end method

.method public b(Lcom/navbuilder/nb/NBException;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/x;->aP:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection ending, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/x;->L()V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    const-string v0, "finished"

    const-string v1, "onConnectionEnd"

    const-string v2, "TCPNetwork.java"

    const/16 v3, 0x14d

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v4, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->O()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lnbisdk/x;->e(Lcom/navbuilder/nb/NBException;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed (errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectionEnd"

    const-string v2, "TCPNetwork.java"

    const/16 v3, 0x152

    invoke-static {v0, v1, v2, v3}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lnbisdk/x;->aC:Lnbisdk/ad;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->O()V

    throw v0
.end method

.method public final b(Lnbisdk/ag;)Z
    .locals 2

    iget-object v1, p0, Lnbisdk/x;->aO:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lnbisdk/x;->c(Lnbisdk/ag;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x1400

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "nav"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lnbisdk/me;->sD:Z

    if-nez v1, :cond_0

    const/16 v0, 0x5c00

    goto :goto_0

    :cond_2
    const-string v1, "map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lnbisdk/me;->sD:Z

    if-nez v1, :cond_0

    const/16 v0, 0x1800

    goto :goto_0

    :cond_3
    const-string v1, "vector-tile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x5000

    goto :goto_0

    :cond_4
    const-string v1, "proxpoi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0xc00

    goto :goto_0

    :cond_5
    const-string v1, "sync-places-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x200

    goto :goto_0

    :cond_6
    const-string v1, "traffic-notify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fileset-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x100

    goto :goto_0

    :cond_7
    const-string v1, "message-status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x40

    goto :goto_0

    :cond_8
    const-string v1, "message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x400

    goto :goto_0

    :cond_9
    const-string v1, "fileset-download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lnbisdk/me;->sD:Z

    if-nez v1, :cond_0

    const/16 v0, 0x2800

    goto :goto_0
.end method

.method public final c(Lnbisdk/ai;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnbisdk/x;->d(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lnbisdk/x;->b(Lnbisdk/ai;)Lnbisdk/ag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/ag;->d(Lnbisdk/ai;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/x;->aG:J

    return-void
.end method

.method protected final c(Lnbisdk/ag;)Z
    .locals 2

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lnbisdk/ag;->a(Ljava/util/Vector;)V

    iget-object v1, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/x;->T()V

    :cond_0
    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final d(Lnbisdk/ai;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnbisdk/x;->d(Z)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/x;->aG:J

    invoke-direct {p0, p1}, Lnbisdk/x;->a(Lnbisdk/ai;)Lnbisdk/ag;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/ag;->c(Lnbisdk/ai;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e(Lcom/navbuilder/nb/NBException;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ag;

    invoke-virtual {v0}, Lnbisdk/ag;->aI()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnbisdk/ag;->aJ()V

    invoke-virtual {v0, p1}, Lnbisdk/ag;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnbisdk/x;->aB:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
