.class final Lnbisdk/ov;
.super Lnbisdk/ru;


# instance fields
.field private synthetic bx:I

.field private synthetic uD:Lnbisdk/oe;


# direct methods
.method constructor <init>(Lnbisdk/oe;I)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ov;->uD:Lnbisdk/oe;

    iput p2, p0, Lnbisdk/ov;->bx:I

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/ov;->uD:Lnbisdk/oe;

    iget-object v0, v0, Lnbisdk/oe;->us:Lnbisdk/ds;

    iget v1, p0, Lnbisdk/ov;->bx:I

    invoke-interface {v0, v1}, Lnbisdk/ds;->providerStateChanged(I)V

    return-void
.end method
