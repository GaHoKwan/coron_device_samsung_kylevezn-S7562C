.class public final Lnbisdk/fe;
.super Lnbisdk/qg;


# instance fields
.field private iR:Lnbisdk/hj;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lnbisdk/qg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/tb;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/fe;->iR:Lnbisdk/hj;

    check-cast p1, Lnbisdk/hj;

    iget v1, p1, Lnbisdk/hj;->ml:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget v0, v0, Lnbisdk/hj;->progress:I

    iget v1, p1, Lnbisdk/hj;->progress:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Lnbisdk/hj;->mh:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnbisdk/hj;->clone()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Lnbisdk/hj;

    iput-object v0, p0, Lnbisdk/fe;->iR:Lnbisdk/hj;

    iget-object v0, p0, Lnbisdk/fe;->iR:Lnbisdk/hj;

    invoke-super {p0, v0}, Lnbisdk/qg;->a(Lnbisdk/tb;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method public final fY()Lnbisdk/tb;
    .locals 2

    iget-object v0, p0, Lnbisdk/fe;->iR:Lnbisdk/hj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fe;->iR:Lnbisdk/hj;

    iget v0, v0, Lnbisdk/hj;->ml:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/fe;->iR:Lnbisdk/hj;

    :cond_0
    invoke-super {p0}, Lnbisdk/qg;->fY()Lnbisdk/tb;

    move-result-object v0

    check-cast v0, Lnbisdk/hj;

    return-object v0
.end method
