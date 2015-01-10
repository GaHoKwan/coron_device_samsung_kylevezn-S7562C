.class public final Lnbisdk/yd;
.super Ljava/lang/Object;


# instance fields
.field private DK:Ljava/util/Vector;

.field private O:Z

.field private aG:J

.field private ay:I

.field private bp:J

.field private eM:Z

.field private mI:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/yd;->DK:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final Z(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/yd;->O:Z

    return-void
.end method

.method public final aa(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/yd;->eM:Z

    return-void
.end method

.method public final ab(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/yd;->mI:Z

    return-void
.end method

.method public final bY(I)V
    .locals 0

    iput p1, p0, Lnbisdk/yd;->ay:I

    return-void
.end method

.method public final bZ(I)Lnbisdk/vl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/yd;->DK:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/yd;->aG:J

    return-wide v0
.end method

.method public final getPerformanceDetailsCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/yd;->DK:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/yd;->bp:J

    return-wide v0
.end method

.method public final getUtcOffset()I
    .locals 1

    iget v0, p0, Lnbisdk/yd;->ay:I

    return v0
.end method

.method public final h(Lnbisdk/vl;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/yd;->DK:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final isAllDay()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/yd;->O:Z

    return v0
.end method

.method public final isIndeterminateTime()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/yd;->eM:Z

    return v0
.end method

.method public final k(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/yd;->aG:J

    return-void
.end method

.method public final oR()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/yd;->mI:Z

    return v0
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/yd;->bp:J

    return-void
.end method
