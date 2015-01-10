.class public Lnbisdk/jn;
.super Lnbisdk/qh;


# instance fields
.field private ay:I

.field private bx:I

.field private cT:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p4}, Lnbisdk/qh;-><init>(I)V

    iput p1, p0, Lnbisdk/jn;->bx:I

    iput p2, p0, Lnbisdk/jn;->cT:I

    iput p3, p0, Lnbisdk/jn;->ay:I

    return-void
.end method


# virtual methods
.method public final gX()I
    .locals 1

    iget v0, p0, Lnbisdk/jn;->ay:I

    return v0
.end method

.method public final iG()I
    .locals 1

    iget v0, p0, Lnbisdk/jn;->bx:I

    return v0
.end method

.method public final iH()I
    .locals 1

    iget v0, p0, Lnbisdk/jn;->cT:I

    return v0
.end method
