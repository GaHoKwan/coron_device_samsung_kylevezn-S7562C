.class public Lnbisdk/bd;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/gw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnbisdk/mi;)Lnbisdk/ze;
    .locals 5

    new-instance v0, Lnbisdk/ze;

    const-string v1, "position"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lnbisdk/mi;->D()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    check-cast p0, Lnbisdk/cl;

    const-string v1, "variant"

    const-string v2, "point"

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "point"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    const-string v2, "lat"

    invoke-interface {p0}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v2, "lon"

    invoke-interface {p0}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_1
    check-cast p0, Lnbisdk/se;

    const-string v1, "variant"

    const-string v2, "gps"

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lnbisdk/hn;->c(Lnbisdk/se;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto :goto_0

    :pswitch_2
    check-cast p0, Lnbisdk/ic;

    const-string v1, "variant"

    const-string v2, "network"

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "networklocation-position"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "lat"

    invoke-virtual {p0}, Lnbisdk/ic;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v2, "lon"

    invoke-virtual {p0}, Lnbisdk/ic;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v2, "accuracy"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v2, "sourcetype"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto :goto_0

    :pswitch_3
    check-cast p0, Lnbisdk/j;

    const-string v1, "variant"

    const-string v2, "geographic-position"

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "geographic-position"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "lat"

    invoke-virtual {p0}, Lnbisdk/j;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v2, "lon"

    invoke-virtual {p0}, Lnbisdk/j;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v2, "accuracy"

    invoke-virtual {p0}, Lnbisdk/j;->getAccuracy()I

    move-result v3

    invoke-static {v1, v2, v3}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v2, "time"

    invoke-virtual {p0}, Lnbisdk/j;->getTime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
