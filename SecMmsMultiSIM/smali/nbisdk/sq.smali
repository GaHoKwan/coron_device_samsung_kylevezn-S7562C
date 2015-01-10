.class public final Lnbisdk/sq;
.super Lnbisdk/hc;


# instance fields
.field private aB:Ljava/util/Vector;

.field private xN:Lnbisdk/ni;

.field private xO:Lnbisdk/ni;

.field private xz:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/hc;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/sq;->aB:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/sq;->xz:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/uz;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/sq;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final an(I)Lnbisdk/mh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/sq;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/mh;

    return-object v0
.end method

.method public final b(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lnbisdk/sq;->xz:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lnbisdk/ni;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/sq;->xN:Lnbisdk/ni;

    return-void
.end method

.method public final bk(I)Lnbisdk/uz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/sq;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uz;

    return-object v0
.end method

.method public final c(Lnbisdk/ni;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/sq;->xO:Lnbisdk/ni;

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/kq;->qh:Z

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/kq;->qg:Ljava/lang/Object;

    return-void
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/sq;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final hd()Lnbisdk/ni;
    .locals 1

    iget-object v0, p0, Lnbisdk/sq;->xN:Lnbisdk/ni;

    return-object v0
.end method

.method public final he()Lnbisdk/ni;
    .locals 1

    iget-object v0, p0, Lnbisdk/sq;->xO:Lnbisdk/ni;

    return-object v0
.end method
