.class public Lnbisdk/qg;
.super Ljava/lang/Object;


# instance fields
.field private up:Ljava/util/Vector;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/qg;->up:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(Lnbisdk/tb;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/qg;->up:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public fY()Lnbisdk/tb;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/qg;->up:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/qg;->up:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/tb;

    iget-object v1, p0, Lnbisdk/qg;->up:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lnbisdk/qg;->up:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
