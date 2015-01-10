.class public final Lnbisdk/gs;
.super Ljava/lang/Object;


# instance fields
.field private final cW:D

.field private final cg:Ljava/lang/String;

.field private final ch:Ljava/lang/String;

.field private final da:I

.field private final iq:I

.field private final pO:D

.field private final pQ:D


# direct methods
.method public constructor <init>(Lnbisdk/ql;Lnbisdk/hg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "speed-limit"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/gs;->cW:D

    const-string v0, "sign-id"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gs;->cg:Ljava/lang/String;

    const-string v0, "sign-id-highlighted"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gs;->ch:Ljava/lang/String;

    const-string v0, "version"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "version-highlighted"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "dataset-id"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "start-maneuver-index"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnbisdk/gs;->da:I

    const-string v0, "start-maneuver-offset"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/gs;->pO:D

    const-string v0, "end-maneuver-index"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnbisdk/gs;->iq:I

    const-string v0, "end-maneuver-offset"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/gs;->pQ:D

    const-string v0, "special-speed-zone"

    invoke-virtual {p1, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnbisdk/gs$a;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-direct {v1, v0}, Lnbisdk/gs$a;-><init>(Lnbisdk/ql;)V

    :cond_0
    iget v0, p0, Lnbisdk/gs;->da:I

    invoke-interface {p2, v0}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    iget v0, p0, Lnbisdk/gs;->da:I

    :goto_0
    iget v1, p0, Lnbisdk/gs;->iq:I

    if-gt v0, v1, :cond_4

    iget v1, p0, Lnbisdk/gs;->da:I

    if-eq v0, v1, :cond_2

    iget v1, p0, Lnbisdk/gs;->iq:I

    if-eq v0, v1, :cond_2

    invoke-interface {p2, v0}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lnbisdk/gs;->da:I

    if-ne v0, v1, :cond_3

    iget v1, p0, Lnbisdk/gs;->iq:I

    if-eq v0, v1, :cond_1

    :cond_3
    iget v1, p0, Lnbisdk/gs;->da:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lnbisdk/gs;->da:I

    invoke-interface {p2, v1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    goto :goto_1

    :cond_4
    new-instance v0, Lnbisdk/gr;

    invoke-direct {v0}, Lnbisdk/gr;-><init>()V

    new-instance v0, Lnbisdk/gr;

    invoke-direct {v0}, Lnbisdk/gr;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SpeedLimitRegion [Speed Limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/gs;->cW:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "signId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/gs;->cg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "signIdHighlighted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/gs;->ch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "startManIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lnbisdk/gs;->da:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "startManOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/gs;->pO:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "endManIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lnbisdk/gs;->iq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "endManOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/gs;->pQ:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
