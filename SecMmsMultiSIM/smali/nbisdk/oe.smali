.class public final Lnbisdk/oe;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ds;


# instance fields
.field us:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/oe;->us:Lnbisdk/ds;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 1

    new-instance v0, Lnbisdk/oz;

    invoke-direct {v0, p0, p1}, Lnbisdk/oz;-><init>(Lnbisdk/oe;Lnbisdk/nb;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    new-instance v0, Lnbisdk/pa;

    invoke-direct {v0, p0, p1}, Lnbisdk/pa;-><init>(Lnbisdk/oe;I)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    return-void
.end method

.method public final onLocationError(I)V
    .locals 1

    new-instance v0, Lnbisdk/ox;

    invoke-direct {v0, p0, p1}, Lnbisdk/ox;-><init>(Lnbisdk/oe;I)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 1

    new-instance v0, Lnbisdk/ov;

    invoke-direct {v0, p0, p1}, Lnbisdk/ov;-><init>(Lnbisdk/oe;I)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    return-void
.end method
