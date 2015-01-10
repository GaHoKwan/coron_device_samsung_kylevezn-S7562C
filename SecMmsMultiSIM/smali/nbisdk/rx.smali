.class public final Lnbisdk/rx;
.super Ljava/lang/Object;


# instance fields
.field private O:Z

.field private aB:Ljava/util/Vector;

.field private aH:Z

.field private ce:Ljava/lang/String;

.field private jy:Z

.field private ow:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnbisdk/rx;->jy:Z

    iput-boolean v0, p0, Lnbisdk/rx;->aH:Z

    iput-boolean v0, p0, Lnbisdk/rx;->O:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/rx;->ce:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/rx;->ow:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lnbisdk/qh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnbisdk/rx;->jy:Z

    iput-boolean v0, p0, Lnbisdk/rx;->aH:Z

    iput-boolean v0, p0, Lnbisdk/rx;->O:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/rx;->ce:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/rx;->ow:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/rx;->aB:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/rx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final U(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/rx;->jy:Z

    return-void
.end method

.method public final V(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/rx;->aH:Z

    return-void
.end method

.method public final W(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/rx;->O:Z

    return-void
.end method

.method public final a(Lnbisdk/na;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/rx;->ow:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final be(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/rx;->ce:Ljava/lang/String;

    return-void
.end method

.method public final bj(I)Lnbisdk/qh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/rx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/qh;

    return-object v0
.end method

.method public final d(Lnbisdk/qh;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/rx;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lnbisdk/rx;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final mq()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/rx;->jy:Z

    return v0
.end method

.method public final mr()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/rx;->aH:Z

    return v0
.end method

.method public final ms()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/rx;->O:Z

    return v0
.end method

.method public final mt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/rx;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final mu()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/rx;->ow:Ljava/util/Vector;

    return-object v0
.end method
