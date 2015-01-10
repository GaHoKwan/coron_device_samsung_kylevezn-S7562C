.class final Lnbisdk/si;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# direct methods
.method constructor <init>(Lnbisdk/js;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lnbisdk/uh;

    invoke-virtual {p1}, Lnbisdk/uh;->hG()J

    move-result-wide v0

    check-cast p2, Lnbisdk/uh;

    invoke-virtual {p2}, Lnbisdk/uh;->hG()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
