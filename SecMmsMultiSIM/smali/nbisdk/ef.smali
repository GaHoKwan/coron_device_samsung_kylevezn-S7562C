.class public Lnbisdk/ef;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/dz;


# instance fields
.field private gP:Landroid/content/Context;

.field private gQ:Lnbisdk/nd;

.field private gR:Lnbisdk/kd;

.field private gS:Lnbisdk/ft;

.field private gT:Lnbisdk/fh;

.field private gU:Lnbisdk/pp;

.field private gV:Lnbisdk/rk;

.field private gW:Lnbisdk/jm;

.field private gX:Lnbisdk/dc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    new-instance v0, Lnbisdk/kd;

    iget-object v1, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnbisdk/kd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnbisdk/ef;->gR:Lnbisdk/kd;

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/mk;->h(Landroid/content/Context;)Lnbisdk/mk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ef;->gQ:Lnbisdk/nd;

    new-instance v0, Lnbisdk/hb;

    iget-object v1, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnbisdk/hb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnbisdk/ef;->gS:Lnbisdk/ft;

    new-instance v0, Lnbisdk/ow;

    invoke-direct {v0}, Lnbisdk/ow;-><init>()V

    iput-object v0, p0, Lnbisdk/ef;->gT:Lnbisdk/fh;

    new-instance v0, Lnbisdk/pp;

    invoke-direct {v0}, Lnbisdk/pp;-><init>()V

    iput-object v0, p0, Lnbisdk/ef;->gU:Lnbisdk/pp;

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/az;->a(Landroid/content/Context;)Lnbisdk/az;

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/lu;->g(Landroid/content/Context;)Lnbisdk/lu;

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/eg;->c(Landroid/content/Context;)Lnbisdk/eg;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ef;->gW:Lnbisdk/jm;

    new-instance v0, Lnbisdk/wv;

    iget-object v1, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnbisdk/wv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnbisdk/ef;->gV:Lnbisdk/rk;

    new-instance v0, Lnbisdk/pm;

    invoke-direct {v0}, Lnbisdk/pm;-><init>()V

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/ne;->i(Landroid/content/Context;)Lnbisdk/ne;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ef;->gX:Lnbisdk/dc;

    return-void
.end method

.method public static a(Lnbisdk/ih;)Lnbisdk/ze;
    .locals 4

    const-string v0, "start"

    invoke-virtual {p0}, Lnbisdk/ih;->dW()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v0, "next"

    :cond_0
    :goto_0
    new-instance v1, Lnbisdk/ze;

    const-string v2, "iter-command"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "command"

    invoke-static {v1, v2, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {p0}, Lnbisdk/ih;->dU()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v0, "state"

    invoke-virtual {p0}, Lnbisdk/ih;->hV()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lnbisdk/ih;->dW()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v0, "prev"

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lnbisdk/nv;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnbisdk/nv;-><init>(Ljava/io/InputStream;Z)V

    return-object v0
.end method

.method public final a(Lnbisdk/iv;)Lnbisdk/ft;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gS:Lnbisdk/ft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ef;->gS:Lnbisdk/ft;

    invoke-interface {v0, p1}, Lnbisdk/ft;->b(Lnbisdk/iv;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/ef;->gS:Lnbisdk/ft;

    return-object v0
.end method

.method public a(Lnbisdk/pk;)Lnbisdk/kc;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final eF()Lnbisdk/kd;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gR:Lnbisdk/kd;

    return-object v0
.end method

.method public final eG()Lnbisdk/nd;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gQ:Lnbisdk/nd;

    return-object v0
.end method

.method public final eH()Lnbisdk/dc;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gX:Lnbisdk/dc;

    return-object v0
.end method

.method public final eI()Lnbisdk/fh;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gT:Lnbisdk/fh;

    return-object v0
.end method

.method public final eJ()Lnbisdk/pp;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gU:Lnbisdk/pp;

    return-object v0
.end method

.method public final eK()Lnbisdk/qq;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/lu;->g(Landroid/content/Context;)Lnbisdk/lu;

    move-result-object v0

    return-object v0
.end method

.method public eL()Lnbisdk/hv;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/az;->a(Landroid/content/Context;)Lnbisdk/az;

    move-result-object v0

    return-object v0
.end method

.method public eM()Lnbisdk/rk;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gV:Lnbisdk/rk;

    return-object v0
.end method

.method public eN()Lnbisdk/ph;
    .locals 1

    new-instance v0, Lnbisdk/gf;

    invoke-direct {v0}, Lnbisdk/gf;-><init>()V

    return-object v0
.end method

.method public final eO()Lnbisdk/nt;
    .locals 2

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    const-string v1, "LocCache"

    invoke-static {v0, v1}, Lnbisdk/iw;->c(Landroid/content/Context;Ljava/lang/String;)Lnbisdk/iw;

    move-result-object v0

    return-object v0
.end method

.method public final eP()Lnbisdk/jm;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gW:Lnbisdk/jm;

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnbisdk/ef;->gP:Landroid/content/Context;

    return-object v0
.end method
