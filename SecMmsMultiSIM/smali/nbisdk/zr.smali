.class public final Lnbisdk/zr;
.super Lnbisdk/km;

# interfaces
.implements Lnbisdk/ln;


# instance fields
.field aB:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnbisdk/km;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/zr;->aB:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final aO(I)Lnbisdk/lr;
    .locals 1

    iget-object v0, p0, Lnbisdk/zr;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/lr;

    return-object v0
.end method

.method public final getStoreCouponCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/zr;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
