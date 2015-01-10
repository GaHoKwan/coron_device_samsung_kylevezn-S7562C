.class final Lnbisdk/au$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/au$b;->cS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic go:Lnbisdk/au$b;


# direct methods
.method constructor <init>(Lnbisdk/au$b;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/au$b$1;->go:Lnbisdk/au$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnbisdk/au$b$1;->go:Lnbisdk/au$b;

    iget-object v0, v0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->d(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$b$1;->go:Lnbisdk/au$b;

    iget-object v0, v0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->f(Lnbisdk/au;)Lnbisdk/cj;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/au$b$1;->go:Lnbisdk/au$b;

    invoke-virtual {v0}, Lnbisdk/au$b;->cV()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/au$b$1;->go:Lnbisdk/au$b;

    iget-object v0, v0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->e(Lnbisdk/au;)Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
