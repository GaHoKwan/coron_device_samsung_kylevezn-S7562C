.class final Lnbisdk/cj$c;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ho;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private synthetic eg:Lnbisdk/cj;

.field private final wg:D

.field private final wh:D

.field private wi:D

.field private wj:D

.field private wk:D


# direct methods
.method public constructor <init>(Lnbisdk/cj;DD)V
    .locals 4

    const-wide v2, -0x406ee631f8a0902eL

    iput-object p1, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3feccccccccccccdL

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double v0, v2, v0

    iput-wide v0, p0, Lnbisdk/cj$c;->wg:D

    const-wide v0, 0x3fee666666666666L

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double v0, v2, v0

    iput-wide v0, p0, Lnbisdk/cj$c;->wh:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/cj$c;->wk:D

    iput-wide p2, p0, Lnbisdk/cj$c;->wi:D

    iput-wide p4, p0, Lnbisdk/cj$c;->wj:D

    return-void
.end method


# virtual methods
.method public final j(D)V
    .locals 11

    iget-wide v0, p0, Lnbisdk/cj$c;->wk:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lnbisdk/cj$c;->wk:D

    sub-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    div-double v4, v2, v4

    iput-wide v0, p0, Lnbisdk/cj$c;->wk:D

    iget-wide v0, p0, Lnbisdk/cj$c;->wi:D

    iget-wide v2, p0, Lnbisdk/cj$c;->wi:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lnbisdk/cj$c;->wj:D

    iget-wide v6, p0, Lnbisdk/cj$c;->wj:D

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v0, 0x4097700000000000L

    cmpl-double v0, v6, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x3feccccccccccccdL

    const-wide v2, 0x3f9119ce075f6fd2L

    div-double v2, v4, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v2, v6, v0

    iget-wide v0, p0, Lnbisdk/cj$c;->wg:D

    const-wide v8, 0x4097700000000000L

    cmpg-double v8, v2, v8

    if-gez v8, :cond_3

    :cond_2
    const-wide v0, 0x3fee666666666666L

    const-wide v2, 0x3f9119ce075f6fd2L

    div-double v2, v4, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v2, v6, v0

    iget-wide v0, p0, Lnbisdk/cj$c;->wh:D

    :cond_3
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lnbisdk/cj$c;->wi:D

    mul-double/2addr v4, v2

    div-double/2addr v4, v6

    iget-wide v8, p0, Lnbisdk/cj$c;->wj:D

    mul-double/2addr v8, v2

    div-double v6, v8, v6

    iget-wide v8, p0, Lnbisdk/cj$c;->wi:D

    sub-double/2addr v8, v4

    mul-double/2addr v8, v0

    double-to-int v8, v8

    iget-wide v9, p0, Lnbisdk/cj$c;->wj:D

    sub-double/2addr v9, v6

    mul-double/2addr v0, v9

    double-to-int v0, v0

    iput-wide v4, p0, Lnbisdk/cj$c;->wi:D

    iput-wide v6, p0, Lnbisdk/cj$c;->wj:D

    iget-object v1, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v1}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v5, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v5}, Lnbisdk/cj;->c(Lnbisdk/cj;)Z

    move-result v5

    invoke-virtual {v1, v8, v0, v4, v5}, Lnbisdk/au;->a(IIZZ)V

    const-wide/high16 v0, 0x403e

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->d(Lnbisdk/cj;)Lnbisdk/qf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/cj$c;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/cj$c;->wk:D

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v0, v5}, Lnbisdk/cj;->b(Lnbisdk/cj;Z)Z

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->d(Lnbisdk/cj;)Lnbisdk/qf;

    move-result-object v0

    invoke-virtual {v0, v7}, Lnbisdk/qf;->a(Lnbisdk/ho;)V

    const/4 v0, 0x2

    new-array v3, v0, [D

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->e(Lnbisdk/cj;)Lnbisdk/gp;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v1}, Lnbisdk/cj;->e(Lnbisdk/cj;)Lnbisdk/gp;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/gp;->gE()I

    move-result v1

    iget-object v2, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v2}, Lnbisdk/cj;->e(Lnbisdk/cj;)Lnbisdk/gp;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/gp;->gF()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/gp;->b(II[D)V

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    aget-wide v1, v3, v5

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    iget-object v6, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v6}, Lnbisdk/cj;->c(Lnbisdk/cj;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au;->a(DDZZ)V

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-virtual {v0, v5}, Lnbisdk/cj;->v(Z)V

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v1}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lnbisdk/au;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    iget-object v0, p0, Lnbisdk/cj$c;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, v5}, Lnbisdk/au;->H(Z)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lnbisdk/cj$c;->wk:D

    const-string v0, "FlingAnimationListener"

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
