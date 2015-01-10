.class public Lnbisdk/bf;
.super Ljava/lang/Object;


# instance fields
.field private cx:Lnbisdk/lc;

.field private cy:Lnbisdk/pi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/lc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/pi;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnbisdk/pi;-><init>(II)V

    iput-object v0, p0, Lnbisdk/bf;->cy:Lnbisdk/pi;

    iput-object p1, p0, Lnbisdk/bf;->cx:Lnbisdk/lc;

    return-void
.end method

.method public constructor <init>(Lnbisdk/lc;Lnbisdk/gc;B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/pi;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnbisdk/pi;-><init>(II)V

    iput-object v0, p0, Lnbisdk/bf;->cy:Lnbisdk/pi;

    iput-object p1, p0, Lnbisdk/bf;->cx:Lnbisdk/lc;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    new-instance v0, Lnbisdk/pi;

    invoke-virtual {p2}, Lnbisdk/gc;->bb()Lnbisdk/pi;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/pi;->getEnd()I

    move-result v1

    invoke-virtual {p2}, Lnbisdk/gc;->bb()Lnbisdk/pi;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/pi;->getEnd()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v1, v2}, Lnbisdk/pi;-><init>(II)V

    iput-object v0, p0, Lnbisdk/bf;->cy:Lnbisdk/pi;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lnbisdk/pi;

    invoke-virtual {p2}, Lnbisdk/gc;->bb()Lnbisdk/pi;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/pi;->getStart()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {p2}, Lnbisdk/gc;->bb()Lnbisdk/pi;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/pi;->getStart()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnbisdk/pi;-><init>(II)V

    iput-object v0, p0, Lnbisdk/bf;->cy:Lnbisdk/pi;

    goto :goto_0
.end method

