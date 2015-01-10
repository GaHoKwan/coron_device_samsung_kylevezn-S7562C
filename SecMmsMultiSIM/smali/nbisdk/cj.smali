.class public Lnbisdk/cj;
.super Ljava/lang/Object;


# instance fields
.field private hf:Lnbisdk/au;

.field private hg:Landroid/view/View;

.field private hh:Lnbisdk/dq;

.field private hi:Landroid/view/animation/AlphaAnimation;

.field private hj:Lnbisdk/vf;

.field private hk:Lnbisdk/qf;

.field private hl:Lnbisdk/fj;

.field private hm:Z

.field private hn:I

.field private ho:Lnbisdk/gp;

.field private hp:I

.field private hq:I

.field private hr:Z

.field private hs:Z

.field private ht:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/au;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnbisdk/cj;->hr:Z

    iput-boolean v0, p0, Lnbisdk/cj;->hs:Z

    iput-boolean v0, p0, Lnbisdk/cj;->ht:Z

    iput-object p1, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {p1}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cj;->ho:Lnbisdk/gp;

    iput-object p2, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    new-instance v0, Lnbisdk/dq;

    invoke-direct {v0, p1}, Lnbisdk/dq;-><init>(Lnbisdk/au$d;)V

    iput-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    new-instance v1, Lnbisdk/un;

    invoke-direct {v1, p0}, Lnbisdk/un;-><init>(Lnbisdk/cj;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lnbisdk/cj;->hi:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lnbisdk/cj;->hi:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lnbisdk/cj$a;

    invoke-direct {v1, p0}, Lnbisdk/cj$a;-><init>(Lnbisdk/cj;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Lnbisdk/vf;

    invoke-direct {v0}, Lnbisdk/vf;-><init>()V

    iput-object v0, p0, Lnbisdk/cj;->hj:Lnbisdk/vf;

    new-instance v0, Lnbisdk/qf;

    invoke-direct {v0}, Lnbisdk/qf;-><init>()V

    iput-object v0, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    new-instance v0, Lnbisdk/fj;

    const/high16 v1, 0x4348

    invoke-direct {v0, v1}, Lnbisdk/fj;-><init>(F)V

    iput-object v0, p0, Lnbisdk/cj;->hl:Lnbisdk/fj;

    return-void
.end method

.method static synthetic a(Lnbisdk/cj;)Lnbisdk/au;
    .locals 1

    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/cj;I)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lnbisdk/cj;->hn:I

    return-void
.end method

.method static synthetic a(Lnbisdk/cj;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/cj;->hr:Z

    return v0
.end method

.method static synthetic b(Lnbisdk/cj;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cj;->ht:Z

    return v0
.end method

.method static synthetic b(Lnbisdk/cj;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/cj;->hs:Z

    return v0
.end method

.method public static c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "more than one child called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v1
.end method

.method static synthetic c(Lnbisdk/cj;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cj;->hm:Z

    return v0
.end method

.method static synthetic d(Lnbisdk/cj;)Lnbisdk/qf;
    .locals 1

    iget-object v0, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    return-object v0
.end method

.method public static d(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;
    .locals 1

    invoke-static {p0, p1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/rc;

    invoke-direct {v0, p1}, Lnbisdk/rc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method static synthetic e(Lnbisdk/cj;)Lnbisdk/gp;
    .locals 1

    iget-object v0, p0, Lnbisdk/cj;->ho:Lnbisdk/gp;

    return-object v0
.end method

.method public static e(Lnbisdk/ql;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private eX()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/cj;->hn:I

    iget-object v0, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    iget-object v1, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final a(DDDDZ)V
    .locals 12

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnbisdk/cj;->hr:Z

    invoke-static/range {p1 .. p8}, Lnbisdk/dd;->b(DDDD)D

    move-result-wide v10

    iget-object v1, p0, Lnbisdk/cj;->ho:Lnbisdk/gp;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lnbisdk/gp;->d(DDDD)D

    move-result-wide v1

    const-string v3, "AnimationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "distance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p9

    iput-boolean v0, p0, Lnbisdk/cj;->hm:Z

    iget-object v3, p0, Lnbisdk/cj;->hj:Lnbisdk/vf;

    invoke-virtual {v3, v1, v2}, Lnbisdk/vf;->y(D)V

    iget-object v1, p0, Lnbisdk/cj;->hj:Lnbisdk/vf;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v9, p0, Lnbisdk/cj;->hj:Lnbisdk/vf;

    new-instance v1, Lnbisdk/cj$b;

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    move-object v2, p0

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lnbisdk/cj$b;-><init>(Lnbisdk/cj;DDD)V

    invoke-virtual {v9, v1}, Lnbisdk/vf;->a(Lnbisdk/ho;)V

    iget-object v1, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    iget-object v2, p0, Lnbisdk/cj;->hj:Lnbisdk/vf;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final a(FLnbisdk/ho;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/cj;->hl:Lnbisdk/fj;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4348

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lnbisdk/cj;->hl:Lnbisdk/fj;

    invoke-virtual {v0, p1}, Lnbisdk/fj;->c(F)V

    iget-object v0, p0, Lnbisdk/cj;->hl:Lnbisdk/fj;

    invoke-virtual {v0, p2}, Lnbisdk/fj;->a(Lnbisdk/ho;)V

    iget-object v0, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    iget-object v1, p0, Lnbisdk/cj;->hl:Lnbisdk/fj;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final a(IIZI)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lnbisdk/cj;->ht:Z

    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    invoke-virtual {v0}, Lnbisdk/dq;->mi()V

    iput p1, p0, Lnbisdk/cj;->hp:I

    iput p2, p0, Lnbisdk/cj;->hq:I

    iput-boolean p3, p0, Lnbisdk/cj;->ht:Z

    :cond_0
    iget-boolean v0, p0, Lnbisdk/cj;->hr:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lnbisdk/cj;->hr:Z

    :cond_1
    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    const/4 v1, 0x4

    iput v1, v0, Lnbisdk/dq;->ws:I

    iget v1, v0, Lnbisdk/dq;->wo:F

    iput v1, v0, Lnbisdk/dq;->wn:F

    iget v1, v0, Lnbisdk/dq;->wp:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    int-to-float v2, p4

    mul-float/2addr v1, v2

    iput v1, v0, Lnbisdk/dq;->wp:F

    invoke-direct {p0}, Lnbisdk/cj;->eX()V

    return-void
.end method

.method public final a(ZFF)V
    .locals 7

    const/4 v3, 0x1

    iput-boolean v3, p0, Lnbisdk/cj;->hs:Z

    const-string v0, "AnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "velocity by X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", velocity by Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lnbisdk/cj;->hm:Z

    iget-object v0, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v6, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    new-instance v0, Lnbisdk/cj$c;

    float-to-double v2, p2

    float-to-double v4, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnbisdk/cj$c;-><init>(Lnbisdk/cj;DD)V

    invoke-virtual {v6, v0}, Lnbisdk/qf;->a(Lnbisdk/ho;)V

    iget-object v0, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    iget-object v1, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final b(IIZI)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lnbisdk/cj;->ht:Z

    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    invoke-virtual {v0}, Lnbisdk/dq;->mi()V

    iput p1, p0, Lnbisdk/cj;->hp:I

    iput p2, p0, Lnbisdk/cj;->hq:I

    iput-boolean p3, p0, Lnbisdk/cj;->ht:Z

    :cond_0
    iget-boolean v0, p0, Lnbisdk/cj;->hr:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lnbisdk/cj;->hr:Z

    :cond_1
    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    const/4 v1, 0x5

    iput v1, v0, Lnbisdk/dq;->ws:I

    iget v1, v0, Lnbisdk/dq;->wo:F

    iput v1, v0, Lnbisdk/dq;->wn:F

    iget v1, v0, Lnbisdk/dq;->wp:F

    mul-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lnbisdk/dq;->wp:F

    invoke-direct {p0}, Lnbisdk/cj;->eX()V

    return-void
.end method

.method public final c(DDDD)Z
    .locals 9

    iget-object v0, p0, Lnbisdk/cj;->ho:Lnbisdk/gp;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lnbisdk/gp;->d(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x402e

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    const-wide v2, 0x4097700000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cO()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "AnimationController"

    const-string v1, "completeAnimationNow"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    invoke-virtual {v0}, Lnbisdk/dq;->cO()V

    invoke-virtual {p0}, Lnbisdk/cj;->eZ()V

    const-string v0, "AnimationController"

    const-string v1, "completeAnimationNow - complete"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0, v2}, Lnbisdk/au;->G(Z)V

    :cond_0
    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    invoke-virtual {v0}, Lnbisdk/dq;->mi()V

    invoke-virtual {p0, v2}, Lnbisdk/cj;->v(Z)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/cj;->hj:Lnbisdk/vf;

    iput-object v0, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    iput-object v0, p0, Lnbisdk/cj;->hi:Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    iput-object v0, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    iput-object v0, p0, Lnbisdk/cj;->ho:Lnbisdk/gp;

    iput-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    iput-object v0, p0, Lnbisdk/cj;->hl:Lnbisdk/fj;

    return-void
.end method

.method public final eS()Z
    .locals 1

    iget v0, p0, Lnbisdk/cj;->hn:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final eT()Z
    .locals 1

    iget v0, p0, Lnbisdk/cj;->hn:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final eU()I
    .locals 1

    iget v0, p0, Lnbisdk/cj;->hp:I

    return v0
.end method

.method public final eV()I
    .locals 1

    iget v0, p0, Lnbisdk/cj;->hq:I

    return v0
.end method

.method public final eW()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cj;->hs:Z

    return v0
.end method

.method public final eY()V
    .locals 3

    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    const/4 v1, 0x3

    iput v1, v0, Lnbisdk/dq;->ws:I

    const-wide/16 v1, 0x1f4

    iput-wide v1, v0, Lnbisdk/dq;->wr:J

    iget-wide v1, v0, Lnbisdk/dq;->wr:J

    invoke-virtual {v0, v1, v2}, Lnbisdk/dq;->setDuration(J)V

    const-string v0, "ZoomAnimation"

    const-string v1, "delay() - starting"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final eZ()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AnimationController"

    const-string v1, "animationComplete"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/cj;->ho:Lnbisdk/gp;

    iget-object v1, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0, v1}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    iget v1, v1, Lnbisdk/dq;->wp:F

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lnbisdk/cj;->hp:I

    aput v3, v2, v4

    iget v3, p0, Lnbisdk/cj;->hq:I

    aput v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lnbisdk/cc;->a(F[I)V

    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    new-instance v1, Lnbisdk/cj$1;

    invoke-direct {v1, p0}, Lnbisdk/cj$1;-><init>(Lnbisdk/cj;)V

    invoke-virtual {v0, v1}, Lnbisdk/cc;->a(Lnbisdk/fw$b;)V

    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->cG()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0, v4, v5}, Lnbisdk/au;->e(ZZ)V

    :goto_0
    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/cc;->a(Lnbisdk/fw$b;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    invoke-virtual {v0}, Lnbisdk/dq;->mi()V

    iput-boolean v4, p0, Lnbisdk/cj;->ht:Z

    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lnbisdk/cc;->a(ZZ)V

    iget-object v0, p0, Lnbisdk/cj;->hf:Lnbisdk/au;

    invoke-virtual {v0, v5}, Lnbisdk/ct;->m(Z)V

    goto :goto_0
.end method

.method public final fa()F
    .locals 1

    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    iget v0, v0, Lnbisdk/dq;->wt:F

    return v0
.end method

.method public final getScale()F
    .locals 1

    iget-object v0, p0, Lnbisdk/cj;->hh:Lnbisdk/dq;

    invoke-virtual {v0}, Lnbisdk/dq;->mh()F

    move-result v0

    return v0
.end method

.method public final isAnimating()Z
    .locals 1

    iget v0, p0, Lnbisdk/cj;->hn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v(Z)V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lnbisdk/cj;->hn:I

    iget-object v0, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lnbisdk/cj;->hj:Lnbisdk/vf;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iput-boolean v1, p0, Lnbisdk/cj;->hr:Z

    iget-object v0, p0, Lnbisdk/cj;->hk:Lnbisdk/qf;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iput-boolean v1, p0, Lnbisdk/cj;->hs:Z

    iget-object v0, p0, Lnbisdk/cj;->hl:Lnbisdk/fj;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/cj;->hg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
