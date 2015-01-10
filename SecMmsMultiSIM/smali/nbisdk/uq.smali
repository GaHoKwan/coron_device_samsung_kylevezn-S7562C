.class public final Lnbisdk/uq;
.super Lnbisdk/gk;


# instance fields
.field private Ap:Lnbisdk/ra;

.field private Aq:Lnbisdk/eh;

.field private aH:Z


# direct methods
.method public constructor <init>(Lnbisdk/eh;Lcom/navbuilder/nb/e;)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/gk;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geocode listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lnbisdk/uq;->Aq:Lnbisdk/eh;

    return-void
.end method


# virtual methods
.method final R()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/uq;->aH:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/uq;->Ap:Lnbisdk/ra;

    return-void
.end method

.method public final a(Lnbisdk/td;)V
    .locals 2

    iget-boolean v0, p0, Lnbisdk/uq;->aH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/ra;

    iget-object v1, p0, Lnbisdk/uq;->Aq:Lnbisdk/eh;

    invoke-direct {v0, p1, p0, v1}, Lnbisdk/ra;-><init>(Lnbisdk/td;Lnbisdk/uq;Lnbisdk/eh;)V

    iput-object v0, p0, Lnbisdk/uq;->Ap:Lnbisdk/ra;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/uq;->aH:Z

    iget-object v0, p0, Lnbisdk/uq;->Aq:Lnbisdk/eh;

    invoke-interface {v0, p0}, Lnbisdk/eh;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/uq;->Ap:Lnbisdk/ra;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/uq;->aH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/uq;->Ap:Lnbisdk/ra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/uq;->Ap:Lnbisdk/ra;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/uq;->Ap:Lnbisdk/ra;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/uq;->aH:Z

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/uq;->aH:Z

    return v0
.end method
