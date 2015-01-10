.class public final Lnbisdk/sm$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/sm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic uw:Lnbisdk/sm;


# direct methods
.method public constructor <init>(Lnbisdk/sm;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/sm$a;->uw:Lnbisdk/sm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/sm$a;->uw:Lnbisdk/sm;

    invoke-static {v0}, Lnbisdk/sm;->a(Lnbisdk/sm;)V

    iget-object v0, p0, Lnbisdk/sm$a;->uw:Lnbisdk/sm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnbisdk/fb;->vk:Z

    iget-object v0, p0, Lnbisdk/sm$a;->uw:Lnbisdk/sm;

    iget-object v0, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/sm$a;->uw:Lnbisdk/sm;

    iget-object v1, p0, Lnbisdk/sm$a;->uw:Lnbisdk/sm;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->e(Lnbisdk/nb;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/sm$a;->uw:Lnbisdk/sm;

    const/16 v1, 0x2347

    invoke-virtual {v0, v1}, Lnbisdk/fb;->be(I)V

    goto :goto_0
.end method
