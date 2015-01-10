.class public final Lnbisdk/bs;
.super Ljava/lang/Object;


# instance fields
.field private M:Ljava/lang/String;

.field private Z:Z

.field private cA:D

.field private cV:D

.field private cW:D

.field private cX:D

.field private cY:D

.field private cZ:I

.field private cg:Ljava/lang/String;

.field private da:I

.field private db:Z

.field private dc:I

.field private dd:D

.field private de:J


# direct methods
.method public constructor <init>(Lnbisdk/ql;DI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/bs;->cg:Ljava/lang/String;

    iput-boolean v1, p0, Lnbisdk/bs;->Z:Z

    iput-boolean v1, p0, Lnbisdk/bs;->db:Z

    const-string v0, "location"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/bs;->M:Ljava/lang/String;

    const-string v0, "length"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/bs;->cV:D

    const-string v0, "start"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/bs;->cW:D

    iget-wide v0, p0, Lnbisdk/bs;->cW:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lnbisdk/bs;->dd:D

    iput p4, p0, Lnbisdk/bs;->dc:I

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 4

    iget-wide v0, p0, Lnbisdk/bs;->cA:D

    iget-wide v2, p0, Lnbisdk/bs;->cX:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lnbisdk/bs;->cX:D

    iput-wide v0, p0, Lnbisdk/bs;->cA:D

    :cond_0
    return-void
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/bs;->cX:D

    return-void
.end method

.method public final b(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/bs;->cA:D

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/bs;->de:J

    return-void
.end method

.method public final bR()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/bs;->cX:D

    return-wide v0
.end method

.method public final bS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bs;->cg:Ljava/lang/String;

    return-object v0
.end method

.method public final bT()D
    .locals 4

    iget-wide v0, p0, Lnbisdk/bs;->cA:D

    iget-wide v2, p0, Lnbisdk/bs;->cX:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lnbisdk/bs;->cA:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lnbisdk/bs;->cX:D

    goto :goto_0
.end method

.method public final bU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bs;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final bV()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/bs;->dd:D

    return-wide v0
.end method

.method public final bW()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/bs;->Z:Z

    return v0
.end method

.method public final bX()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/bs;->db:Z

    return v0
.end method

.method public final bY()B
    .locals 2

    iget-object v0, p0, Lnbisdk/bs;->cg:Ljava/lang/String;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/bs;->cg:Ljava/lang/String;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bh()I
    .locals 1

    iget v0, p0, Lnbisdk/bs;->da:I

    return v0
.end method

.method public final c(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/bs;->cY:D

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/bs;->Z:Z

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/bs;->db:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnbisdk/bs;

    if-eqz v0, :cond_0

    check-cast p1, Lnbisdk/bs;

    iget-object v0, p0, Lnbisdk/bs;->M:Ljava/lang/String;

    iget-object v1, p1, Lnbisdk/bs;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLength()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/bs;->cV:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lnbisdk/bs;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lnbisdk/bs;->cZ:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lnbisdk/bs;->da:I

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bs;->cg:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Traffic Region "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/bs;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/bs;->dc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lnbisdk/bs;->Z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lnbisdk/bs;->db:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bs;->cV:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bs;->cY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bs;->cW:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bs;->dd:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/bs;->cg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bs;->cX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/bs;->cA:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/bs;->cZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/bs;->da:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lnbisdk/bs;->de:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/bs;->cW:D

    return-wide v0
.end method
