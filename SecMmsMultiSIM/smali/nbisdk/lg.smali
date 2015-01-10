.class public final Lnbisdk/lg;
.super Lnbisdk/gu;


# instance fields
.field private N:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnbisdk/mi;Ljava/lang/String;I)V
    .locals 2

    const-wide v0, -0x3f70c80000000000L

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lnbisdk/gu;-><init>(Lnbisdk/mi;Ljava/lang/String;)V

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result style type parameter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Lnbisdk/ew;

    invoke-direct {p1, v0, v1, v0, v1}, Lnbisdk/ew;-><init>(DD)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lnbisdk/fg;

    const-string v1, "single-search"

    invoke-direct {v0, v1}, Lnbisdk/fg;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    :goto_1
    return-void

    :pswitch_1
    new-instance v0, Lnbisdk/fg;

    const-string v1, "suggest"

    invoke-direct {v0, v1}, Lnbisdk/fg;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    goto :goto_1

    :pswitch_2
    new-instance v0, Lnbisdk/fg;

    const-string v1, "geocode"

    invoke-direct {v0, v1}, Lnbisdk/fg;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lnbisdk/mi;Ljava/lang/String;Lnbisdk/gw;)V
    .locals 2

    const-wide v0, -0x3f70c80000000000L

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lnbisdk/gu;-><init>(Lnbisdk/mi;Ljava/lang/String;)V

    iput-object p3, p0, Lnbisdk/dg;->fE:Lnbisdk/gw;

    return-void

    :cond_0
    new-instance p1, Lnbisdk/ew;

    invoke-direct {p1, v0, v1, v0, v1}, Lnbisdk/ew;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public final S(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lnbisdk/dg;->S(Ljava/lang/String;)V

    iput-object p1, p0, Lnbisdk/lg;->N:Ljava/lang/String;

    return-void
.end method

.method public final je()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/lg;->N:Ljava/lang/String;

    return-object v0
.end method
