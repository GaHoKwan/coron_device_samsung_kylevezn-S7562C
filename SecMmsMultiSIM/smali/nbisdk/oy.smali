.class final Lnbisdk/oy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic uz:Lnbisdk/gf;


# direct methods
.method constructor <init>(Lnbisdk/gf;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/oy;->uz:Lnbisdk/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/oy;->uz:Lnbisdk/gf;

    iget-object v1, p0, Lnbisdk/oy;->uz:Lnbisdk/gf;

    invoke-static {v1}, Lnbisdk/gf;->a(Lnbisdk/gf;)Lnbisdk/nb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/gf;->a(Lnbisdk/nb;)V

    return-void
.end method