.method public static a(Lnbisdk/de;)Lnbisdk/ze;
    .locals 6

    new-instance v1, Lnbisdk/ze;

    const-string v0, "place"

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {p0}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {p0}, Lnbisdk/de;->getId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    new-instance v0, Lnbisdk/bo;

    invoke-virtual {p0}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-direct {v0, v2}, Lnbisdk/bo;-><init>(Lnbisdk/lc;)V

    invoke-virtual {v0}, Lnbisdk/bo;->bK()Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    invoke-virtual {p0}, Lnbisdk/de;->getPhoneNumberCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v2

    new-instance v3, Lnbisdk/ze;

    const-string v4, "phone"

    invoke-direct {v3, v4}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v4, "kind"

    invoke-virtual {v2}, Lnbisdk/di;->eq()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "country"

    invoke-virtual {v2}, Lnbisdk/di;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "area"

    invoke-virtual {v2}, Lnbisdk/di;->ep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "number"

    invoke-virtual {v2}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/de;->getCategoriesCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lnbisdk/de;->D(I)Lnbisdk/qc;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/g;->a(Lnbisdk/qc;)Lnbisdk/ze;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lnbisdk/qc;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lnbisdk/qc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lnbisdk/g;->a(Lnbisdk/qc;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_2
    return-object v1
.end method

.method public static c(Lnbisdk/ql;)Lnbisdk/de;
    .locals 8

    new-instance v1, Lnbisdk/de;

    invoke-direct {v1}, Lnbisdk/de;-><init>()V

    const-string v0, "name"

    invoke-static {p0, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/de;->setName(Ljava/lang/String;)V

    const-string v0, "modtime"

    invoke-virtual {p0, v0}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "modtime"

    invoke-static {p0, v0}, Lnbisdk/fw$a;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/de;->setServerModTime(J)V

    :cond_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    invoke-static {p0, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lnbisdk/de;->setId(I)V

    :cond_1
    new-instance v0, Lnbisdk/bo;

    const-string v2, "location"

    invoke-static {p0, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v2

    invoke-direct {v0, v2}, Lnbisdk/bo;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v0}, Lnbisdk/bo;->bJ()Lnbisdk/lc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/de;->c(Lnbisdk/lc;)V

    invoke-virtual {p0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lnbisdk/g;->a(Lnbisdk/ql;)Lnbisdk/qc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/de;->c(Lnbisdk/qc;)V

    goto :goto_0

    :cond_3
    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v3, "kind"

    invoke-static {v0, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "country"

    invoke-static {v0, v4}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "area"

    invoke-static {v0, v5}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "number"

    invoke-static {v0, v6}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    const-string v7, "secondary"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_1
    new-instance v3, Lnbisdk/di;

    invoke-direct {v3, v0, v4, v5, v6}, Lnbisdk/di;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnbisdk/de;->a(Lnbisdk/di;)V

    goto :goto_0

    :cond_5
    const-string v7, "national"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const-string v7, "mobile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    const-string v7, "fax"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_8
    const-string v4, "pair"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lnbisdk/bl;->g(Lnbisdk/ql;)Lnbisdk/vl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/de;->b(Lnbisdk/vl;)V

    goto :goto_0

    :cond_9
    return-object v1
.end method

.method public static d(Lnbisdk/ql;)Lnbisdk/nf;
    .locals 3

    new-instance v0, Lnbisdk/nf;

    invoke-direct {v0}, Lnbisdk/nf;-><init>()V

    invoke-static {p0}, Lnbisdk/bf;->c(Lnbisdk/ql;)Lnbisdk/de;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/de;->b(Lnbisdk/de;)V

    const-string v1, "speed-camera"

    invoke-static {p0, v1}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "speed-camera"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    const-string v2, "limit"

    invoke-static {v1, v2}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    const-string v2, "heading"

    invoke-static {v1, v2}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    const-string v2, "bi-directional"

    invoke-static {v1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    const-string v2, "status"

    invoke-static {v1, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "description"

    invoke-static {v1, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "camera-segment"

    invoke-static {v1, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lnbisdk/fv;

    invoke-direct {v2}, Lnbisdk/fv;-><init>()V

    const-string v2, "on-route"

    invoke-static {v1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    const-string v2, "man-num"

    invoke-static {v1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    const-string v2, "seg-num"

    invoke-static {v1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    :cond_0
    return-object v0
.end method

.method public static e(Lnbisdk/ql;)Lnbisdk/jh;
    .locals 12

    const/4 v11, 0x0

    new-instance v1, Lnbisdk/jh;

    invoke-direct {v1}, Lnbisdk/jh;-><init>()V

    invoke-static {p0}, Lnbisdk/bf;->c(Lnbisdk/ql;)Lnbisdk/de;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/de;->b(Lnbisdk/de;)V

    const-string v0, "traffic-incident"

    invoke-static {p0, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "traffic-incident"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    const-string v2, "type"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lnbisdk/jh;->aD(I)V

    const-string v2, "criticality"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "type"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    const-string v4, "utc-offset"

    invoke-static {v0, v4}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "entry-time"

    invoke-static {v0, v5}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lnbisdk/uy;->b(JI)J

    move-result-wide v5

    const-string v7, "start-time"

    invoke-static {v0, v7}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8, v4}, Lnbisdk/uy;->b(JI)J

    move-result-wide v7

    const-string v9, "end-time"

    invoke-static {v0, v9}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10, v4}, Lnbisdk/uy;->b(JI)J

    move-result-wide v9

    invoke-virtual {v1, v3}, Lnbisdk/jh;->setType(I)V

    invoke-virtual {v1, v2}, Lnbisdk/jh;->aB(I)V

    invoke-virtual {v1, v7, v8}, Lnbisdk/jh;->setStartTime(J)V

    invoke-virtual {v1, v5, v6}, Lnbisdk/jh;->l(J)V

    invoke-virtual {v1, v9, v10}, Lnbisdk/jh;->k(J)V

    invoke-virtual {v1, v5, v6}, Lnbisdk/jh;->m(J)V

    const-string v2, "road"

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/jh;->az(Ljava/lang/String;)V

    const-string v2, "description"

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lnbisdk/jh;->setDescription(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "oiid"

    invoke-virtual {v1, v0}, Lnbisdk/de;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lnbisdk/jh;->aE(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v1, v11}, Lnbisdk/jh;->aE(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lnbisdk/pi;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bf;->cy:Lnbisdk/pi;

    return-void
.end method

.method public ba()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lnbisdk/bf;->cx:Lnbisdk/lc;

    return-object v0
.end method

.method public bb()Lnbisdk/pi;
    .locals 1

    iget-object v0, p0, Lnbisdk/bf;->cy:Lnbisdk/pi;

    return-object v0
.end method

.method public bc()Lnbisdk/mi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
