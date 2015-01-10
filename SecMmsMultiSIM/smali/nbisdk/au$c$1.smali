.class final Lnbisdk/au$c$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/au$c;-><init>(Lnbisdk/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nB:Lnbisdk/au$c;


# direct methods
.method constructor <init>(Lnbisdk/au$c;Lnbisdk/au;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/au$c$1;->nB:Lnbisdk/au$c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/au$c$1;->nB:Lnbisdk/au$c;

    invoke-static {v0}, Lnbisdk/au$c;->a(Lnbisdk/au$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$c$1;->nB:Lnbisdk/au$c;

    iget-object v0, v0, Lnbisdk/au$c;->bL:Lnbisdk/au;

    new-instance v1, Lnbisdk/au$c$1$1;

    invoke-direct {v1, p0}, Lnbisdk/au$c$1$1;-><init>(Lnbisdk/au$c$1;)V

    invoke-virtual {v0, v1}, Lnbisdk/au$d;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
