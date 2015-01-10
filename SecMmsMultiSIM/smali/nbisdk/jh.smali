.class public final Lnbisdk/jh;
.super Lnbisdk/de;


# instance fields
.field private Z:Z

.field private bF:J

.field private bx:I

.field private cB:I

.field private cK:J

.field private cT:I

.field private cY:D

.field private cg:Ljava/lang/String;

.field private ch:Ljava/lang/String;

.field private da:I

.field private hG:D

.field private iq:I

.field private la:J

.field private mr:J

.field private or:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/de;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/jh;->or:Z

    return-void
.end method


# virtual methods
.method public final D(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/jh;->Z:Z

    return-void
.end method

.method public final aB(I)V
    .locals 0

    iput p1, p0, Lnbisdk/jh;->bx:I

    return-void
.end method

.method public final aC(I)V
    .locals 0

    iput p1, p0, Lnbisdk/jh;->da:I

    return-void
.end method

.method public final aD(I)V
    .locals 0

    iput p1, p0, Lnbisdk/jh;->cB:I

    return-void
.end method

.method public final aE(I)V
    .locals 0

    iput p1, p0, Lnbisdk/jh;->iq:I

    return-void
.end method

.method public final az(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/jh;->cg:Ljava/lang/String;

    return-void
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jh;->ch:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/jh;->bF:J

    return-wide v0
.end method

.method public final getEntryTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/jh;->mr:J

    return-wide v0
.end method

.method public final getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jh;->cg:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeverity()I
    .locals 1

    iget v0, p0, Lnbisdk/jh;->bx:I

    return v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/jh;->cK:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lnbisdk/jh;->cT:I

    return v0
.end method

.method public final ip()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/jh;->hG:D

    return-wide v0
.end method

.method public final k(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jh;->bF:J

    return-void
.end method

.method public final l(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jh;->mr:J

    return-void
.end method

.method public final m(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jh;->hG:D

    return-void
.end method

.method public final m(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jh;->la:J

    return-void
.end method

.method public final n(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jh;->cY:D

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/jh;->ch:Ljava/lang/String;

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jh;->cK:J

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lnbisdk/jh;->cT:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Incident: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/jh;->cg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/jh;->ch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/jh;->bx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/jh;->cY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/jh;->da:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
