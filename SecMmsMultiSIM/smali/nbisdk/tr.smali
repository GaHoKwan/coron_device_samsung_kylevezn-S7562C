.class public final Lnbisdk/tr;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/nl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/tr$a;
    }
.end annotation


# static fields
.field private static BP:Ljava/util/Hashtable;

.field private static cl:Ljava/lang/String;


# instance fields
.field private BJ:Lnbisdk/tr$a;

.field private BK:Lnbisdk/jf;

.field private BL:Lnbisdk/g;

.field private BM:Lnbisdk/yn;

.field private BN:Ljava/util/Hashtable;

.field private BO:Z

.field private BQ:Lnbisdk/xr;

.field private L:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private bE:I

.field private yU:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v5, 0x4000

    const/4 v4, 0x4

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnbisdk/tr;->BP:Ljava/util/Hashtable;

    :try_start_0
    sget-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;

    invoke-static {v0}, Lnbisdk/jf;->av(Ljava/lang/String;)V

    sget-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid localFilesetURI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnbisdk/tr;->cl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4000

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    const-string v0, ""

    sput-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    sput-object v1, Lnbisdk/tr;->cl:Ljava/lang/String;

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v6, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    goto :goto_0
.end method

.method public constructor <init>(Lnbisdk/g;Lnbisdk/yn;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnbisdk/g;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/tr;->ax:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/g;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/tr;->L:Ljava/lang/String;

    iput-object p1, p0, Lnbisdk/tr;->BL:Lnbisdk/g;

    iput-object p2, p0, Lnbisdk/tr;->BM:Lnbisdk/yn;

    sget-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnbisdk/tr;->cl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Lnbisdk/tr$a;

    invoke-direct {v0, p0}, Lnbisdk/tr$a;-><init>(Lnbisdk/tr;)V

    iput-object v0, p0, Lnbisdk/tr;->BJ:Lnbisdk/tr$a;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/tr;->BN:Ljava/util/Hashtable;

    return-void

    :cond_1
    sget-object v1, Lnbisdk/tr;->BP:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnbisdk/tr;->BP:Ljava/util/Hashtable;

    iget-object v2, p0, Lnbisdk/tr;->ax:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/xr;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRawFilesetInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/tr;->ax:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x4000

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnbisdk/tr;->cl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/tr;->ax:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "fileset.manifest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/jf;->aw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/xr;->b([Ljava/lang/String;)Lnbisdk/xr;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    sget-object v0, Lnbisdk/tr;->BP:Ljava/util/Hashtable;

    iget-object v2, p0, Lnbisdk/tr;->ax:Ljava/lang/String;

    iget-object v3, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x4000

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lnbisdk/tr;)Lnbisdk/jf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    invoke-direct {p0}, Lnbisdk/tr;->ou()Lnbisdk/jf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lnbisdk/tr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnbisdk/tr;->BO:Z

    return p1
.end method

