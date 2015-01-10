.class public final Lnbisdk/cg;
.super Ljava/lang/Object;


# static fields
.field private static ea:Lnbisdk/cg;


# instance fields
.field private eb:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnbisdk/cg;->eb:Landroid/os/Handler;

    return-void
.end method

.method public static cI()Lnbisdk/cg;
    .locals 1

    sget-object v0, Lnbisdk/cg;->ea:Lnbisdk/cg;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/cg;

    invoke-direct {v0}, Lnbisdk/cg;-><init>()V

    sput-object v0, Lnbisdk/cg;->ea:Lnbisdk/cg;

    :cond_0
    sget-object v0, Lnbisdk/cg;->ea:Lnbisdk/cg;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/cg;->eb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
