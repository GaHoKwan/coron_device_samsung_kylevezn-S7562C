.class public Lnbisdk/gz;
.super Lnbisdk/qh;


# instance fields
.field private ay:I

.field private bx:I

.field private cJ:I

.field private cT:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0, p5}, Lnbisdk/qh;-><init>(I)V

    iput p1, p0, Lnbisdk/gz;->cT:I

    iput p2, p0, Lnbisdk/gz;->ay:I

    iput p3, p0, Lnbisdk/gz;->cJ:I

    iput p4, p0, Lnbisdk/gz;->bx:I

    return-void
.end method


# virtual methods
.method public final gX()I
    .locals 1

    iget v0, p0, Lnbisdk/gz;->bx:I

    return v0
.end method

.method public final gY()I
    .locals 1

    iget v0, p0, Lnbisdk/gz;->cT:I

    return v0
.end method

.method public final gZ()I
    .locals 1

    iget v0, p0, Lnbisdk/gz;->ay:I

    return v0
.end method

.method public final ha()I
    .locals 1

    iget v0, p0, Lnbisdk/gz;->cJ:I

    return v0
.end method
