.class final Lnbisdk/bt$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/bt$c$a;
    }
.end annotation


# instance fields
.field private synthetic df:Lnbisdk/bt;

.field private uS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/bt$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnbisdk/bt;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method final S(Z)V
    .locals 2

    iget-object v0, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt$c$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    invoke-interface {v0}, Lnbisdk/ki;->onStartLingerTimer()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    invoke-interface {v0}, Lnbisdk/ki;->onCancelLingerTimer()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method final a(Lnbisdk/ki;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt$c$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final a(Lnbisdk/ki;Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lnbisdk/bt$c$a;

    invoke-direct {v2, p0, p1, p2}, Lnbisdk/bt$c$a;-><init>(Lnbisdk/bt$c;Lnbisdk/ki;Landroid/content/Context;)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final j(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt$c$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    invoke-interface {v0}, Lnbisdk/ki;->onContextDestroy()V

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final k(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt$c$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    instance-of v1, v1, Lnbisdk/cq;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    check-cast v1, Lnbisdk/cq;

    invoke-interface {v1, p1}, Lnbisdk/cq;->b(Landroid/content/Context;)V

    iget-object v0, v0, Lnbisdk/bt$c$a;->nn:Landroid/content/Context;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final ll()V
    .locals 2

    iget-object v0, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt$c$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    invoke-interface {v0}, Lnbisdk/ki;->onLowMemory()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final lm()V
    .locals 2

    iget-object v0, p0, Lnbisdk/bt$c;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/bt$c;->uS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt$c$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnbisdk/bt$c$a;->vK:Lnbisdk/ki;

    invoke-interface {v0}, Lnbisdk/ki;->onClearCache()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