.method private a(Lnbisdk/ub;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/dv;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid fileHeader : null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v3, p1, Lnbisdk/ub;->cJ:I

    iget v4, p0, Lnbisdk/tr;->bE:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lnbisdk/tr;->yU:[B

    if-eqz v3, :cond_3

    iget-object v0, p0, Lnbisdk/tr;->yU:[B

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iput v0, p0, Lnbisdk/tr;->bE:I

    iput-object v1, p0, Lnbisdk/tr;->yU:[B

    :cond_3
    :try_start_0
    iget-object v3, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;

    if-nez v3, :cond_4

    invoke-direct {p0}, Lnbisdk/tr;->ou()Lnbisdk/jf;

    move-result-object v3

    iput-object v3, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    if-nez p1, :cond_7

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid file header : null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lnbisdk/me;->sD:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;

    invoke-virtual {v1}, Lnbisdk/jf;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;

    :cond_5
    throw v0
    :try_end_2
    .catch Lnbisdk/lw; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_6

    const-wide/16 v3, 0x4000

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    :cond_6
    new-instance v1, Lnbisdk/dv;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/dv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :try_start_3
    iget-object v3, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    iget-boolean v4, v3, Lnbisdk/xr;->mJ:Z

    if-eqz v4, :cond_8

    iget-boolean v3, v3, Lnbisdk/xr;->jy:Z

    if-eqz v3, :cond_8

    move v0, v2

    :cond_8
    if-eqz v0, :cond_d

    iget-object v0, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    iget-object v0, v0, Lnbisdk/xr;->AU:Ljava/util/Hashtable;

    iget-object v3, p1, Lnbisdk/ub;->ax:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid file header : name not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v3, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    iget v3, v3, Lnbisdk/xr;->ay:I

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    iget-object v3, v3, Lnbisdk/xr;->Dq:[Ljava/lang/String;

    aget-object v0, v3, v0

    if-eqz v0, :cond_a

    sget-object v3, Lnbisdk/tr;->cl:Ljava/lang/String;

    if-eqz v3, :cond_a

    sget-object v3, Lnbisdk/tr;->cl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_f

    invoke-static {v0}, Lnbisdk/jf;->ax(Ljava/lang/String;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :goto_2
    :try_start_4
    sget-boolean v1, Lnbisdk/me;->sD:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;

    invoke-virtual {v1}, Lnbisdk/jf;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;
    :try_end_4
    .catch Lnbisdk/lw; {:try_start_4 .. :try_end_4} :catch_0

    :cond_b
    iget-object v1, p0, Lnbisdk/tr;->BL:Lnbisdk/g;

    invoke-virtual {v1}, Lnbisdk/g;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lnbisdk/ub;->cJ:I

    iput v1, p0, Lnbisdk/tr;->bE:I

    iput-object v0, p0, Lnbisdk/tr;->yU:[B

    goto/16 :goto_0

    :cond_c
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnbisdk/tr;->cl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnbisdk/tr;->ax:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid nim store : null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;

    iget v1, p1, Lnbisdk/ub;->cJ:I

    invoke-virtual {v0, v1}, Lnbisdk/jf;->aA(I)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_2

    :cond_f
    move-object v0, v1

    goto :goto_2
.end method

.method private declared-synchronized aA(Ljava/lang/String;)[B
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lnbisdk/tr;->bv(Ljava/lang/String;)Lnbisdk/ub;

    move-result-object v2

    invoke-direct {p0, v2}, Lnbisdk/tr;->a(Lnbisdk/ub;)[B

    move-result-object v0

    iget v1, v2, Lnbisdk/ub;->ay:I

    if-nez v1, :cond_0

    iget v1, v2, Lnbisdk/ub;->bx:I

    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v1, v2, Lnbisdk/ub;->bx:I

    new-array v1, v1, [B

    iget v3, v2, Lnbisdk/ub;->ay:I

    const/4 v4, 0x0

    iget v2, v2, Lnbisdk/ub;->bx:I

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4000

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized au()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method static synthetic b(Lnbisdk/tr;)J
    .locals 2

    iget-object v0, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    iget-wide v0, v0, Lnbisdk/xr;->bp:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized bv(Ljava/lang/String;)Lnbisdk/ub;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/dv;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/tr;->au()Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/tr;->BJ:Lnbisdk/tr$a;

    iget-object v0, v0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/tr;->BJ:Lnbisdk/tr$a;

    iget-object v0, v0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ub;

    iget-object v2, v0, Lnbisdk/ub;->ax:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lnbisdk/dv;

    invoke-direct {v0, p1}, Lnbisdk/dv;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lnbisdk/tr;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/tr;->BO:Z

    return v0
.end method

.method static synthetic d(Lnbisdk/tr;)Lnbisdk/jf;
    .locals 1

    iget-object v0, p0, Lnbisdk/tr;->BK:Lnbisdk/jf;

    return-object v0
.end method

.method static synthetic e(Lnbisdk/tr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/tr;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lnbisdk/tr;)Lnbisdk/xr;
    .locals 1

    iget-object v0, p0, Lnbisdk/tr;->BQ:Lnbisdk/xr;

    return-object v0
.end method

.method private ou()Lnbisdk/jf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/tr;->L:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/jf;->b(Ljava/lang/String;Z)Lnbisdk/jf;

    move-result-object v0

    return-object v0
.end method

.method private t([B)Lnbisdk/ql;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/dv;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnbisdk/tr;->BM:Lnbisdk/yn;

    new-instance v1, Lnbisdk/hh;

    invoke-direct {v1, p1}, Lnbisdk/hh;-><init>([B)V

    invoke-static {v0, v1}, Lnbisdk/wk;->a(Lnbisdk/yn;Lnbisdk/wa;)Lnbisdk/ql;
    :try_end_0
    .catch Lnbisdk/kt; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnbisdk/tv; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lnbisdk/dv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TPS stream error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/dv;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lnbisdk/dv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TPS unpack error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/dv;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final aU(Ljava/lang/String;)Lnbisdk/lm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/dv;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnbisdk/tr;->BN:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/tr;->BN:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    move-object v1, v0

    :goto_0
    sget-boolean v0, Lnbisdk/me;->sD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/tr;->BL:Lnbisdk/g;

    invoke-virtual {v0}, Lnbisdk/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tr;->BN:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lnbisdk/tr;->BL:Lnbisdk/g;

    invoke-virtual {v0}, Lnbisdk/g;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/tr;->BL:Lnbisdk/g;

    invoke-virtual {v0}, Lnbisdk/g;->getEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Lnbisdk/qt;

    invoke-direct {v2, v1, v0}, Lnbisdk/qt;-><init>(Lnbisdk/ql;Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lnbisdk/tr;->BL:Lnbisdk/g;

    invoke-virtual {v0}, Lnbisdk/g;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/tr;->BL:Lnbisdk/g;

    invoke-virtual {v0}, Lnbisdk/g;->getData()[B

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lnbisdk/tr;->t([B)Lnbisdk/ql;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lnbisdk/tr;->aA(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mY()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lnbisdk/dv;

    const-string v1, "Not a config fileset"

    invoke-direct {v0, v1}, Lnbisdk/dv;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final aq()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/tr;->BJ:Lnbisdk/tr$a;

    iget-boolean v0, v0, Lnbisdk/tr$a;->O:Z

    return v0
.end method
