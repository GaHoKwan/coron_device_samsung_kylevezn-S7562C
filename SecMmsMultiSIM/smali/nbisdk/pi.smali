.class public final Lnbisdk/pi;
.super Ljava/lang/Object;


# instance fields
.field private ay:I

.field private bx:I

.field private cT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnbisdk/pi;->bx:I

    iput p2, p0, Lnbisdk/pi;->cT:I

    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 1

    iget v0, p0, Lnbisdk/pi;->cT:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    iget v0, p0, Lnbisdk/pi;->bx:I

    return v0
.end method

.method public final getTotal()I
    .locals 1

    iget v0, p0, Lnbisdk/pi;->ay:I

    return v0
.end method

.method public final setEnd(I)V
    .locals 0

    iput p1, p0, Lnbisdk/pi;->cT:I

    return-void
.end method

.method public final setStart(I)V
    .locals 0

    iput p1, p0, Lnbisdk/pi;->bx:I

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    iput p1, p0, Lnbisdk/pi;->ay:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnbisdk/pi;->bx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/pi;->cT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/pi;->ay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
