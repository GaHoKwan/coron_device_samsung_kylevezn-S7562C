.class public final Lnbisdk/zp;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/hg;


# static fields
.field private static Fy:Ljava/util/Hashtable;


# instance fields
.field private Ek:D

.field private FA:Lnbisdk/vz;

.field private Fv:S

.field private Fw:Lnbisdk/de;

.field private Fx:Lnbisdk/de;

.field private Fz:[Lnbisdk/cl;

.field private P:[B

.field private aR:Ljava/util/Vector;

.field private c:Lnbisdk/zc;

.field private cA:D

.field private cX:D

.field private dd:D

.field private ip:I

.field private jg:Ljava/util/Vector;

.field private pQ:D

.field private vb:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnbisdk/zp;->Fy:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lnbisdk/zc;Lnbisdk/vz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/zp;->jg:Ljava/util/Vector;

    const/16 v0, 0xbb8

    iput-short v0, p0, Lnbisdk/zp;->Fv:S

    iput-object p1, p0, Lnbisdk/zp;->c:Lnbisdk/zc;

    iput-object p2, p0, Lnbisdk/zp;->FA:Lnbisdk/vz;

    return-void
.end method

.method public constructor <init>(Lnbisdk/zc;[Lnbisdk/lm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/zp;->jg:Ljava/util/Vector;

    const/16 v0, 0xbb8

    iput-short v0, p0, Lnbisdk/zp;->Fv:S

    iput-object p1, p0, Lnbisdk/zp;->c:Lnbisdk/zc;

    new-instance v0, Lnbisdk/vz;

    invoke-direct {v0, p2}, Lnbisdk/vz;-><init>([Lnbisdk/lm;)V

    iput-object v0, p0, Lnbisdk/zp;->FA:Lnbisdk/vz;

    return-void
.end method

.method private static a(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(Lnbisdk/ql;)V
    .locals 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extended-content-region"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lnbisdk/so;

    invoke-direct {v3, v0, p0}, Lnbisdk/so;-><init>(Lnbisdk/ql;Lnbisdk/hg;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lnbisdk/zp;->jg:Ljava/util/Vector;

    invoke-virtual {v3}, Lnbisdk/so;->bS()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lnbisdk/zp;->a(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/zp;->jg:Ljava/util/Vector;

    invoke-virtual {v3}, Lnbisdk/so;->bS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v3}, Lnbisdk/so;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/xo;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Received extended content regions"

    invoke-static {v0}, Lnbisdk/xo;->h(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static pt()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lnbisdk/zp;->Fy:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private z(Lnbisdk/ql;)V
    .locals 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "speed-region"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lnbisdk/gs;

    invoke-direct {v3, v0, p0}, Lnbisdk/gs;-><init>(Lnbisdk/ql;Lnbisdk/hg;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lnbisdk/gs;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/xo;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Received Speed Limit regions"

    invoke-static {v0}, Lnbisdk/xo;->h(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(IZZ)Lnbisdk/in;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/zp;->FA:Lnbisdk/vz;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/zp;->FA:Lnbisdk/vz;

    invoke-virtual {v0}, Lnbisdk/vz;->op()Lnbisdk/ua;

    move-result-object v0

    const/4 v2, 0x1

    const-string v4, "static-text"

    iget-object v1, p0, Lnbisdk/zp;->c:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->pj()Lnbisdk/vu;

    move-result-object v5

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/ua;->a(IZZLjava/lang/String;Lnbisdk/vu;)Lnbisdk/in;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lnbisdk/zp;->ht()I

    move-result v1

    iput-wide v2, p0, Lnbisdk/zp;->cA:D

    iput-wide v2, p0, Lnbisdk/zp;->cX:D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-wide v2, p0, Lnbisdk/zp;->cX:D

    invoke-virtual {p0, v0}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/pn;->lt()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lnbisdk/zp;->cX:D

    iget-wide v2, p0, Lnbisdk/zp;->cA:D

    invoke-virtual {p0, v0}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/pn;->getDistance()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lnbisdk/zp;->cA:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/zp;->vb:D

    return-void
.end method

.method public final a(Lnbisdk/ql;Lnbisdk/zc;Lnbisdk/h;)V
    .locals 12

    const/16 v3, 0xbb8

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v7

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v4

    iput-object v4, p0, Lnbisdk/zp;->Fw:Lnbisdk/de;

    invoke-virtual {p3}, Lnbisdk/h;->j()Lnbisdk/de;

    move-result-object v4

    iput-object v4, p0, Lnbisdk/zp;->Fx:Lnbisdk/de;

    move v5, v3

    move-wide v3, v1

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v6, "nav-maneuver"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Lnbisdk/yo;

    invoke-direct {v1, v0, v3, v4, v2}, Lnbisdk/yo;-><init>(Lnbisdk/ql;DI)V

    invoke-virtual {v1}, Lnbisdk/yo;->getDistance()D

    move-result-wide v8

    add-double/2addr v3, v8

    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v6, "file"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v1, "name"

    invoke-static {v0, v1}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "data"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v6, Lnbisdk/zp;->Fy:Ljava/util/Hashtable;

    invoke-virtual {v6, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v6, "origin-location"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {p3}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v8

    const-wide v10, -0x3f70c80000000000L

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_f

    invoke-virtual {v1}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v8

    const-wide v10, -0x3f70c80000000000L

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_f

    invoke-virtual {v1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_3
    invoke-virtual {v1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_4
    invoke-virtual {v1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_5
    invoke-virtual {v1}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_6
    invoke-virtual {v1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_7
    invoke-virtual {v1}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_8
    invoke-virtual {v1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_9
    invoke-virtual {v1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_a
    invoke-virtual {v1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    :cond_b
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_e

    invoke-virtual {v6}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/lc;->getType()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_11

    invoke-virtual {v1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    invoke-virtual {v1}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    :cond_e
    new-instance v1, Lnbisdk/bo;

    invoke-direct {v1, v0}, Lnbisdk/bo;-><init>(Lnbisdk/ql;)V

    new-instance v0, Lnbisdk/de;

    iget-object v6, v1, Lnbisdk/bo;->L:Ljava/lang/String;

    invoke-virtual {v1}, Lnbisdk/bo;->bJ()Lnbisdk/lc;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lnbisdk/de;-><init>(Ljava/lang/String;Lnbisdk/lc;)V

    iput-object v0, p0, Lnbisdk/zp;->Fw:Lnbisdk/de;

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto :goto_1

    :cond_10
    const/4 v1, 0x0

    goto :goto_2

    :cond_11
    invoke-virtual {v1}, Lnbisdk/lc;->getType()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_13

    invoke-virtual {v1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_2

    :cond_12
    const/4 v1, 0x0

    goto :goto_2

    :cond_13
    invoke-virtual {v1}, Lnbisdk/lc;->getType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_15

    invoke-virtual {v1}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_2

    :cond_14
    const/4 v1, 0x0

    goto :goto_2

    :cond_15
    const/4 v1, 0x0

    goto :goto_2

    :cond_16
    const-string v6, "destination-location"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    new-instance v1, Lnbisdk/bo;

    invoke-direct {v1, v0}, Lnbisdk/bo;-><init>(Lnbisdk/ql;)V

    const-string v0, "Updating destination with the one from nav reply"

    invoke-static {v0}, Lnbisdk/xo;->h(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lnbisdk/h;->j()Lnbisdk/de;

    move-result-object v0

    new-instance v6, Lnbisdk/de;

    invoke-direct {v6}, Lnbisdk/de;-><init>()V

    invoke-virtual {v6, v0}, Lnbisdk/de;->b(Lnbisdk/de;)V

    invoke-virtual {v1}, Lnbisdk/bo;->bJ()Lnbisdk/lc;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnbisdk/de;->d(Lnbisdk/lc;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated destination: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/xo;->h(Ljava/lang/Object;)V

    iput-object v6, p0, Lnbisdk/zp;->Fx:Lnbisdk/de;

    goto/16 :goto_0

    :cond_17
    const-string v6, "route-error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string v1, "type"

    invoke-static {v0, v1}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad-origin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0xbbb

    :goto_3
    move v5, v0

    goto/16 :goto_0

    :cond_18
    const-string v1, "bad-destination"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0xbba

    goto :goto_3

    :cond_19
    const-string v1, "no-route"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0xbbc

    goto :goto_3

    :cond_1a
    const-string v1, "no-detour"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v0, 0xbc2

    goto :goto_3

    :cond_1b
    const-string v1, "empty-route"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v0, 0xbbd

    goto :goto_3

    :cond_1c
    const-string v1, "ped-route-too-long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xbc3

    goto :goto_3

    :cond_1d
    const/16 v0, 0xbb8

    goto :goto_3

    :cond_1e
    const-string v6, "route-map"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v8, Lnbisdk/as;

    const-string v0, "route-map"

    invoke-static {p1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v6, 0xc8

    invoke-direct {v8, v0, v1, v6}, Lnbisdk/as;-><init>(Lnbisdk/ql;II)V

    iget-object v0, v8, Lnbisdk/as;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v9

    invoke-virtual {p2}, Lnbisdk/zc;->pm()Lnbisdk/yc;

    move-result-object v0

    check-cast v0, Lnbisdk/yc;

    const/4 v1, 0x0

    move v6, v1

    :goto_4
    if-ge v6, v9, :cond_0

    iget-object v1, v8, Lnbisdk/as;->aB:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/uc;

    invoke-virtual {v0, v1}, Lnbisdk/yc;->a(Lnbisdk/uc;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    :cond_1f
    const-string v6, "ferry-on-route"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v1, "num-ferries"

    invoke-virtual {v0, v1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput v0, p0, Lnbisdk/zp;->ip:I

    goto/16 :goto_0

    :cond_20
    const-string v6, "route-extents"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v1, "box"

    invoke-static {v0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/ql;->aF(I)Lnbisdk/ql;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lnbisdk/ql;->aF(I)Lnbisdk/ql;

    move-result-object v0

    new-instance v6, Lnbisdk/ew;

    const-string v8, "lat"

    invoke-static {v1, v8}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "lon"

    invoke-static {v1, v10}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lnbisdk/ew;-><init>(DD)V

    new-instance v1, Lnbisdk/ew;

    const-string v8, "lat"

    invoke-static {v0, v8}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "lon"

    invoke-static {v0, v10}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v1, v8, v9, v10, v11}, Lnbisdk/ew;-><init>(DD)V

    const/4 v0, 0x2

    new-array v0, v0, [Lnbisdk/cl;

    const/4 v8, 0x0

    aput-object v6, v0, v8

    const/4 v6, 0x1

    aput-object v1, v0, v6

    iput-object v0, p0, Lnbisdk/zp;->Fz:[Lnbisdk/cl;

    goto/16 :goto_0

    :cond_21
    const-string v6, "extended-content"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-direct {p0, v0}, Lnbisdk/zp;->b(Lnbisdk/ql;)V

    goto/16 :goto_0

    :cond_22
    const-string v6, "speed-limits-data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lnbisdk/zp;->z(Lnbisdk/ql;)V

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0xbb8

    if-ne v5, v0, :cond_24

    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_24

    const/16 v5, 0xbbd

    :cond_24
    iput-short v5, p0, Lnbisdk/zp;->Fv:S

    const-string v0, "route-id"

    invoke-static {p1, v0}, Lnbisdk/sx;->i(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lnbisdk/zp;->P:[B

    return-void
.end method

.method public final a(Lnbisdk/zp;)V
    .locals 5

    iget-wide v0, p1, Lnbisdk/zp;->vb:D

    iput-wide v0, p0, Lnbisdk/zp;->vb:D

    iget-wide v0, p1, Lnbisdk/zp;->Ek:D

    iput-wide v0, p0, Lnbisdk/zp;->Ek:D

    iget-wide v0, p1, Lnbisdk/zp;->pQ:D

    iput-wide v0, p0, Lnbisdk/zp;->pQ:D

    iget-wide v0, p1, Lnbisdk/zp;->dd:D

    iput-wide v0, p0, Lnbisdk/zp;->dd:D

    invoke-virtual {p1}, Lnbisdk/zp;->ht()I

    move-result v3

    invoke-virtual {p0}, Lnbisdk/zp;->ht()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    const/4 v0, 0x2

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v0

    check-cast v0, Lnbisdk/yo;

    invoke-virtual {p0, v2}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v1

    check-cast v1, Lnbisdk/yo;

    invoke-virtual {v1, v0}, Lnbisdk/yo;->a(Lnbisdk/yo;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final am()I
    .locals 1

    iget v0, p0, Lnbisdk/zp;->ip:I

    return v0
.end method

.method public final ar(I)Lnbisdk/pn;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/pn;

    goto :goto_0
.end method

.method public final as(I)J
    .locals 5

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/zp;->ht()I

    move-result v2

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, v2, :cond_1

    invoke-virtual {p0, p1}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v3

    invoke-interface {v3}, Lnbisdk/pn;->getTotalDelay()D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x403e

    add-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final at(I)D
    .locals 6

    invoke-virtual {p0}, Lnbisdk/zp;->ht()I

    move-result v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/pn;->getTotalDelay()D

    move-result-wide v4

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final au(I)J
    .locals 6

    invoke-virtual {p0}, Lnbisdk/zp;->ht()I

    move-result v3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/pn;->lt()D

    move-result-wide v4

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    double-to-long v0, v0

    return-wide v0
.end method

.method public final av(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x3

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/uk;->bg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b(IZ)Lnbisdk/ti;
    .locals 28

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/4 v2, -0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v2, Lnbisdk/ti;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    invoke-direct/range {v2 .. v19}, Lnbisdk/ti;-><init>(DIDZLnbisdk/pn;Lnbisdk/pn;IDIDZLnbisdk/pn;I)V

    :goto_0
    return-object v2

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/16 v20, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/4 v7, -0x1

    const/16 v19, -0x1

    invoke-virtual/range {p0 .. p1}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lnbisdk/zp;->ht()I

    move-result v21

    move/from16 v11, p1

    :goto_1
    move/from16 v0, v21

    if-ge v11, v0, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v10

    move/from16 v0, p1

    if-eq v11, v0, :cond_9

    invoke-interface {v10}, Lnbisdk/pn;->getDistance()D

    move-result-wide v7

    add-double/2addr v7, v2

    invoke-interface {v10}, Lnbisdk/pn;->bR()D

    move-result-wide v2

    const-wide/16 v22, 0x0

    cmpl-double v2, v2, v22

    if-eqz v2, :cond_2

    invoke-interface {v10}, Lnbisdk/pn;->getDistance()D

    move-result-wide v2

    invoke-interface {v10}, Lnbisdk/pn;->bR()D

    move-result-wide v22

    div-double v2, v2, v22

    :goto_2
    double-to-int v2, v2

    add-int/2addr v6, v2

    invoke-interface {v10}, Lnbisdk/pn;->getTotalDelay()D

    move-result-wide v2

    add-double/2addr v2, v4

    move v4, v6

    move-wide v5, v7

    :goto_3
    invoke-interface {v10}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnbisdk/uk;->bg(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v7, v11, 0x1

    move/from16 v24, v11

    move v11, v7

    move/from16 v7, v24

    move-wide/from16 v25, v2

    move-wide v2, v5

    move v6, v4

    move-wide/from16 v4, v25

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_3
    move v11, v7

    move-wide/from16 v24, v4

    move v5, v6

    move-wide/from16 v6, v24

    move-wide/from16 v26, v2

    move-wide/from16 v3, v26

    :goto_4
    move/from16 v8, v20

    move/from16 v20, p1

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v2

    move/from16 v0, v20

    if-le v0, v11, :cond_4

    invoke-interface {v2}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lnbisdk/uk;->bg(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    :cond_4
    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_6

    if-eqz v8, :cond_5

    invoke-interface {v2}, Lnbisdk/pn;->lq()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_6
    add-int/lit8 v8, v20, 0x1

    move/from16 v20, v8

    move v8, v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v2}, Lnbisdk/pn;->lq()Z

    move-result v2

    goto :goto_6

    :cond_7
    if-eqz p2, :cond_8

    add-int/lit8 v2, v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lnbisdk/zp;->b(IZ)Lnbisdk/ti;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/ti;->mC()D

    move-result-wide v12

    invoke-virtual {v2}, Lnbisdk/ti;->fj()I

    move-result v14

    invoke-virtual {v2}, Lnbisdk/ti;->be()D

    move-result-wide v15

    invoke-virtual {v2}, Lnbisdk/ti;->as()Z

    move-result v17

    invoke-virtual {v2}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v18

    invoke-virtual {v2}, Lnbisdk/ti;->am()I

    move-result v19

    :cond_8
    new-instance v2, Lnbisdk/ti;

    invoke-direct/range {v2 .. v19}, Lnbisdk/ti;-><init>(DIDZLnbisdk/pn;Lnbisdk/pn;IDIDZLnbisdk/pn;I)V

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v24, v4

    move v4, v6

    move-wide v5, v2

    move-wide/from16 v2, v24

    goto/16 :goto_3

    :cond_a
    move-wide/from16 v24, v2

    move/from16 v26, v4

    move-wide v3, v5

    move-wide/from16 v6, v24

    move/from16 v5, v26

    goto :goto_4
.end method

.method public final c(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/zp;->dd:D

    return-void
.end method

.method public final getRouteError()S
    .locals 1

    iget-short v0, p0, Lnbisdk/zp;->Fv:S

    return v0
.end method

.method public final getRouteID()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/zp;->P:[B

    return-object v0
.end method

.method public final getTotalDistance()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/zp;->cA:D

    return-wide v0
.end method

.method public final ht()I
    .locals 1

    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final hu()[Lnbisdk/cl;
    .locals 1

    iget-object v0, p0, Lnbisdk/zp;->Fz:[Lnbisdk/cl;

    return-object v0
.end method

.method public final j(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/zp;->FA:Lnbisdk/vz;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/zp;->c:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->pj()Lnbisdk/vu;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnbisdk/vu;->k(I)V

    iget-object v0, p0, Lnbisdk/zp;->FA:Lnbisdk/vz;

    invoke-virtual {v0}, Lnbisdk/vz;->oo()Lnbisdk/ua;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lnbisdk/zp;->c:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->pj()Lnbisdk/vu;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lnbisdk/ua;->a(IZLnbisdk/vu;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/zp;->c:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->pj()Lnbisdk/vu;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/vu;->R()V

    :cond_0
    return-object v0
.end method

.method public final j()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/zp;->Fx:Lnbisdk/de;

    return-object v0
.end method

.method public final k()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/zp;->Fw:Lnbisdk/de;

    return-object v0
.end method

.method public final pu()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->lw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pv()V
    .locals 5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lnbisdk/zp;->aR:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yo;

    invoke-virtual {p0, v1}, Lnbisdk/zp;->av(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v2}, Lnbisdk/yo;->a(Ljava/util/Vector;)V

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final z(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/zp;->pQ:D

    return-void
.end method
