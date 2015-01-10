.class final Lnbisdk/k$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/k$1;->d(Lnbisdk/qk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic uQ:Lnbisdk/qk;

.field private synthetic uR:Lnbisdk/k$1;


# direct methods
.method constructor <init>(Lnbisdk/k$1;Lnbisdk/qk;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/k$1$1;->uR:Lnbisdk/k$1;

    iput-object p2, p0, Lnbisdk/k$1$1;->uQ:Lnbisdk/qk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/k$1$1;->uR:Lnbisdk/k$1;

    iget-object v0, v0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->f(Lnbisdk/k;)Lnbisdk/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1$1;->uR:Lnbisdk/k$1;

    iget-object v0, v0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->f(Lnbisdk/k;)Lnbisdk/ct;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/k$1$1;->uQ:Lnbisdk/qk;

    invoke-virtual {v0, v1}, Lnbisdk/ct;->b(Lnbisdk/qk;)V

    :cond_0
    return-void
.end method
