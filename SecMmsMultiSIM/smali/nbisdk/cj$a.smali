.class final Lnbisdk/cj$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic eg:Lnbisdk/cj;


# direct methods
.method synthetic constructor <init>(Lnbisdk/cj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/cj$a;-><init>(Lnbisdk/cj;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/cj;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/cj$a;->eg:Lnbisdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "AlphaAnimationListener.InternalAlphaAnimationListenerImpl"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/cj$a;->eg:Lnbisdk/cj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/cj;->v(Z)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "AlphaAnimationListener"

    const-string v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "AlphaAnimationListener"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
