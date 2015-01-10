.class public final Lnbisdk/bg;
.super Ljava/lang/Object;


# instance fields
.field private cA:D

.field private cB:I

.field private cC:I

.field private cD:J

.field private ce:Ljava/lang/String;

.field private cf:Ljava/lang/String;

.field private cz:D


# direct methods
.method public constructor <init>(Lnbisdk/ql;IIJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnbisdk/bg;->cB:I

    iput p3, p0, Lnbisdk/bg;->cC:I

    iput-wide p4, p0, Lnbisdk/bg;->cD:J

    const-string v0, "location"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/bg;->ce:Ljava/lang/String;

    const-string v0, "color"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/bg;->cf:Ljava/lang/String;

    const-string v0, "speed"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/bg;->cz:D

    const-string v0, "free-flow-speed"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/bg;->cA:D

    return-void
.end method


# virtual methods
.method public final ai()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lnbisdk/bg;->cB:I

    if-nez v0, :cond_0

    const-string v0, "old "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lnbisdk/bg;->cC:I

    if-nez v0, :cond_1

    const-string v0, "historical "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "new "

    goto :goto_0

    :cond_1
    const-string v0, "realtime"

    goto :goto_1
.end method

.method public final am()I
    .locals 1

    iget v0, p0, Lnbisdk/bg;->cC:I

    return v0
.end method

.method public final bd()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/bg;->cD:J

    return-wide v0
.end method

.method public final be()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/bg;->cz:D

    return-wide v0
.end method

.method public final bf()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/bg;->cA:D

    return-wide v0
.end method

.method public final bg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bg;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final bh()I
    .locals 1

    iget v0, p0, Lnbisdk/bg;->cB:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bg;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnbisdk/bg;->ce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/bg;->cf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bg;->cz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bg;->cA:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/bg;->cB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/bg;->cC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
