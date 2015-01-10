.class public final Lnbisdk/bx$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic dl:Lnbisdk/bx;


# direct methods
.method public constructor <init>(Lnbisdk/bx;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bx$a;->dl:Lnbisdk/bx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/bx$a;->dl:Lnbisdk/bx;

    invoke-static {v0}, Lnbisdk/bx;->b(Lnbisdk/bx;)V

    iget-object v0, p0, Lnbisdk/bx$a;->dl:Lnbisdk/bx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnbisdk/bx;->a(Lnbisdk/bx;Z)Z

    iget-object v0, p0, Lnbisdk/bx$a;->dl:Lnbisdk/bx;

    iget-object v0, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bx$a;->dl:Lnbisdk/bx;

    iget-object v1, p0, Lnbisdk/bx$a;->dl:Lnbisdk/bx;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->e(Lnbisdk/nb;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/bx$a;->dl:Lnbisdk/bx;

    const/16 v1, 0x2347

    invoke-virtual {v0, v1}, Lnbisdk/fb;->be(I)V

    goto :goto_0
.end method
