.class final Lnbisdk/dh$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/dh;->oB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fN:Lnbisdk/dh;


# direct methods
.method constructor <init>(Lnbisdk/dh;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/dh$1;->fN:Lnbisdk/dh;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/dh;->Y(Z)Z

    iget-object v0, p0, Lnbisdk/dh$1;->fN:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/au$d;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dh$1;->fN:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/au$d;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
