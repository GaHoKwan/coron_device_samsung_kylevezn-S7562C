.class final Lnbisdk/k$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kV:Lnbisdk/k;

.field private synthetic kX:Lnbisdk/mp;


# direct methods
.method constructor <init>(Lnbisdk/k;Lnbisdk/mp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/k$3;->kV:Lnbisdk/k;

    iput-object p2, p0, Lnbisdk/k$3;->kX:Lnbisdk/mp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnbisdk/k$3;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$3;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/k$3;->kX:Lnbisdk/mp;

    invoke-virtual {v0, v1}, Lnbisdk/k;->a(Lnbisdk/mp;)Ljava/util/Vector;
    :try_end_0
    .catch Lcom/navbuilder/nb/NBException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/navbuilder/nb/NBException;->printStackTrace()V

    goto :goto_0
.end method
