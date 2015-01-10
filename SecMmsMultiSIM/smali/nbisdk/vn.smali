.class public final Lnbisdk/vn;
.super Lnbisdk/aa;


# instance fields
.field private Bb:Lnbisdk/h;

.field private Bc:Lnbisdk/vx;

.field private wY:Lnbisdk/mu;


# direct methods
.method public constructor <init>(Lnbisdk/h;Lnbisdk/vx;Lnbisdk/mu;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aa;-><init>()V

    iput-object p1, p0, Lnbisdk/vn;->Bb:Lnbisdk/h;

    iput-object p2, p0, Lnbisdk/vn;->Bc:Lnbisdk/vx;

    iput-object p3, p0, Lnbisdk/vn;->wY:Lnbisdk/mu;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/vn;->Bc:Lnbisdk/vx;

    invoke-virtual {v0, p1}, Lnbisdk/vx;->a(Lnbisdk/ag;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/vn;->Bc:Lnbisdk/vx;

    invoke-virtual {v0, p1, p2}, Lnbisdk/vx;->a(Lnbisdk/ag;I)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/vn;->Bc:Lnbisdk/vx;

    invoke-virtual {v0, p1, p2}, Lnbisdk/vx;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/vn;->Bc:Lnbisdk/vx;

    invoke-virtual {v0, p2}, Lnbisdk/vx;->b(Lnbisdk/ql;)V

    iget-object v0, p0, Lnbisdk/vn;->Bc:Lnbisdk/vx;

    invoke-virtual {v0, p1, p2}, Lnbisdk/vx;->a(Lnbisdk/ag;Lnbisdk/ql;)V

    return-void
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/vn;->Bb:Lnbisdk/h;

    iget-object v1, p0, Lnbisdk/vn;->wY:Lnbisdk/mu;

    invoke-static {v0, p1, v1}, Lnbisdk/qx;->a(Lnbisdk/h;Lnbisdk/ze;Lnbisdk/mu;)V

    return-void
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "nav"

    return-object v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/vn;->Bc:Lnbisdk/vx;

    invoke-virtual {v0, p1}, Lnbisdk/vx;->d(Lnbisdk/ag;)V

    return-void
.end method
