.class public final Lnbisdk/pb;
.super Lnbisdk/uz;


# instance fields
.field private uG:Lnbisdk/lq;


# direct methods
.method public constructor <init>(Lnbisdk/lq;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnbisdk/uz;-><init>(Lnbisdk/de;D)V

    iput-object p1, p0, Lnbisdk/pb;->uG:Lnbisdk/lq;

    invoke-virtual {p0, p1}, Lnbisdk/uz;->c(Lnbisdk/de;)V

    return-void
.end method


# virtual methods
.method public final cX()Lnbisdk/de;
    .locals 1

    invoke-super {p0}, Lnbisdk/uz;->cX()Lnbisdk/de;

    move-result-object v0

    return-object v0
.end method

.method public final le()Lnbisdk/lq;
    .locals 1

    iget-object v0, p0, Lnbisdk/pb;->uG:Lnbisdk/lq;

    return-object v0
.end method
