.class public final Lnbisdk/xm;
.super Lnbisdk/vq;


# instance fields
.field private aB:Ljava/util/Vector;

.field private aR:Ljava/util/Vector;

.field private br:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lnbisdk/vq;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/xm;->aB:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/xm;->aR:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/xm;->br:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/bi;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/xm;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lnbisdk/pb;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/xm;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lnbisdk/je;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/xm;->br:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final bu(I)Lnbisdk/pb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/xm;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/pb;

    return-object v0
.end method

.method public final bv(I)Lnbisdk/bi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/xm;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bi;

    return-object v0
.end method

.method public final bw(I)Lnbisdk/je;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/xm;->br:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/je;

    return-object v0
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

.method public final getEventCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/xm;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getPOICount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/xm;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final nY()I
    .locals 1

    iget-object v0, p0, Lnbisdk/xm;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
