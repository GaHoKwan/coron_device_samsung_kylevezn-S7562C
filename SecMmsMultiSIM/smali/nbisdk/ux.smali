.class final Lnbisdk/ux;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/fz;


# instance fields
.field private synthetic AG:Lnbisdk/id;


# direct methods
.method constructor <init>(Lnbisdk/qs;Lnbisdk/id;)V
    .locals 0

    iput-object p2, p0, Lnbisdk/ux;->AG:Lnbisdk/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-object v0, p0, Lnbisdk/ux;->AG:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hL()Lnbisdk/fa;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lnbisdk/uh;

    invoke-virtual {v3, v0}, Lnbisdk/fa;->a(Lnbisdk/uh;)I

    move-result v3

    iget-object v0, p0, Lnbisdk/ux;->AG:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hL()Lnbisdk/fa;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lnbisdk/uh;

    invoke-virtual {v4, v0}, Lnbisdk/fa;->a(Lnbisdk/uh;)I

    move-result v0

    if-ge v3, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-le v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lnbisdk/uh;

    invoke-virtual {p1}, Lnbisdk/uh;->getId()I

    move-result v0

    check-cast p2, Lnbisdk/uh;

    invoke-virtual {p2}, Lnbisdk/uh;->getId()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
