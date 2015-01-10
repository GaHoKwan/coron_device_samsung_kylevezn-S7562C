.class public final Lnbisdk/xy;
.super Lnbisdk/df;


# instance fields
.field private aB:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/df;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/xy;->aB:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final G(I)Lnbisdk/fd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/xy;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fd;

    return-object v0
.end method

.method public final a(Lnbisdk/fd;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/xy;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/kq;->qh:Z

    return-void
.end method

.method final e(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/kq;->qg:Ljava/lang/Object;

    return-void
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/xy;->aB:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/xy;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method
