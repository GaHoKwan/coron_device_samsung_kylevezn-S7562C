.class public final Lnbisdk/yl;
.super Lnbisdk/nx;


# instance fields
.field private DZ:Lnbisdk/fz;


# direct methods
.method public constructor <init>(Lnbisdk/fz;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/nx;-><init>()V

    iput-object p1, p0, Lnbisdk/yl;->DZ:Lnbisdk/fz;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/nx;->up:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/nx;->up:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lnbisdk/nx;->up:Ljava/util/Vector;

    iget-object v1, p0, Lnbisdk/yl;->DZ:Lnbisdk/fz;

    invoke-static {v0, v1}, Lnbisdk/yr;->a(Ljava/util/Vector;Lnbisdk/fz;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lnbisdk/nx;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic la()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lnbisdk/nx;->la()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic lb()Ljava/util/Enumeration;
    .locals 1

    invoke-super {p0}, Lnbisdk/nx;->lb()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lnbisdk/nx;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnbisdk/nx;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
