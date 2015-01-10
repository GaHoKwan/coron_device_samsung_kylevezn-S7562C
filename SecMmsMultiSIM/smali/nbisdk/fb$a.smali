.class public final Lnbisdk/fb$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic iJ:Lnbisdk/fb;


# direct methods
.method public constructor <init>(Lnbisdk/fb;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    invoke-virtual {v0}, Lnbisdk/fb;->lQ()V

    iget-object v0, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    iget-object v0, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnbisdk/fb;->vk:Z

    iget-object v0, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    const/16 v1, 0x2346

    invoke-virtual {v0, v1}, Lnbisdk/fb;->be(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    iget-boolean v0, v0, Lnbisdk/fb;->vh:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    iget-object v0, v0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    iget-object v0, v0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    iget-object v1, p0, Lnbisdk/fb$a;->iJ:Lnbisdk/fb;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-interface {v0, v1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    goto :goto_0
.end method
