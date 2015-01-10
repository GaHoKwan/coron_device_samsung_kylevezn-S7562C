.class public final Lnbisdk/lq;
.super Lnbisdk/de;


# instance fields
.field private aB:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnbisdk/de;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/lq;->aB:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/bn;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/lq;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final aP(I)Lnbisdk/bn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lq;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bn;

    return-object v0
.end method

.method public final ju()I
    .locals 1

    iget-object v0, p0, Lnbisdk/lq;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
