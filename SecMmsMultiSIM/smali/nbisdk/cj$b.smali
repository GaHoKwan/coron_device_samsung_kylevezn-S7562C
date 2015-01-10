.class final Lnbisdk/cj$b;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ho;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private dU:D

.field private dV:D

.field private synthetic eg:Lnbisdk/cj;

.field private ii:Lnbisdk/qb;


# direct methods
.method public constructor <init>(Lnbisdk/cj;DDD)V
    .locals 1

    iput-object p1, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/qb;

    invoke-direct {v0, p2, p3}, Lnbisdk/qb;-><init>(D)V

    iput-object v0, p0, Lnbisdk/cj$b;->ii:Lnbisdk/qb;

    iput-wide p4, p0, Lnbisdk/cj$b;->dU:D

    iput-wide p6, p0, Lnbisdk/cj$b;->dV:D

    return-void
.end method


# virtual methods
.method public final j(D)V
    .locals 5

    iget-object v0, p0, Lnbisdk/cj$b;->ii:Lnbisdk/qb;

    invoke-virtual {v0, p1, p2}, Lnbisdk/qb;->x(D)V

    const-string v0, "PanAnimationListener"

    iget-object v1, p0, Lnbisdk/cj$b;->ii:Lnbisdk/qb;

    invoke-virtual {v1}, Lnbisdk/qb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/cj$b;->ii:Lnbisdk/qb;

    invoke-virtual {v1}, Lnbisdk/qb;->lX()I

    move-result v1

    iget-object v2, p0, Lnbisdk/cj$b;->ii:Lnbisdk/qb;

    invoke-virtual {v2}, Lnbisdk/qb;->lY()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-static {v4}, Lnbisdk/cj;->c(Lnbisdk/cj;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnbisdk/au;->a(IIZZ)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/cj$b;->dU:D

    iget-wide v3, p0, Lnbisdk/cj$b;->dV:D

    iget-object v6, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-static {v6}, Lnbisdk/cj;->c(Lnbisdk/cj;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au;->a(DDZZ)V

    iget-object v0, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-virtual {v0, v5}, Lnbisdk/cj;->v(Z)V

    iget-object v0, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lnbisdk/au;->e(ZZ)V

    iget-object v0, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, v5}, Lnbisdk/au;->H(Z)V

    iget-object v0, p0, Lnbisdk/cj$b;->eg:Lnbisdk/cj;

    invoke-static {v0, v5}, Lnbisdk/cj;->a(Lnbisdk/cj;Z)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    const-string v0, "PanAnimationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
