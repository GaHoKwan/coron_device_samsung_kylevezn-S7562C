.class final Lnbisdk/ol;
.super Lnbisdk/kp$c;


# instance fields
.field private synthetic ux:Lnbisdk/kp;


# direct methods
.method constructor <init>(Lnbisdk/kp;Lnbisdk/ds;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-direct {p0, p1, p2}, Lnbisdk/kp$c;-><init>(Lnbisdk/kp;Lnbisdk/ds;)V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationProvider.cancelGetLocation()"

    const-string v1, ""

    invoke-static {v2, v0, v1}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/fb;->lO()Lnbisdk/ds;

    move-result-object v4

    iget-object v5, p0, Lnbisdk/kp$c;->aU:Lnbisdk/ds;

    if-ne v5, v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lnbisdk/fb;->cancel()Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v1}, Lnbisdk/kp;->c(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v1, v2

    :goto_2
    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ds;

    iget-object v4, p0, Lnbisdk/kp$c;->aU:Lnbisdk/ds;

    if-ne v4, v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->a(Lnbisdk/kp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    invoke-static {v0}, Lnbisdk/kp;->b(Lnbisdk/kp;)Lnbisdk/aw;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/aw;->cancel()Z

    iget-object v0, p0, Lnbisdk/ol;->ux:Lnbisdk/kp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/kp;->a(Lnbisdk/kp;Lnbisdk/aw;)Lnbisdk/aw;

    :cond_7
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const-string v1, "LocationProvider.cancelGetLocation()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnbisdk/ck;->a(BLjava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
