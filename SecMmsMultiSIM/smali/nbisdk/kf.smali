.class public final Lnbisdk/kf;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/se;


# instance fields
.field private ay:I

.field private cV:D

.field private cW:D

.field private cZ:I

.field private cz:D

.field private eJ:Z

.field private hD:D

.field private jy:Z

.field private pL:J

.field private pM:J

.field private pN:D

.field private pO:D

.field private pP:D

.field private pQ:D

.field private pR:[B


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const-wide v2, -0x3f70c80000000000L

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lnbisdk/kf;->hD:D

    iput-boolean v4, p0, Lnbisdk/kf;->eJ:Z

    iput-boolean v4, p0, Lnbisdk/kf;->jy:Z

    iput v4, p0, Lnbisdk/kf;->ay:I

    iput-wide v2, p0, Lnbisdk/kf;->hD:D

    iput-wide v2, p0, Lnbisdk/kf;->cV:D

    iput-wide v2, p0, Lnbisdk/kf;->cW:D

    iput-wide v0, p0, Lnbisdk/kf;->cz:D

    iput-wide v5, p0, Lnbisdk/kf;->pL:J

    iput-wide v5, p0, Lnbisdk/kf;->pM:J

    iput v4, p0, Lnbisdk/kf;->cZ:I

    iput-wide v0, p0, Lnbisdk/kf;->pN:D

    iput-wide v0, p0, Lnbisdk/kf;->pO:D

    iput-wide v0, p0, Lnbisdk/kf;->pP:D

    iput-wide v0, p0, Lnbisdk/kf;->pQ:D

    return-void
.end method

.method public constructor <init>([B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/navbuilder/nb/NBException;
        }
    .end annotation

    const v9, 0xffff

    const-wide v7, 0x3ed680000003decbL

    const-wide v2, -0x3f70c80000000000L

    const/16 v6, 0xff

    const-wide/high16 v4, -0x4010

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lnbisdk/kf;->hD:D

    array-length v0, p1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/navbuilder/nb/NBException;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/kf;->pR:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnbisdk/ls;->d([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnbisdk/kf;->pL:J

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lnbisdk/ls;->d([BI)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v7

    iput-wide v0, p0, Lnbisdk/kf;->cV:D

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lnbisdk/ls;->d([BI)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v7

    iput-wide v0, p0, Lnbisdk/kf;->cW:D

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lnbisdk/ls;->c([BI)S

    move-result v0

    if-ne v0, v9, :cond_1

    iput-wide v2, p0, Lnbisdk/kf;->hD:D

    :goto_0
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lnbisdk/ls;->c([BI)S

    move-result v0

    if-ne v0, v9, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/kf;->cz:D

    :goto_1
    iget-object v0, p0, Lnbisdk/kf;->pR:[B

    const/16 v1, 0x10

    aget-byte v0, v0, v1

    if-ne v0, v6, :cond_3

    iput-wide v4, p0, Lnbisdk/kf;->pO:D

    :goto_2
    iget-object v0, p0, Lnbisdk/kf;->pR:[B

    const/16 v1, 0x11

    aget-byte v0, v0, v1

    if-ne v0, v6, :cond_4

    iput-wide v4, p0, Lnbisdk/kf;->pP:D

    :goto_3
    iget-object v0, p0, Lnbisdk/kf;->pR:[B

    const/16 v1, 0x12

    aget-byte v0, v0, v1

    if-ne v0, v6, :cond_5

    iput-wide v4, p0, Lnbisdk/kf;->pQ:D

    :goto_4
    return-void

    :cond_1
    int-to-double v0, v0

    const-wide v2, 0x3fd6800000000000L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lnbisdk/kf;->hD:D

    goto :goto_0

    :cond_2
    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lnbisdk/kf;->cz:D

    goto :goto_1

    :cond_3
    int-to-double v0, v0

    const-wide v2, 0x4016800000000000L

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lnbisdk/kf;->pO:D

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lnbisdk/hn;->ax(I)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/kf;->pP:D

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lnbisdk/hn;->ax(I)D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/kf;->pQ:D

    goto :goto_4
.end method


# virtual methods
.method public final D()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final aJ(I)V
    .locals 1

    iput p1, p0, Lnbisdk/kf;->ay:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/kf;->eJ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final bR()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->cz:D

    return-wide v0
.end method

.method public final getHeading()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->hD:D

    return-wide v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->cV:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->cW:D

    return-wide v0
.end method

.method public final getTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->pL:J

    return-wide v0
.end method

.method public final iQ()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->pO:D

    return-wide v0
.end method

.method public final iR()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->pP:D

    return-wide v0
.end method

.method public final iS()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/kf;->pQ:D

    return-wide v0
.end method

.method public final p(D)V
    .locals 1

    iput-wide p1, p0, Lnbisdk/kf;->cz:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/kf;->jy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final q(D)V
    .locals 1

    iput-wide p1, p0, Lnbisdk/kf;->pN:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final r(D)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/kf;->pO:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final s(D)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/kf;->pP:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final setHeading(D)V
    .locals 1

    iput-wide p1, p0, Lnbisdk/kf;->hD:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lnbisdk/kf;->cV:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lnbisdk/kf;->cW:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final setTime(J)V
    .locals 1

    iput-wide p1, p0, Lnbisdk/kf;->pL:J

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final setValid(I)V
    .locals 0

    iput p1, p0, Lnbisdk/kf;->cZ:I

    return-void
.end method

.method public final t(D)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/kf;->pQ:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/kf;->pR:[B

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fix at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->pL:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->cV:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->cW:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",heading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->hD:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lnbisdk/kf;->jy:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->cz:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-boolean v1, p0, Lnbisdk/kf;->eJ:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",altitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/kf;->ay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",valid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/kf;->cZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",uncertaintyMag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->pN:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",uncertaintyAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->pO:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",uncertaintyAxis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/kf;->pP:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",locationMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
