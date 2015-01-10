.class final Lnbisdk/ml;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/rk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/ml$a;
    }
.end annotation


# static fields
.field private static final sL:Lnbisdk/ml$a;


# instance fields
.field private final nn:Landroid/content/Context;

.field private final sM:Lnbisdk/rk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnbisdk/ml$a;

    invoke-direct {v0}, Lnbisdk/ml$a;-><init>()V

    sput-object v0, Lnbisdk/ml;->sL:Lnbisdk/ml$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnbisdk/rk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lnbisdk/ml;->nn:Landroid/content/Context;

    iput-object p2, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    return-void
.end method

.method private static aM(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lnbisdk/eu;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_base_map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "custom_overlay_map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jX()Lnbisdk/rk;
    .locals 1

    iget-object v0, p0, Lnbisdk/ml;->nn:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/pq;->l(Landroid/content/Context;)Lnbisdk/rk;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    :cond_0
    return-object v0
.end method

.method private jY()Lnbisdk/rk;
    .locals 1

    iget-object v0, p0, Lnbisdk/ml;->nn:Landroid/content/Context;

    invoke-static {v0}, Lnbisdk/pq;->l(Landroid/content/Context;)Lnbisdk/rk;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnbisdk/ml;->sL:Lnbisdk/ml$a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final ao(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    invoke-interface {v0, p1}, Lnbisdk/rk;->ao(I)V

    invoke-direct {p0}, Lnbisdk/ml;->jY()Lnbisdk/rk;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/rk;->ao(I)V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    invoke-interface {v0}, Lnbisdk/rk;->close()V

    invoke-direct {p0}, Lnbisdk/ml;->jY()Lnbisdk/rk;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/rk;->close()V

    return-void
.end method

.method public final getTile(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    invoke-static {p1}, Lnbisdk/ml;->aM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    invoke-interface {v0, p1}, Lnbisdk/rk;->getTile(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lnbisdk/ml;->jX()Lnbisdk/rk;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/rk;->getTile(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    invoke-interface {v0}, Lnbisdk/rk;->open()V

    invoke-direct {p0}, Lnbisdk/ml;->jY()Lnbisdk/rk;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/rk;->open()V

    return-void
.end method

.method public final putTile(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    invoke-static {p1}, Lnbisdk/ml;->aM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    invoke-interface {v0, p1, p2}, Lnbisdk/rk;->putTile(Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lnbisdk/ml;->jX()Lnbisdk/rk;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnbisdk/rk;->putTile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lnbisdk/ml;->sM:Lnbisdk/rk;

    invoke-interface {v0}, Lnbisdk/rk;->reset()V

    invoke-direct {p0}, Lnbisdk/ml;->jY()Lnbisdk/rk;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/rk;->reset()V

    return-void
.end method
