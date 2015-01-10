.class public final Lnbisdk/tm;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ap;
.implements Lnbisdk/dl;


# static fields
.field private static yq:Lnbisdk/qk;

.field private static yr:Lnbisdk/qk;

.field private static ys:Lnbisdk/qk;

.field private static yt:Lnbisdk/qk;

.field private static yu:Lnbisdk/qk;


# instance fields
.field private yv:Lnbisdk/yy;

.field private yw:Lnbisdk/zm;

.field private yx:Lcom/navbuilder/nb/NBException;


# direct methods
.method public constructor <init>(Lnbisdk/zm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/tm;->yw:Lnbisdk/zm;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->na()Lnbisdk/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/y;->a(Lnbisdk/dl;)V

    sget-object v0, Lnbisdk/tm;->ys:Lnbisdk/qk;

    if-eqz v0, :cond_1

    sget-object v0, Lnbisdk/tm;->yt:Lnbisdk/qk;

    if-eqz v0, :cond_1

    sget-object v0, Lnbisdk/tm;->yu:Lnbisdk/qk;

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lnbisdk/tm;->O()V

    :cond_2
    return-void
.end method

.method private O()V
    .locals 1

    iget-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    :cond_0
    new-instance v0, Lnbisdk/yy;

    invoke-direct {v0, p0}, Lnbisdk/yy;-><init>(Lnbisdk/tm;)V

    iput-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    iget-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method static mI()Lnbisdk/qk;
    .locals 1

    sget-object v0, Lnbisdk/tm;->ys:Lnbisdk/qk;

    return-object v0
.end method

.method static mJ()Lnbisdk/qk;
    .locals 1

    sget-object v0, Lnbisdk/tm;->yq:Lnbisdk/qk;

    return-object v0
.end method

.method static mK()Lnbisdk/qk;
    .locals 1

    sget-object v0, Lnbisdk/tm;->yr:Lnbisdk/qk;

    return-object v0
.end method

.method static mL()Lnbisdk/qk;
    .locals 1

    sget-object v0, Lnbisdk/tm;->yt:Lnbisdk/qk;

    return-object v0
.end method

.method static mM()Lnbisdk/qk;
    .locals 1

    sget-object v0, Lnbisdk/tm;->yu:Lnbisdk/qk;

    return-object v0
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 0

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    iput-object p2, p0, Lnbisdk/tm;->yx:Lcom/navbuilder/nb/NBException;

    const-wide/32 v0, 0x10000000

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    return-void
.end method

.method public final af()V
    .locals 0

    return-void
.end method

.method public final ag()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/tm;->O()V

    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/tm;->yv:Lnbisdk/yy;

    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/16 v1, 0x1005

    const-string v2, "Map tile source url timeout"

    invoke-direct {v0, v1, v2}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lnbisdk/tm;->yx:Lcom/navbuilder/nb/NBException;

    const-string v0, "Timeout when requesting tile map url"

    const-wide/32 v1, 0x10000000

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    return-void
.end method

.method final e(Lnbisdk/qk;)V
    .locals 2

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base_map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p1, Lnbisdk/tm;->ys:Lnbisdk/qk;

    iget-object v0, p0, Lnbisdk/tm;->yw:Lnbisdk/zm;

    invoke-interface {v0, p1}, Lnbisdk/zm;->e(Lnbisdk/qk;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lnbisdk/tm;->ys:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ck;->a(BLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object p1, Lnbisdk/tm;->yt:Lnbisdk/qk;

    iget-object v0, p0, Lnbisdk/tm;->yw:Lnbisdk/zm;

    invoke-interface {v0, p1}, Lnbisdk/zm;->f(Lnbisdk/qk;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sget-object v1, Lnbisdk/tm;->yt:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ck;->a(BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "traffic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-object p1, Lnbisdk/tm;->yu:Lnbisdk/qk;

    iget-object v0, p0, Lnbisdk/tm;->yw:Lnbisdk/zm;

    invoke-interface {v0, p1}, Lnbisdk/zm;->g(Lnbisdk/qk;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lnbisdk/tm;->yu:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ck;->a(BLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "satellite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-object p1, Lnbisdk/tm;->yq:Lnbisdk/qk;

    iget-object v0, p0, Lnbisdk/tm;->yw:Lnbisdk/zm;

    invoke-interface {v0, p1}, Lnbisdk/zm;->e(Lnbisdk/qk;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hybrid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p1, Lnbisdk/tm;->yr:Lnbisdk/qk;

    iget-object v0, p0, Lnbisdk/tm;->yw:Lnbisdk/zm;

    invoke-interface {v0, p1}, Lnbisdk/zm;->e(Lnbisdk/qk;)V

    goto :goto_0
.end method

.method final mN()Lcom/navbuilder/nb/NBException;
    .locals 1

    iget-object v0, p0, Lnbisdk/tm;->yx:Lcom/navbuilder/nb/NBException;

    return-object v0
.end method
