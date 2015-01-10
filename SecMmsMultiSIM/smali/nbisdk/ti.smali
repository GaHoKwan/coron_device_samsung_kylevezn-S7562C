.class public final Lnbisdk/ti;
.super Ljava/lang/Object;


# instance fields
.field private O:Z

.field private bj:I

.field private cT:I

.field private dh:D

.field private kk:D

.field private ye:Lnbisdk/pn;

.field private yf:Lnbisdk/pn;

.field private yg:Lnbisdk/pn;


# direct methods
.method public constructor <init>(DIDZLnbisdk/pn;Lnbisdk/pn;IDIDZLnbisdk/pn;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnbisdk/ti;->dh:D

    iput p3, p0, Lnbisdk/ti;->cT:I

    iput-wide p4, p0, Lnbisdk/ti;->kk:D

    iput-boolean p6, p0, Lnbisdk/ti;->O:Z

    iput-object p7, p0, Lnbisdk/ti;->ye:Lnbisdk/pn;

    iput-object p8, p0, Lnbisdk/ti;->yf:Lnbisdk/pn;

    iput p9, p0, Lnbisdk/ti;->bj:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lnbisdk/ti;->yg:Lnbisdk/pn;

    return-void
.end method


# virtual methods
.method public final am()I
    .locals 1

    iget v0, p0, Lnbisdk/ti;->bj:I

    return v0
.end method

.method public final as()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ti;->O:Z

    return v0
.end method

.method public final be()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/ti;->kk:D

    return-wide v0
.end method

.method public final fj()I
    .locals 1

    iget v0, p0, Lnbisdk/ti;->cT:I

    return v0
.end method

.method public final mC()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/ti;->dh:D

    return-wide v0
.end method

.method public final mD()Lnbisdk/pn;
    .locals 1

    iget-object v0, p0, Lnbisdk/ti;->ye:Lnbisdk/pn;

    return-object v0
.end method

.method public final mE()Lnbisdk/pn;
    .locals 1

    iget-object v0, p0, Lnbisdk/ti;->yf:Lnbisdk/pn;

    return-object v0
.end method

.method public final mF()Lnbisdk/pn;
    .locals 1

    iget-object v0, p0, Lnbisdk/ti;->yg:Lnbisdk/pn;

    return-object v0
.end method
