.class public Lnbisdk/ax;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lnbisdk/ly;

    const-string v1, "point"

    invoke-static {p1, v1}, Lnbisdk/cj;->d(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/ly;-><init>(Lnbisdk/ql;)V

    new-instance v0, Lnbisdk/bk;

    const-string v1, "vector-map"

    invoke-static {p1, v1}, Lnbisdk/cj;->d(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/bk;-><init>(Lnbisdk/ql;)V

    const-string v0, "scale"

    invoke-static {p1, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    const-string v0, "rotation"

    invoke-static {p1, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    :cond_0
    return-void
.end method

.method public static aX()Lnbisdk/im;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const-string v0, "nbisdk.gy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/im;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    const-string v0, "nbisdk.ga"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/im;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    const-string v0, "nbisdk.nk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/im;

    goto :goto_0

    :cond_2
    const-string v0, "nbisdk.kg"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/im;

    goto :goto_0
.end method
