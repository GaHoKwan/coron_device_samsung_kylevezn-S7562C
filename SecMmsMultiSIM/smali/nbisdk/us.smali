.class public final Lnbisdk/us;
.super Lnbisdk/aa;


# instance fields
.field private AA:Lnbisdk/uf;

.field private AB:Lnbisdk/xu;

.field private N:Ljava/lang/String;

.field private ay:I

.field private cT:I

.field private za:[B


# direct methods
.method constructor <init>(Lnbisdk/ak;Ljava/lang/String;II[BLnbisdk/uf;Lnbisdk/xu;)V
    .locals 0

    invoke-direct {p0, p1}, Lnbisdk/aa;-><init>(Lnbisdk/ak;)V

    iput-object p2, p0, Lnbisdk/us;->N:Ljava/lang/String;

    iput p3, p0, Lnbisdk/us;->cT:I

    iput p4, p0, Lnbisdk/us;->ay:I

    iput-object p5, p0, Lnbisdk/us;->za:[B

    iput-object p6, p0, Lnbisdk/us;->AA:Lnbisdk/uf;

    iput-object p7, p0, Lnbisdk/us;->AB:Lnbisdk/xu;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 2

    invoke-super {p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/us;->AB:Lnbisdk/xu;

    iget-object v1, p0, Lnbisdk/us;->AA:Lnbisdk/uf;

    invoke-interface {v0, v1}, Lnbisdk/xu;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 4

    const/16 v0, 0x64

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;I)V

    iget v1, p0, Lnbisdk/us;->cT:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lnbisdk/us;->ay:I

    div-int/2addr v1, v2

    iget v2, p0, Lnbisdk/us;->ay:I

    div-int v2, v0, v2

    div-int/lit8 v3, p2, 0x64

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lnbisdk/us;->AB:Lnbisdk/xu;

    iget-object v2, p0, Lnbisdk/us;->AA:Lnbisdk/uf;

    invoke-interface {v1, v0, v2}, Lnbisdk/xu;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    iget-object v0, p0, Lnbisdk/us;->AB:Lnbisdk/xu;

    iget-object v1, p0, Lnbisdk/us;->AA:Lnbisdk/uf;

    invoke-interface {v0, p2, v1}, Lnbisdk/xu;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/us;->za:[B

    iget-object v0, p0, Lnbisdk/us;->AA:Lnbisdk/uf;

    const-string v1, "log-id"

    invoke-static {p2, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/uf;->t(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 2

    const-string v0, "log-id"

    iget-object v1, p0, Lnbisdk/us;->N:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current"

    iget v1, p0, Lnbisdk/us;->cT:I

    invoke-static {p1, v0, v1}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v0, "total"

    iget v1, p0, Lnbisdk/us;->ay:I

    invoke-static {p1, v0, v1}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v0, "data"

    iget-object v1, p0, Lnbisdk/us;->za:[B

    invoke-virtual {p1, v0, v1}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-void
.end method

.method public final ah()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/ag;->bo:Lnbisdk/ak;

    invoke-interface {v0, p0}, Lnbisdk/ak;->b(Lnbisdk/ag;)Z

    move-result v0

    return v0
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "qalog-upload"

    return-object v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 2

    invoke-super {p0, p1}, Lnbisdk/aa;->d(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/us;->AB:Lnbisdk/xu;

    iget-object v1, p0, Lnbisdk/us;->AA:Lnbisdk/uf;

    invoke-interface {v0, v1}, Lnbisdk/xu;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method
