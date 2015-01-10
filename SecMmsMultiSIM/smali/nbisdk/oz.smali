.class final Lnbisdk/oz;
.super Lnbisdk/ru;


# instance fields
.field private synthetic uD:Lnbisdk/oe;

.field private synthetic uF:Lnbisdk/nb;


# direct methods
.method constructor <init>(Lnbisdk/oe;Lnbisdk/nb;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/oz;->uD:Lnbisdk/oe;

    iput-object p2, p0, Lnbisdk/oz;->uF:Lnbisdk/nb;

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/oz;->uD:Lnbisdk/oe;

    iget-object v0, v0, Lnbisdk/oe;->us:Lnbisdk/ds;

    iget-object v1, p0, Lnbisdk/oz;->uF:Lnbisdk/nb;

    invoke-interface {v0, v1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    return-void
.end method
