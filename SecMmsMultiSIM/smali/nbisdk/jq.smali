.class final Lnbisdk/jq;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# direct methods
.method constructor <init>(Lnbisdk/xp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lnbisdk/eu;

    check-cast p2, Lnbisdk/eu;

    invoke-virtual {p1}, Lnbisdk/eu;->fl()F

    move-result v0

    invoke-virtual {p2}, Lnbisdk/eu;->fl()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
