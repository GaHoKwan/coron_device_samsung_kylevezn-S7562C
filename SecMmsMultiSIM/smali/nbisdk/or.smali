.class final Lnbisdk/or;
.super Lnbisdk/rj;


# instance fields
.field private synthetic uz:Lnbisdk/gf;


# direct methods
.method constructor <init>(Lnbisdk/gf;Lnbisdk/ds;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-direct {p0, p2}, Lnbisdk/rj;-><init>(Lnbisdk/ds;)V

    return-void
.end method


# virtual methods
.method public final R(Z)Z
    .locals 2

    invoke-static {p1}, Lnbisdk/gf;->w(Z)Z

    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0}, Lnbisdk/gf;->d(Lnbisdk/gf;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    const/16 v1, 0x234b

    invoke-static {v0, v1}, Lnbisdk/gf;->a(Lnbisdk/gf;I)V

    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0}, Lnbisdk/gf;->e(Lnbisdk/gf;)Lnbisdk/nt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnbisdk/nt;->clear()V

    :cond_0
    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0}, Lnbisdk/gf;->d(Lnbisdk/gf;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Vector;Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0, p1}, Lnbisdk/gf;->a(Lnbisdk/gf;Ljava/util/Vector;)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0}, Lnbisdk/gf;->b(Lnbisdk/gf;)V

    :cond_0
    return-void
.end method

.method public final aZ(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0}, Lnbisdk/gf;->c(Lnbisdk/gf;)Lnbisdk/go;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0}, Lnbisdk/gf;->c(Lnbisdk/gf;)Lnbisdk/go;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/go;->b(Lnbisdk/nb;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/or;->uz:Lnbisdk/gf;

    invoke-static {v0}, Lnbisdk/gf;->b(Lnbisdk/gf;)V

    return-void
.end method
