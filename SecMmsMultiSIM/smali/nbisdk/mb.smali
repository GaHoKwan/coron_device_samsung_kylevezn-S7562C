.class public final Lnbisdk/mb;
.super Lnbisdk/uz;


# instance fields
.field private ss:Lnbisdk/ll;


# direct methods
.method public constructor <init>(Lnbisdk/ll;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnbisdk/uz;-><init>(Lnbisdk/de;D)V

    invoke-virtual {p0, p1}, Lnbisdk/mb;->a(Lnbisdk/ll;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ll;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/mb;->ss:Lnbisdk/ll;

    invoke-virtual {p0, p1}, Lnbisdk/uz;->c(Lnbisdk/de;)V

    return-void
.end method

.method public final cX()Lnbisdk/de;
    .locals 1

    invoke-super {p0}, Lnbisdk/uz;->cX()Lnbisdk/de;

    move-result-object v0

    return-object v0
.end method

.method public final jT()Lnbisdk/ll;
    .locals 1

    iget-object v0, p0, Lnbisdk/mb;->ss:Lnbisdk/ll;

    return-object v0
.end method
