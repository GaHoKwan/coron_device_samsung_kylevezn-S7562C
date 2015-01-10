.class public final Lnbisdk/rn;
.super Lnbisdk/yx;


# instance fields
.field private wM:Lnbisdk/bu;


# direct methods
.method public constructor <init>(Lnbisdk/bu;Lnbisdk/ap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/yx;-><init>(Lnbisdk/qa;Lnbisdk/ap;)V

    iput-object p1, p0, Lnbisdk/rn;->wM:Lnbisdk/bu;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ze;)V
    .locals 3

    new-instance v0, Lnbisdk/ze;

    const-string v1, "category-list-request"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v1, p0, Lnbisdk/rn;->wM:Lnbisdk/bu;

    invoke-virtual {v1}, Lnbisdk/bu;->bc()Lnbisdk/mi;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ir;->a(Lnbisdk/ze;Lnbisdk/mi;)V

    const-string v1, "broad-category-name"

    iget-object v2, p0, Lnbisdk/rn;->wM:Lnbisdk/bu;

    invoke-virtual {v2}, Lnbisdk/bu;->bZ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ir;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "category-name"

    iget-object v2, p0, Lnbisdk/rn;->wM:Lnbisdk/bu;

    invoke-virtual {v2}, Lnbisdk/bu;->ca()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ir;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
