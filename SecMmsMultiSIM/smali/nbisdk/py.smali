.class public Lnbisdk/py;
.super Ljava/lang/Object;


# instance fields
.field private hD:D

.field private pO:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, -0x4010

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lnbisdk/py;->hD:D

    iput-wide v0, p0, Lnbisdk/py;->pO:D

    invoke-virtual {p0}, Lnbisdk/py;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lnbisdk/py;->hD:D

    iput-wide v0, p0, Lnbisdk/py;->pO:D

    return-void
.end method

.method public lT()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/py;->hD:D

    return-wide v0
.end method

.method public lU()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/py;->pO:D

    return-wide v0
.end method
