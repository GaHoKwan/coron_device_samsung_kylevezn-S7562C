.class public Lnbisdk/vz;
.super Ljava/lang/Object;


# instance fields
.field private Bp:Lnbisdk/ys;


# direct methods
.method public constructor <init>([Lnbisdk/lm;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/ys;

    invoke-direct {v0}, Lnbisdk/ys;-><init>()V

    iput-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    iget-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    const-string v1, "text"

    const-string v2, "directions"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/ys;->a(Ljava/lang/String;Ljava/lang/String;Lnbisdk/lm;)V

    iget-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    const-string v1, "image"

    const-string v2, "images"

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/ys;->a(Ljava/lang/String;Ljava/lang/String;Lnbisdk/lm;)V

    iget-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    const-string v1, "voice"

    const-string v2, "config.tps"

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/ys;->a(Ljava/lang/String;Ljava/lang/String;Lnbisdk/lm;)V

    iget-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    invoke-virtual {v0}, Lnbisdk/ys;->P()V

    :cond_0
    return-void
.end method


# virtual methods
.method public oo()Lnbisdk/ua;
    .locals 2

    iget-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lnbisdk/ys;->bx(Ljava/lang/String;)Lnbisdk/ua;

    move-result-object v0

    return-object v0
.end method

.method public op()Lnbisdk/ua;
    .locals 2

    iget-object v0, p0, Lnbisdk/vz;->Bp:Lnbisdk/ys;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lnbisdk/ys;->bx(Ljava/lang/String;)Lnbisdk/ua;

    move-result-object v0

    return-object v0
.end method
