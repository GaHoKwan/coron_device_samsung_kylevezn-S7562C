.class final Lcom/nbi/location/a;
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
.field private mM:Lcom/nbi/location/LocationListener;

.field private synthetic mN:Lcom/nbi/location/LocationProvider;


# direct methods
.method constructor <init>(Lcom/nbi/location/LocationProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/location/LocationListener;

    iput-object v0, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    iget-object v0, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    iget-object v1, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v1}, Lcom/nbi/location/LocationProvider;->d(Lcom/nbi/location/LocationProvider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nbi/location/LocationListener;->onLocationError(I)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->c(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->e(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v0}, Lcom/nbi/location/LocationProvider;->e(Lcom/nbi/location/LocationProvider;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/location/LocationListener;

    iput-object v0, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    iget-object v0, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nbi/location/a;->mM:Lcom/nbi/location/LocationListener;

    iget-object v2, p0, Lcom/nbi/location/a;->mN:Lcom/nbi/location/LocationProvider;

    invoke-static {v2}, Lcom/nbi/location/LocationProvider;->d(Lcom/nbi/location/LocationProvider;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/nbi/location/LocationListener;->onLocationError(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method
