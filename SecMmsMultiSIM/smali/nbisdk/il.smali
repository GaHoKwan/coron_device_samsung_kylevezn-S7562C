.class final Lnbisdk/il;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bL:Lnbisdk/au;


# direct methods
.method constructor <init>(Lnbisdk/au;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/il;->bL:Lnbisdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/il;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->d(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/il;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->f(Lnbisdk/au;)Lnbisdk/cj;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/il;->bL:Lnbisdk/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/au;->I(Z)V

    :cond_0
    return-void
.end method
