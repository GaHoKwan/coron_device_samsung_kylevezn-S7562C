.class final Lcom/nbi/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/location/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mN:Lcom/nbi/location/LocationProvider;


# direct methods
.method constructor <init>(Lcom/nbi/location/LocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v2, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/location/LocationListener;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/nbi/location/Location;

    iget-object v3, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v3}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/nbi/location/Location;-><init>(Lcom/nbi/location/Location;)V

    invoke-interface {v0, v1}, Lcom/nbi/location/LocationListener;->locationUpdated(Lcom/nbi/location/Location;)V

    iget-object v1, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v1}, Lcom/nbi/location/LocationProvider;->c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->e(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->e(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->e(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/location/LocationListener;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/nbi/location/Location;

    iget-object v4, p0, Lcom/nbi/location/c;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v4}, Lcom/nbi/location/LocationProvider;->b(Lcom/nbi/location/LocationProvider;)Lcom/nbi/location/Location;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nbi/location/Location;-><init>(Lcom/nbi/location/Location;)V

    invoke-interface {v0, v3}, Lcom/nbi/location/LocationListener;->locationUpdated(Lcom/nbi/location/Location;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
