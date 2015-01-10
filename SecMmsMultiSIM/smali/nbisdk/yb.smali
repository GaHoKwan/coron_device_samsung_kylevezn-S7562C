.class public Lnbisdk/yb;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .locals 0

    invoke-static {p1, p0}, Lnbisdk/jx;->a(Ljava/util/Vector;Lnbisdk/fz;)V

    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lnbisdk/jd;

    check-cast p2, Lnbisdk/jd;

    iget-wide v0, p1, Lnbisdk/jd;->la:J

    iget-wide v2, p2, Lnbisdk/jd;->la:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
