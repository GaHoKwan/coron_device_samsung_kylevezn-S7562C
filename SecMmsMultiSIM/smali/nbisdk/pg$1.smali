.class final Lnbisdk/pg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/pg;->nZ()V
.end annotation


# direct methods
.method constructor <init>(Lnbisdk/pg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lnbisdk/jt;

    check-cast p2, Lnbisdk/jt;

    invoke-virtual {p1}, Lnbisdk/jt;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lnbisdk/jt;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
