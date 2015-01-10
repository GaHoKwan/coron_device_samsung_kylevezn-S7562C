.class final Lnbisdk/cn$a;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ho;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic tF:Lnbisdk/cn;

.field private vv:F


# direct methods
.method public constructor <init>(Lnbisdk/cn;F)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnbisdk/cn$a;->vv:F

    return-void
.end method


# virtual methods
.method public final j(D)V
    .locals 3

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-virtual {v0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    iget v1, p0, Lnbisdk/cn$a;->vv:F

    float-to-double v1, v1

    add-double/2addr v1, p1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lnbisdk/lt;->e(F)Z

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    iget-object v1, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-virtual {v0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-virtual {v0, v2}, Lnbisdk/au$d;->h(Z)V

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-virtual {v0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/cj;->v(Z)V

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-static {v0}, Lnbisdk/cn;->b(Lnbisdk/cn;)V

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-virtual {v0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/lt;->jw()V

    :cond_0
    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    invoke-static {v0, v2}, Lnbisdk/cn;->a(Lnbisdk/cn;Z)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/cn$a;->tF:Lnbisdk/cn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnbisdk/cn;->a(Lnbisdk/cn;Z)Z

    return-void
.end method
