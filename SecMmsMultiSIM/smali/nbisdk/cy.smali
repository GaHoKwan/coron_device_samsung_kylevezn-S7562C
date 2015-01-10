.class public final Lnbisdk/cy;
.super Ljava/lang/Object;


# static fields
.field private static fe:Lnbisdk/cy;


# instance fields
.field private ff:Lnbisdk/qk;

.field private fg:Lnbisdk/bt;

.field private fh:Lnbisdk/my;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private I(Ljava/lang/String;)Lnbisdk/qk;
    .locals 1

    iget-object v0, p0, Lnbisdk/cy;->fh:Lnbisdk/my;

    invoke-virtual {v0, p1}, Lnbisdk/my;->aN(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lnbisdk/qk;Lnbisdk/qk;)Z
    .locals 2

    invoke-virtual {p0}, Lnbisdk/qk;->lZ()I

    move-result v0

    invoke-virtual {p1}, Lnbisdk/qk;->lZ()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/qk;->getMaxZoom()I

    move-result v0

    invoke-virtual {p1}, Lnbisdk/qk;->getMaxZoom()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/qk;->cE()I

    move-result v0

    invoke-virtual {p1}, Lnbisdk/qk;->cE()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized dG()Lnbisdk/cy;
    .locals 2

    const-class v1, Lnbisdk/cy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnbisdk/cy;->fe:Lnbisdk/cy;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/cy;

    invoke-direct {v0}, Lnbisdk/cy;-><init>()V

    sput-object v0, Lnbisdk/cy;->fe:Lnbisdk/cy;

    :cond_0
    sget-object v0, Lnbisdk/cy;->fe:Lnbisdk/cy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lnbisdk/bt;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/cy;->fg:Lnbisdk/bt;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnbisdk/cy;->fg:Lnbisdk/bt;

    new-instance v0, Lnbisdk/my;

    invoke-direct {v0, p1}, Lnbisdk/my;-><init>(Lnbisdk/bt;)V

    iput-object v0, p0, Lnbisdk/cy;->fh:Lnbisdk/my;

    const-string v0, "base_map"

    invoke-direct {p0, v0}, Lnbisdk/cy;->I(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    new-instance v0, Lnbisdk/cy$1;

    invoke-direct {v0, p0}, Lnbisdk/cy$1;-><init>(Lnbisdk/cy;)V

    invoke-virtual {p1, v0}, Lnbisdk/bt;->b(Lnbisdk/ki;)V

    :cond_0
    return-void
.end method

.method public final c(Lnbisdk/qk;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    invoke-static {p1, v1}, Lnbisdk/cy;->a(Lnbisdk/qk;Lnbisdk/qk;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/cy;->fh:Lnbisdk/my;

    const-string v1, "base_map"

    invoke-virtual {v0, v1, p1}, Lnbisdk/my;->a(Ljava/lang/String;Lnbisdk/qk;)V

    const-string v0, "base_map"

    invoke-direct {p0, v0}, Lnbisdk/cy;->I(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    :cond_1
    return-void
.end method

.method public final cA()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    invoke-virtual {v0}, Lnbisdk/qk;->lZ()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final cB()I
    .locals 1

    iget-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    invoke-virtual {v0}, Lnbisdk/qk;->getMaxZoom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public final cE()I
    .locals 3

    const/16 v1, 0x100

    iget-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    invoke-virtual {v0}, Lnbisdk/qk;->cE()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/cy;->fg:Lnbisdk/bt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/cy;->fg:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x280

    if-ge v0, v2, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final dH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    iput-object v0, p0, Lnbisdk/cy;->fh:Lnbisdk/my;

    iput-object v0, p0, Lnbisdk/cy;->fg:Lnbisdk/bt;

    return-void
.end method

.method public final dI()Lnbisdk/qk;
    .locals 1

    iget-object v0, p0, Lnbisdk/cy;->ff:Lnbisdk/qk;

    return-object v0
.end method

.method public final dJ()I
    .locals 1

    invoke-virtual {p0}, Lnbisdk/cy;->cA()I

    move-result v0

    invoke-virtual {p0, v0}, Lnbisdk/cy;->y(I)I

    move-result v0

    return v0
.end method

.method public final dK()I
    .locals 1

    invoke-virtual {p0}, Lnbisdk/cy;->cB()I

    move-result v0

    invoke-virtual {p0, v0}, Lnbisdk/cy;->y(I)I

    move-result v0

    return v0
.end method

.method public final y(I)I
    .locals 2

    invoke-virtual {p0}, Lnbisdk/cy;->cE()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x2

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public final z(I)I
    .locals 2

    invoke-virtual {p0}, Lnbisdk/cy;->cE()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x2

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
