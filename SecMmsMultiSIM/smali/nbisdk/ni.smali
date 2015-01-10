.class public final Lnbisdk/ni;
.super Ljava/lang/Object;


# instance fields
.field private O:Z

.field private eM:Z

.field private tO:Lnbisdk/hs;

.field private tP:Lnbisdk/pf;

.field private tQ:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final L(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ni;->O:Z

    return-void
.end method

.method public final M(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ni;->eM:Z

    return-void
.end method

.method public final a(Lnbisdk/hs;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ni;->tO:Lnbisdk/hs;

    return-void
.end method

.method public final a(Lnbisdk/pf;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ni;->tP:Lnbisdk/pf;

    return-void
.end method

.method public final aT(Ljava/lang/String;)V
    .locals 1

    const-string v0, "g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-short v0, p0, Lnbisdk/ni;->tQ:S

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getFuelUnit()S
    .locals 1

    iget-short v0, p0, Lnbisdk/ni;->tQ:S

    return v0
.end method

.method public final isAverage()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ni;->O:Z

    return v0
.end method

.method public final isLow()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ni;->eM:Z

    return v0
.end method

.method public final kS()Lnbisdk/hs;
    .locals 1

    iget-object v0, p0, Lnbisdk/ni;->tO:Lnbisdk/hs;

    return-object v0
.end method

.method public final kT()Lnbisdk/pf;
    .locals 1

    iget-object v0, p0, Lnbisdk/ni;->tP:Lnbisdk/pf;

    return-object v0
.end method
