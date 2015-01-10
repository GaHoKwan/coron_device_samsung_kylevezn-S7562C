.class public Lnbisdk/bb;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private cu:Lnbisdk/is;

.field private cv:Lnbisdk/rx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/rj;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/bb;->L:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mU()Lcom/navbuilder/nb/e;

    move-result-object v0

    iput-object p2, p0, Lnbisdk/bb;->L:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lnbisdk/xi;

    invoke-direct {v0, p1}, Lnbisdk/xi;-><init>(Lnbisdk/rj;)V

    iput-object v0, p0, Lnbisdk/bb;->cu:Lnbisdk/is;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lnbisdk/cw;

    invoke-direct {v0, p1, p2}, Lnbisdk/cw;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lnbisdk/bb;->a(Lnbisdk/qh;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/cw;

    invoke-direct {v0, p1, p2}, Lnbisdk/cw;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lnbisdk/ck;->a(Lnbisdk/xg;)V

    :cond_0
    return-void
.end method

.method public a(Lnbisdk/qh;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    if-nez v0, :cond_1

    new-instance v0, Lnbisdk/rx;

    invoke-direct {v0, p1}, Lnbisdk/rx;-><init>(Lnbisdk/qh;)V

    iput-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    invoke-virtual {v0, v1}, Lnbisdk/rx;->U(Z)V

    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    invoke-virtual {v0, v1}, Lnbisdk/rx;->W(Z)V

    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    invoke-virtual {v0, v1}, Lnbisdk/rx;->V(Z)V

    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    iget-object v1, p0, Lnbisdk/bb;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/rx;->be(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    invoke-virtual {v0, p1}, Lnbisdk/rx;->d(Lnbisdk/qh;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Vector;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lnbisdk/rx;

    invoke-direct {v0}, Lnbisdk/rx;-><init>()V

    iput-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/na;

    iget-object v2, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    invoke-virtual {v2, v0}, Lnbisdk/rx;->a(Lnbisdk/na;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/rx;->U(Z)V

    :cond_1
    return-void
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/bb;->cu:Lnbisdk/is;

    invoke-virtual {v0}, Lnbisdk/is;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lnbisdk/bb;->cu:Lnbisdk/is;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bb;->cu:Lnbisdk/is;

    iget-object v1, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    invoke-virtual {v0, v1}, Lnbisdk/is;->b(Lnbisdk/rx;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bb;->cv:Lnbisdk/rx;

    invoke-static {v0}, Lnbisdk/ck;->a(Lnbisdk/rx;)V

    :cond_0
    return-void
.end method
