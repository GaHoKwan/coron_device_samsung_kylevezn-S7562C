.class public final Lnbisdk/ry;
.super Lnbisdk/um;


# instance fields
.field private jy:Z

.field private xv:Lnbisdk/rl;

.field private xw:Lnbisdk/zi;


# direct methods
.method public constructor <init>(Lnbisdk/rl;Lcom/navbuilder/nb/e;)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/um;-><init>()V

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
    iput-object p1, p0, Lnbisdk/ry;->xv:Lnbisdk/rl;

    return-void
.end method


# virtual methods
.method final R()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/ry;->jy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ry;->xw:Lnbisdk/zi;

    return-void
.end method

.method public final a(Lnbisdk/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/ry;->jy:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/ry;->jy:Z

    iget-object v0, p0, Lnbisdk/ry;->xv:Lnbisdk/rl;

    invoke-interface {v0, p0}, Lnbisdk/rl;->onRequestStart(Lcom/navbuilder/nb/b;)V

    new-instance v0, Lnbisdk/zi;

    iget-object v1, p0, Lnbisdk/ry;->xv:Lnbisdk/rl;

    invoke-direct {v0, p1, p0, v1}, Lnbisdk/zi;-><init>(Lnbisdk/bf;Lnbisdk/ry;Lnbisdk/rl;)V

    iput-object v0, p0, Lnbisdk/ry;->xw:Lnbisdk/zi;

    iget-object v0, p0, Lnbisdk/ry;->xw:Lnbisdk/zi;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ry;->jy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ry;->xw:Lnbisdk/zi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ry;->xw:Lnbisdk/zi;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ry;->xw:Lnbisdk/zi;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/ry;->jy:Z

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ry;->jy:Z

    return v0
.end method
