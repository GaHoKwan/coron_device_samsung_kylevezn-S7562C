.class public final Lnbisdk/wv;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/rk;


# instance fields
.field private BR:Lnbisdk/mk;

.field private BS:Lnbisdk/wm;

.field private BT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lnbisdk/wv;->BT:I

    invoke-static {p1}, Lnbisdk/mk;->h(Landroid/content/Context;)Lnbisdk/mk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/wv;->BR:Lnbisdk/mk;

    return-void
.end method


# virtual methods
.method public final ao(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iput p1, p0, Lnbisdk/wv;->BT:I

    iget-object v0, p0, Lnbisdk/wv;->BS:Lnbisdk/wm;

    invoke-interface {v0, p1}, Lnbisdk/wm;->ao(I)V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/wv;->BS:Lnbisdk/wm;

    invoke-interface {v0}, Lnbisdk/wm;->close()V

    return-void
.end method

.method public final getTile(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/wv;->BS:Lnbisdk/wm;

    invoke-interface {v0, p1}, Lnbisdk/wm;->aj(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/wv;->BR:Lnbisdk/mk;

    const-string v1, "nbitilecache"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnbisdk/mk;->d(Ljava/lang/String;Z)Lnbisdk/cz;

    move-result-object v0

    check-cast v0, Lnbisdk/wm;

    iput-object v0, p0, Lnbisdk/wv;->BS:Lnbisdk/wm;

    return-void
.end method

.method public final putTile(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/wv;->BS:Lnbisdk/wm;

    invoke-interface {v0, p1, p2}, Lnbisdk/wm;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public final reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/wv;->BS:Lnbisdk/wm;

    invoke-interface {v0}, Lnbisdk/wm;->clear()V

    invoke-virtual {p0}, Lnbisdk/wv;->close()V

    invoke-virtual {p0}, Lnbisdk/wv;->open()V

    iget v0, p0, Lnbisdk/wv;->BT:I

    invoke-virtual {p0, v0}, Lnbisdk/wv;->ao(I)V

    return-void
.end method
