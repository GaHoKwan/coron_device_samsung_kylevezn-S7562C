.class public final Lnbisdk/ah;
.super Ljava/lang/Object;


# instance fields
.field private bu:Lnbisdk/md;

.field private bv:Lnbisdk/dg;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/md;

    iput-object p1, p0, Lnbisdk/ah;->bu:Lnbisdk/md;

    check-cast p2, Lnbisdk/dg;

    iput-object p2, p0, Lnbisdk/ah;->bv:Lnbisdk/dg;

    return-void
.end method


# virtual methods
.method public final aN()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/ah;->bu:Lnbisdk/md;

    return-object v0
.end method

.method public final aO()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/ah;->bv:Lnbisdk/dg;

    return-object v0
.end method

.method public final cancelRequest()V
    .locals 1

    iget-object v0, p0, Lnbisdk/ah;->bu:Lnbisdk/md;

    invoke-virtual {v0}, Lnbisdk/md;->cancelRequest()V

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/ah;->bu:Lnbisdk/md;

    invoke-virtual {v0}, Lnbisdk/md;->isRequestInProgress()Z

    move-result v0

    return v0
.end method
