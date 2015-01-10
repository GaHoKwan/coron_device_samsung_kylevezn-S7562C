.class public final Lnbisdk/ij;
.super Lnbisdk/cf;


# instance fields
.field private jI:Z

.field private jJ:Z

.field private mX:Ljava/lang/String;

.field private mY:Ljava/lang/String;

.field private mZ:Ljava/lang/String;

.field private na:Z

.field private nb:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/cf;-><init>()V

    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ij;->mX:Ljava/lang/String;

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ij;->mY:Ljava/lang/String;

    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ij;->mZ:Ljava/lang/String;

    return-void
.end method

.method public final cx()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lnbisdk/ij;

    invoke-direct {v0}, Lnbisdk/ij;-><init>()V

    invoke-super {p0, v0}, Lnbisdk/cf;->a(Lnbisdk/cf;)V

    iget-object v1, p0, Lnbisdk/ij;->mX:Ljava/lang/String;

    iput-object v1, v0, Lnbisdk/ij;->mX:Ljava/lang/String;

    iget-object v1, p0, Lnbisdk/ij;->mY:Ljava/lang/String;

    iput-object v1, v0, Lnbisdk/ij;->mY:Ljava/lang/String;

    iget-object v1, p0, Lnbisdk/ij;->mZ:Ljava/lang/String;

    iput-object v1, v0, Lnbisdk/ij;->mZ:Ljava/lang/String;

    iget-boolean v1, p0, Lnbisdk/ij;->jI:Z

    iput-boolean v1, v0, Lnbisdk/ij;->jI:Z

    iget-boolean v1, p0, Lnbisdk/ij;->jJ:Z

    iput-boolean v1, v0, Lnbisdk/ij;->jJ:Z

    iget-boolean v1, p0, Lnbisdk/ij;->nb:Z

    iput-boolean v1, v0, Lnbisdk/ij;->nb:Z

    return-object v0
.end method

.method public final dn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ij;->mX:Ljava/lang/String;

    return-object v0
.end method

.method public final dp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ij;->mY:Ljava/lang/String;

    return-object v0
.end method

.method public final dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ij;->mZ:Ljava/lang/String;

    return-object v0
.end method

.method public final dr()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ij;->na:Z

    return v0
.end method

.method public final ds()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ij;->nb:Z

    return v0
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ij;->na:Z

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ij;->nb:Z

    return-void
.end method

.method public final setTrafficButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ij;->jJ:Z

    return-void
.end method

.method public final setZoomButtons(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/ij;->jI:Z

    return-void
.end method
