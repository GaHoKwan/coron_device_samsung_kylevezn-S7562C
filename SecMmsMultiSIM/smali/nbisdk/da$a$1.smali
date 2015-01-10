.class final Lnbisdk/da$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/da$a;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lv:Lnbisdk/da$a;


# direct methods
.method constructor <init>(Lnbisdk/da$a;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/da$a$1;->lv:Lnbisdk/da$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/da$a$1;->lv:Lnbisdk/da$a;

    iget-object v0, v0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v0}, Lnbisdk/da;->a(Lnbisdk/da;)Lcom/nbi/remote/ServiceStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/da$a$1;->lv:Lnbisdk/da$a;

    iget-object v0, v0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v0}, Lnbisdk/da;->a(Lnbisdk/da;)Lcom/nbi/remote/ServiceStateListener;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-interface {v0, v1}, Lcom/nbi/remote/ServiceStateListener;->onServiceError(I)V

    :cond_0
    return-void
.end method
