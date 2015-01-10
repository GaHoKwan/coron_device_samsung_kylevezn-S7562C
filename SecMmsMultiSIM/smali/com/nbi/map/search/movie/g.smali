.class final Lcom/nbi/map/search/movie/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/map/search/movie/TheaterShowtimeSearchInformation;


# instance fields
.field private dj:Lnbisdk/vq;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/vq;

    iput-object p1, p0, Lcom/nbi/map/search/movie/g;->dj:Lnbisdk/vq;

    return-void
.end method


# virtual methods
.method public final getEventPOI()Lcom/nbi/map/data/EventPOI;
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/search/movie/g;->dj:Lnbisdk/vq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/vq;->bu(I)Lnbisdk/pb;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nbi/map/data/EventPOI;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventPOI;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/g;->dj:Lnbisdk/vq;

    return-object v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
