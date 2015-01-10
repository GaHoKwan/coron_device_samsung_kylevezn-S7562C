.class public final Lnbisdk/uw;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/gd;


# instance fields
.field private N:Ljava/lang/String;

.field private cV:D

.field private cW:D

.field private ch:Ljava/lang/String;

.field private cz:D

.field private di:D

.field private hD:D

.field private kk:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnbisdk/ql;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/uw;->N:Ljava/lang/String;

    const-string v0, "origin-latitude"

    invoke-static {p2, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/uw;->di:D

    const-string v0, "origin-longitude"

    invoke-static {p2, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/uw;->kk:D

    const-string v0, "scale-factor"

    invoke-static {p2, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/uw;->hD:D

    const-string v0, "false-easting"

    invoke-static {p2, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/uw;->cV:D

    const-string v0, "false-northing"

    invoke-static {p2, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/uw;->cW:D

    const-string v0, "z-offset"

    invoke-static {p2, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/uw;->cz:D

    const-string v0, "datum"

    invoke-static {p2, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/uw;->ch:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lnbisdk/uw;

    if-eqz v1, :cond_0

    check-cast p1, Lnbisdk/uw;

    iget-object v1, p0, Lnbisdk/uw;->N:Ljava/lang/String;

    iget-object v2, p1, Lnbisdk/uw;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lnbisdk/uw;->di:D

    iget-wide v3, p1, Lnbisdk/uw;->di:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lnbisdk/uw;->kk:D

    iget-wide v3, p1, Lnbisdk/uw;->kk:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lnbisdk/uw;->hD:D

    iget-wide v3, p1, Lnbisdk/uw;->hD:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lnbisdk/uw;->cV:D

    iget-wide v3, p1, Lnbisdk/uw;->cV:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lnbisdk/uw;->cW:D

    iget-wide v3, p1, Lnbisdk/uw;->cW:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lnbisdk/uw;->cz:D

    iget-wide v3, p1, Lnbisdk/uw;->cz:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lnbisdk/uw;->ch:Ljava/lang/String;

    iget-object v2, p1, Lnbisdk/uw;->ch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final gp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/uw;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final gq()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/uw;->di:D

    return-wide v0
.end method

.method public final gr()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/uw;->kk:D

    return-wide v0
.end method

.method public final gs()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/uw;->hD:D

    return-wide v0
.end method

.method public final gt()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/uw;->cW:D

    return-wide v0
.end method

.method public final gu()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/uw;->cV:D

    return-wide v0
.end method

.method public final gv()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/uw;->cz:D

    return-wide v0
.end method

.method public final gw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/uw;->ch:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lnbisdk/uw;->di:D

    iget-wide v4, p0, Lnbisdk/uw;->kk:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnbisdk/uw;->hD:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnbisdk/uw;->cV:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnbisdk/uw;->cW:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lnbisdk/uw;->cz:D

    add-double/2addr v2, v4

    double-to-int v0, v2

    add-int/lit8 v2, v0, 0x19

    iget-object v0, p0, Lnbisdk/uw;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lnbisdk/uw;->ch:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/uw;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnbisdk/uw;->ch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnbisdk/uw;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " originLat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/uw;->di:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " originLon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/uw;->kk:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " scaleFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/uw;->hD:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " falseEasting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/uw;->cV:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " falseNorthing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/uw;->cW:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " zOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/uw;->cz:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " datum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/uw;->ch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
