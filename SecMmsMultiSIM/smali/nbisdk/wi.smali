.class public final Lnbisdk/wi;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/sg;


# instance fields
.field private Bu:Lnbisdk/jf;

.field private Bv:Lnbisdk/dn;

.field private Bw:Lnbisdk/fy;

.field private fn:Lnbisdk/ir;


# direct methods
.method public constructor <init>(ILnbisdk/jf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x4000000

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    iput-object p2, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    new-instance v0, Lnbisdk/dn;

    invoke-direct {v0, p1}, Lnbisdk/dn;-><init>(I)V

    iput-object v0, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/wi;->Bw:Lnbisdk/fy;

    invoke-direct {p0}, Lnbisdk/wi;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/jf;->b(Lnbisdk/fz;)Lnbisdk/ch;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Lnbisdk/ch;->cK()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lnbisdk/ch;->cJ()I

    move-result v1

    iget-object v2, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    invoke-virtual {v2, v1}, Lnbisdk/jf;->aA(I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    invoke-static {v2}, Lnbisdk/up;->r([B)Lnbisdk/jd;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v2, v2, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lnbisdk/dn;->b(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    const-string v2, "DBCache cannot be initizled"

    invoke-virtual {v1, v2}, Lnbisdk/ir;->aq(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    invoke-virtual {v0}, Lnbisdk/jf;->am()I

    move-result v1

    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    invoke-virtual {v2, v0}, Lnbisdk/jf;->aA(I)[B

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    invoke-static {v2}, Lnbisdk/up;->r([B)Lnbisdk/jd;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    const/4 v4, 0x0

    iget-object v2, v2, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lnbisdk/dn;->b(ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    invoke-virtual {v0}, Lnbisdk/jf;->b()V

    iget-object v0, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v1, v0, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v1}, Lnbisdk/do;->P()V

    iget-object v0, v0, Lnbisdk/dn;->zR:Lnbisdk/dn$a;

    iget-object v0, v0, Lnbisdk/dn$a;->fU:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v1, v1, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v1}, Lnbisdk/do;->eu()I

    move-result v1

    iput v1, v0, Lnbisdk/rp;->wS:I

    :cond_1
    return-void
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    invoke-virtual {v0}, Lnbisdk/jf;->a()V

    return-void
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lnbisdk/jd;)V
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    sget-boolean v1, Lnbisdk/me;->sC:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DBCache.put: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lnbisdk/up;->b(Lnbisdk/jd;)[B

    move-result-object v2

    iget-object v1, p1, Lnbisdk/jd;->fx:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v3, p1, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lnbisdk/dn;->bm(Ljava/lang/String;)Lnbisdk/dn$b;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v1, v1, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v1}, Lnbisdk/do;->aq()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v3, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    const/4 v1, 0x0

    iget-object v4, v3, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v4}, Lnbisdk/do;->ar()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, v3, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v1}, Lnbisdk/do;->ew()Lnbisdk/dn$b;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v3, v1, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v3}, Lnbisdk/do;->ar()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v3}, Lnbisdk/do;->ev()Lnbisdk/dn$b;

    move-result-object v3

    iget-object v1, v1, Lnbisdk/dn;->zR:Lnbisdk/dn$a;

    invoke-virtual {v3}, Lnbisdk/dn$b;->bS()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lnbisdk/dn$a;->fU:Ljava/util/Hashtable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lnbisdk/dn$b;->fj()I

    move-result v1

    :goto_1
    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnbisdk/jf;->a(I[BIIZ)V

    iget-object v0, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v2, p1, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnbisdk/dn;->b(ILjava/lang/String;)Z

    :cond_4
    :goto_2
    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    :cond_5
    invoke-static {}, Lnbisdk/rp;->mk()Lnbisdk/rp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v1, v1, Lnbisdk/dn;->zQ:Lnbisdk/do;

    invoke-virtual {v1}, Lnbisdk/do;->eu()I

    move-result v1

    iput v1, v0, Lnbisdk/rp;->wS:I
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_4

    :try_start_1
    iget-object v0, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    const/4 v1, 0x0

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lnbisdk/jf;->a([BIIZ)I

    move-result v0

    iget-object v1, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    iget-object v2, p1, Lnbisdk/jd;->N:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lnbisdk/dn;->b(ILjava/lang/String;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    invoke-virtual {v1}, Lnbisdk/dn$b;->fj()I

    move-result v1

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnbisdk/jf;->a(I[BIIZ)V
    :try_end_1
    .catch Lnbisdk/lw; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_1
.end method

.method public final as(Ljava/lang/String;)Lnbisdk/jd;
    .locals 5

    iget-object v0, p0, Lnbisdk/wi;->Bv:Lnbisdk/dn;

    invoke-virtual {v0, p1}, Lnbisdk/dn;->bm(Ljava/lang/String;)Lnbisdk/dn$b;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lnbisdk/wi;->Bu:Lnbisdk/jf;

    invoke-virtual {v1}, Lnbisdk/dn$b;->fj()I

    move-result v1

    invoke-virtual {v2, v1}, Lnbisdk/jf;->aA(I)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    sget-boolean v2, Lnbisdk/me;->sC:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBCache.get hit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lnbisdk/up;->r([B)Lnbisdk/jd;
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    sget-boolean v1, Lnbisdk/me;->sC:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/wi;->fn:Lnbisdk/ir;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DBCache.get miss: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
