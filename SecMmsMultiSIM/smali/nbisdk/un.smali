.class final Lnbisdk/un;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic eg:Lnbisdk/cj;


# direct methods
.method synthetic constructor <init>(Lnbisdk/cj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/un;-><init>(Lnbisdk/cj;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/cj;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/un;->eg:Lnbisdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/un;->eg:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ZoomAnimationListener.InternalZoomAnimationListenerImpl"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/un;->eg:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->eZ()V

    iget-object v0, p0, Lnbisdk/un;->eg:Lnbisdk/cj;

    invoke-static {v0}, Lnbisdk/cj;->a(Lnbisdk/cj;)Lnbisdk/au;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/un;->eg:Lnbisdk/cj;

    invoke-static {v1}, Lnbisdk/cj;->b(Lnbisdk/cj;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/au;->G(Z)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "ZoomAnimationListener"

    const-string v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/un;->eg:Lnbisdk/cj;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lnbisdk/cj;->a(Lnbisdk/cj;I)V

    iget-object v0, p0, Lnbisdk/un;->eg:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->eY()V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "ZoomAnimationListener"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
