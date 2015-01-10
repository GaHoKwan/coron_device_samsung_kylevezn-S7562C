.class public Lnbisdk/av;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ev;


# instance fields
.field private bM:Ljava/util/Hashtable;

.field private bN:Ljava/lang/String;

.field private bO:Ljava/lang/String;

.field private bP:Ljava/lang/String;

.field private bQ:Lnbisdk/gv;

.field private bR:Z

.field private bS:Z

.field private bT:Ljava/lang/String;

.field private bU:Ljava/lang/String;

.field private bV:Ljava/lang/String;

.field private bW:Ljava/lang/String;

.field private bX:Ljava/lang/String;

.field private bY:Ljava/lang/String;

.field private bZ:Ljava/lang/String;

.field private ca:I

.field private cb:I

.field private cc:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnbisdk/av;->bR:Z

    iput v0, p0, Lnbisdk/av;->ca:I

    iput v0, p0, Lnbisdk/av;->cb:I

    iput v0, p0, Lnbisdk/av;->cc:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v0, "9999991234"

    invoke-virtual {p0, v0}, Lnbisdk/av;->j(Ljava/lang/String;)V

    const-string v0, "en-US"

    invoke-virtual {p0, v0}, Lnbisdk/av;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput p1, p0, Lnbisdk/av;->type:I

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/av;->bN:Ljava/lang/String;

    const-string v0, "RIM.BB9500"

    iput-object v0, p0, Lnbisdk/av;->bP:Ljava/lang/String;

    invoke-virtual {p0}, Lnbisdk/av;->aQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/av;->bN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lnbisdk/lc;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location object must be instance of com.navbuilder.nb.data.Location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lnbisdk/lc;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ", "

    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const-string v0, "My GPS Location"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-string v0, "In My Direction"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    :cond_4
    const-string v0, "Along My Route"

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    invoke-virtual {p1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v1, "Airport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    :cond_9
    const-string v1, "Lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(III)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput p1, p0, Lnbisdk/av;->ca:I

    iput p2, p0, Lnbisdk/av;->cb:I

    iput p3, p0, Lnbisdk/av;->cc:I

    return-void
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/av;->bN:Ljava/lang/String;

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/av;->bP:Ljava/lang/String;

    return-object v0
.end method

.method public aS()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v1, "config.locale"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aT()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v1, "config.user.identifier"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public aU()Lnbisdk/gv;
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lnbisdk/av;->bS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Lnbisdk/gv;

    invoke-direct {v0}, Lnbisdk/gv;-><init>()V

    iput-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget v0, p0, Lnbisdk/av;->type:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    const-string v1, "EPVSQrhmn2zvyMvfAH1YChO3mi2RcQB2drzC/KOG"

    invoke-virtual {v0, v1}, Lnbisdk/gv;->f(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lnbisdk/av;->getCarrier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    invoke-virtual {v1, v0}, Lnbisdk/gv;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    invoke-virtual {p0}, Lnbisdk/av;->aR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/gv;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/av;->bT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->l(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->r(Ljava/lang/String;)V

    iget v0, p0, Lnbisdk/av;->type:I

    if-ne v0, v3, :cond_6

    const-string v0, "qalog.nimupdate.com"

    move-object v1, p0

    :goto_1
    iput-object v0, v1, Lnbisdk/av;->bO:Ljava/lang/String;

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    iget-object v1, p0, Lnbisdk/av;->bO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->ae(Ljava/lang/String;)V

    iget v0, p0, Lnbisdk/av;->type:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    const/16 v1, 0x1fc0

    invoke-virtual {v0, v1}, Lnbisdk/gv;->al(I)V

    :goto_2
    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    invoke-virtual {p0}, Lnbisdk/av;->aS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/gv;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    invoke-virtual {p0}, Lnbisdk/av;->aT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/gv;->af(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    const-string v1, "D_TCP"

    invoke-virtual {v0, v1, v3}, Lnbisdk/gv;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    const-string v1, "HTTP"

    invoke-virtual {p0}, Lnbisdk/av;->aV()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/gv;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "map"

    const-string v3, "map,global"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "geocode"

    const-string v3, "geocode,global"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "reverse-geocode"

    const-string v3, "reverse-geocode,global"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "proxpoi"

    const-string v3, "proxpoi,global"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nav"

    const-string v3, "nav,global"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "coupon"

    const-string v3, "coupons"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnbisdk/gv;->b(Ljava/util/Hashtable;)V

    invoke-virtual {p0}, Lnbisdk/av;->getClientGuid()[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    invoke-virtual {v1, v0}, Lnbisdk/gv;->g([B)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    :cond_4
    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    return-object v0

    :cond_5
    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    invoke-virtual {p0}, Lnbisdk/av;->aQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/gv;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    invoke-virtual {v0}, Lnbisdk/gv;->getCarrier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Verizon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "nbi.nimlbs.net"

    move-object v1, p0

    goto/16 :goto_1

    :cond_7
    const-string v0, "ccnbi.nimlbs.net"

    move-object v1, p0

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    const/16 v1, 0x1fc1

    invoke-virtual {v0, v1}, Lnbisdk/gv;->al(I)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    const-string v1, "TLSMODE"

    const-string v2, "SECURE"

    invoke-virtual {v0, v1, v2}, Lnbisdk/gv;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/av;->bQ:Lnbisdk/gv;

    const-string v1, "TLS_SERVER_CN"

    const-string v2, "navbuilder-ssl.nimlbs.net"

    invoke-virtual {v0, v1, v2}, Lnbisdk/gv;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public aV()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aW()Ljava/io/InputStream;
    .locals 1

    iget v0, p0, Lnbisdk/av;->type:I

    invoke-static {v0}, Lnbisdk/bt$4;->g(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lnbisdk/di;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must be instance of com.navbuilder.nb.data.PhoneNumber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lnbisdk/di;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lnbisdk/di;->ep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lnbisdk/br;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must be an instance of com.navbuilder.nb.navigation.RouteOptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lnbisdk/br;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "avoid: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/br;->getAvoidFeatures()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "none"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "; camera type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/br;->bO()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "none"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v0, "; show: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/br;->bN()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "none"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/br;->bQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnbisdk/br;->bQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v0, "; route type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/br;->getRouteType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const-string v0, "none"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    const-string v0, "; vehicle type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnbisdk/br;->bM()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    const-string v0, "none"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnbisdk/br;->getAvoidFeatures()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_4

    const-string v3, "HOV lanes, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v3, v0, 0x2

    if-ne v3, v5, :cond_5

    const-string v3, "tolls, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit8 v3, v0, 0x4

    if-ne v3, v6, :cond_6

    const-string v3, "highways, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit8 v3, v0, 0x8

    if-ne v3, v7, :cond_7

    const-string v3, "unpaved roads, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit8 v0, v0, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_8

    const-string v0, "ferrys, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "default"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "speed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Lnbisdk/br;->bN()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v4, :cond_b

    const-string v3, "realistic signs, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    and-int/lit8 v3, v0, 0x2

    if-ne v3, v5, :cond_c

    const-string v3, "3D junctions, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit8 v3, v0, 0x4

    if-ne v3, v6, :cond_d

    const-string v3, "3D cities, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    and-int/lit8 v0, v0, 0x8

    if-ne v0, v7, :cond_e

    const-string v0, "places on map, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_3
    const-string v0, "easiest"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :pswitch_4
    const-string v0, "fastest"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :pswitch_5
    const-string v0, "shortest"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :pswitch_6
    const-string v0, "bicycle"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_7
    const-string v0, "car"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_8
    const-string v0, "pedestrian"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_9
    const-string v0, "truck"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public e(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "."

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lnbisdk/av;->type:I

    if-nez v0, :cond_0

    const-string v0, "5"

    goto :goto_0

    :cond_0
    const-string v0, "4"

    goto :goto_0

    :pswitch_3
    const-string v0, "lkdemo"

    goto :goto_0

    :pswitch_4
    const-string v0, "0"

    goto :goto_0

    :pswitch_5
    const-string v0, "256"

    goto :goto_0

    :pswitch_6
    const-string v0, "1000"

    goto :goto_0

    :pswitch_7
    const-string v0, "150"

    goto :goto_0

    :pswitch_8
    const-string v0, "UTF-8"

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lnbisdk/av;->ca:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget v0, p0, Lnbisdk/av;->cb:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    iget v0, p0, Lnbisdk/av;->cc:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lnbisdk/av;->aS()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    const-string v0, ""

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_e
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticationToken is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bN:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "carrier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v1, "config.carrier"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v1, "config.carrier"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientGuid()[B
    .locals 2

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v1, "config.client.guid"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bP:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v1, "config.locale"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isEnabled(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lnbisdk/av;->aU()Lnbisdk/gv;

    move-result-object v0

    const-string v1, "HTTP"

    invoke-virtual {v0, v1}, Lnbisdk/gv;->ag(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :sswitch_5
    move v0, v1

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_4
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x14 -> :sswitch_5
        0x17 -> :sswitch_6
        0x19 -> :sswitch_3
        0x24 -> :sswitch_6
        0x25 -> :sswitch_6
    .end sparse-switch
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    const-string v1, "config.user.identifier"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceUniqueId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceUniqueId is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bT:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bU:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bV:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bW:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bX:Ljava/lang/String;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/av;->bM:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bY:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/av;->bS:Z

    iput-object p1, p0, Lnbisdk/av;->bZ:Ljava/lang/String;

    return-void
.end method
