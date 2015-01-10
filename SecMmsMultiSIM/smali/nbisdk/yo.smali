.class public final Lnbisdk/yo;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/pn;


# static fields
.field private static final tR:[D

.field private static final tS:[D


# instance fields
.field private Ee:Lnbisdk/ly;

.field private Ef:Lnbisdk/mx;

.field private Eg:Lnbisdk/mx;

.field private Eh:Lnbisdk/mx;

.field private Ei:Lnbisdk/em;

.field private Ej:Lnbisdk/ax;

.field private Ek:D

.field private El:D

.field private Em:D

.field private En:D

.field private Eo:Z

.field private Ep:Ljava/lang/String;

.field private Eq:Lnbisdk/vi;

.field private Er:Lnbisdk/yo;

.field private bG:Z

.field private cX:D

.field private cY:D

.field private cl:Ljava/lang/String;

.field private hG:D

.field private hX:I

.field private iG:Ljava/util/Vector;

.field private pN:D

.field private vD:Ljava/util/Vector;

.field private vE:Ljava/util/Vector;

.field private vb:D

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [D

    sput-object v0, Lnbisdk/yo;->tR:[D

    new-array v0, v1, [D

    sput-object v0, Lnbisdk/yo;->tS:[D

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/yo;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/yo;->Eo:Z

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;DI)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/yo;->x:I

    iput-boolean v5, p0, Lnbisdk/yo;->Eo:Z

    iput p4, p0, Lnbisdk/yo;->hX:I

    iput-wide p2, p0, Lnbisdk/yo;->Em:D

    const-string v0, "polyline"

    invoke-virtual {p1, v0}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnbisdk/em;

    const-string v1, "polyline"

    invoke-virtual {p1, v1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/em;-><init>([B)V

    :goto_0
    iput-object v0, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    const-string v0, "speed"

    invoke-static {p1, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lnbisdk/yo;->hG:D

    const-string v0, "current-heading"

    invoke-static {p1, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lnbisdk/yo;->cY:D

    const-string v0, "max-instruction-distance"

    invoke-static {p1, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lnbisdk/yo;->pN:D

    const-string v0, "command"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/yo;->cl:Ljava/lang/String;

    const-string v0, "point"

    invoke-static {p1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lnbisdk/ly;

    invoke-direct {v1, v0}, Lnbisdk/ly;-><init>(Lnbisdk/ql;)V

    iput-object v1, p0, Lnbisdk/yo;->Ee:Lnbisdk/ly;

    :goto_1
    const-string v0, "distance"

    invoke-static {p1, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lnbisdk/yo;->cX:D

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/yo;->vE:Ljava/util/Vector;

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v2

    const-string v3, "current-roadinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lnbisdk/mx;

    invoke-direct {v2, v0}, Lnbisdk/mx;-><init>(Lnbisdk/ql;)V

    iput-object v2, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    iget-object v0, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    invoke-virtual {v0}, Lnbisdk/mx;->kI()Lnbisdk/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    invoke-virtual {v0}, Lnbisdk/mx;->kJ()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/yo;->Eo:Z

    iget-object v0, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    invoke-virtual {v0}, Lnbisdk/mx;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/yo;->Ep:Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-instance v0, Lnbisdk/em;

    invoke-direct {v0}, Lnbisdk/em;-><init>()V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lnbisdk/ly;

    invoke-direct {v0}, Lnbisdk/ly;-><init>()V

    iput-object v0, p0, Lnbisdk/yo;->Ee:Lnbisdk/ly;

    goto :goto_1

    :cond_3
    const-string v3, "turn-roadinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lnbisdk/mx;

    invoke-direct {v2, v0}, Lnbisdk/mx;-><init>(Lnbisdk/ql;)V

    iput-object v2, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    iget-object v0, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    invoke-virtual {v0}, Lnbisdk/mx;->kI()Lnbisdk/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    invoke-virtual {v0}, Lnbisdk/mx;->kJ()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/yo;->Eo:Z

    iget-object v0, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    invoke-virtual {v0}, Lnbisdk/mx;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/yo;->Ep:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v3, "intersection-roadinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lnbisdk/mx;

    invoke-direct {v2, v0}, Lnbisdk/mx;-><init>(Lnbisdk/ql;)V

    iput-object v2, p0, Lnbisdk/yo;->Eh:Lnbisdk/mx;

    goto :goto_2

    :cond_5
    const-string v3, "stack-advise"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v5, p0, Lnbisdk/yo;->bG:Z

    goto/16 :goto_2

    :cond_6
    const-string v3, "turn-map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Lnbisdk/ax;

    invoke-direct {v2, v0}, Lnbisdk/ax;-><init>(Lnbisdk/ql;)V

    iput-object v2, p0, Lnbisdk/yo;->Ej:Lnbisdk/ax;

    goto/16 :goto_2

    :cond_7
    const-string v3, "cross-street"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lnbisdk/yo;->vE:Ljava/util/Vector;

    const-string v3, "name"

    invoke-static {v0, v3}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lnbisdk/yo;->vE:Ljava/util/Vector;

    new-instance v3, Ljava/lang/Float;

    const-string v4, "progress"

    invoke-static {v0, v4}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    const-string v3, "traffic-region"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Lnbisdk/bs;

    iget-wide v3, p0, Lnbisdk/yo;->Em:D

    invoke-direct {v2, v0, v3, v4, p4}, Lnbisdk/bs;-><init>(Lnbisdk/ql;DI)V

    invoke-direct {p0, v2}, Lnbisdk/yo;->a(Lnbisdk/bs;)V

    goto/16 :goto_2

    :cond_9
    const-string v3, "realistic-sign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnbisdk/vi;

    invoke-direct {v2, v0}, Lnbisdk/vi;-><init>(Lnbisdk/ql;)V

    iput-object v2, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    if-nez v0, :cond_b

    new-instance v0, Lnbisdk/mx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnbisdk/mx;-><init>(Lnbisdk/ql;)V

    iput-object v0, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    :cond_b
    iget-object v0, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    if-eqz v0, :cond_c

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    invoke-virtual {v0}, Lnbisdk/vi;->nR()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    invoke-virtual {v1}, Lnbisdk/vi;->nS()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    invoke-virtual {v2}, Lnbisdk/vi;->ak()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    invoke-virtual {v3}, Lnbisdk/vi;->nT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p4}, Lnbisdk/ck;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method private a(Lnbisdk/bs;)V
    .locals 7

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bs;

    invoke-virtual {p1}, Lnbisdk/bs;->bV()D

    move-result-wide v3

    invoke-virtual {v0}, Lnbisdk/bs;->bV()D

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnbisdk/yo;->hX:I

    invoke-virtual {p1}, Lnbisdk/bs;->z()D

    move-result-wide v1

    invoke-virtual {p1}, Lnbisdk/bs;->getLength()D

    move-result-wide v3

    invoke-virtual {p1}, Lnbisdk/bs;->bU()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lnbisdk/db;->a(IDDLjava/lang/String;)V

    goto :goto_1
.end method

.method private oZ()D
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lnbisdk/yo;->hG:D

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lnbisdk/yo;->cX:D

    iget-wide v2, p0, Lnbisdk/yo;->hG:D

    div-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private pb()Z
    .locals 2

    const-string v0, "DT.U"

    iget-object v1, p0, Lnbisdk/yo;->cl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/Vector;)V
    .locals 11

    const/4 v2, 0x0

    new-instance v5, Lnbisdk/yo;

    invoke-direct {v5}, Lnbisdk/yo;-><init>()V

    iget-object v0, p0, Lnbisdk/yo;->Ee:Lnbisdk/ly;

    iput-object v0, v5, Lnbisdk/yo;->Ee:Lnbisdk/ly;

    iget-object v0, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    iput-object v0, v5, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    iget-object v0, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    iput-object v0, v5, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    iget-object v0, p0, Lnbisdk/yo;->Eh:Lnbisdk/mx;

    iput-object v0, v5, Lnbisdk/yo;->Eh:Lnbisdk/mx;

    iget-boolean v0, p0, Lnbisdk/yo;->bG:Z

    iput-boolean v0, v5, Lnbisdk/yo;->bG:Z

    iget-object v0, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    iput-object v0, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    iget-wide v0, p0, Lnbisdk/yo;->cX:D

    iput-wide v0, v5, Lnbisdk/yo;->cX:D

    iget-wide v0, p0, Lnbisdk/yo;->cY:D

    iput-wide v0, v5, Lnbisdk/yo;->cY:D

    iget-wide v0, p0, Lnbisdk/yo;->hG:D

    iput-wide v0, v5, Lnbisdk/yo;->hG:D

    iget-wide v0, p0, Lnbisdk/yo;->pN:D

    iput-wide v0, v5, Lnbisdk/yo;->pN:D

    iget-object v0, p0, Lnbisdk/yo;->cl:Ljava/lang/String;

    iput-object v0, v5, Lnbisdk/yo;->cl:Ljava/lang/String;

    iget-object v0, p0, Lnbisdk/yo;->Ej:Lnbisdk/ax;

    iput-object v0, v5, Lnbisdk/yo;->Ej:Lnbisdk/ax;

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    iput-object v0, v5, Lnbisdk/yo;->vD:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/yo;->vE:Ljava/util/Vector;

    iput-object v0, v5, Lnbisdk/yo;->vE:Ljava/util/Vector;

    iget-wide v0, p0, Lnbisdk/yo;->vb:D

    iput-wide v0, v5, Lnbisdk/yo;->vb:D

    iget-wide v0, p0, Lnbisdk/yo;->Ek:D

    iput-wide v0, v5, Lnbisdk/yo;->Ek:D

    iget-wide v0, p0, Lnbisdk/yo;->El:D

    iput-wide v0, v5, Lnbisdk/yo;->El:D

    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    iput-object v0, v5, Lnbisdk/yo;->iG:Ljava/util/Vector;

    iget-wide v0, p0, Lnbisdk/yo;->Em:D

    iput-wide v0, v5, Lnbisdk/yo;->Em:D

    iget v0, p0, Lnbisdk/yo;->hX:I

    iput v0, v5, Lnbisdk/yo;->hX:I

    iget-wide v0, p0, Lnbisdk/yo;->En:D

    iput-wide v0, v5, Lnbisdk/yo;->En:D

    iget v0, p0, Lnbisdk/yo;->x:I

    iput v0, v5, Lnbisdk/yo;->x:I

    iget-boolean v0, p0, Lnbisdk/yo;->Eo:Z

    iput-boolean v0, v5, Lnbisdk/yo;->Eo:Z

    iget-object v0, p0, Lnbisdk/yo;->Ep:Ljava/lang/String;

    iput-object v0, v5, Lnbisdk/yo;->Ep:Ljava/lang/String;

    iget-object v0, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    iput-object v0, v5, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    iget-object v0, p0, Lnbisdk/yo;->Er:Lnbisdk/yo;

    iput-object v0, v5, Lnbisdk/yo;->Er:Lnbisdk/yo;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v5, Lnbisdk/yo;->vD:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v5, Lnbisdk/yo;->iG:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v5, Lnbisdk/yo;->vE:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_5

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yo;

    iget-wide v7, v5, Lnbisdk/yo;->vb:D

    invoke-virtual {v0}, Lnbisdk/yo;->lt()D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, v5, Lnbisdk/yo;->vb:D

    iget-wide v7, v5, Lnbisdk/yo;->Ek:D

    invoke-virtual {v0}, Lnbisdk/yo;->lu()D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, v5, Lnbisdk/yo;->Ek:D

    iget-wide v7, v5, Lnbisdk/yo;->cX:D

    iget-wide v9, v0, Lnbisdk/yo;->cX:D

    add-double/2addr v7, v9

    iput-wide v7, v5, Lnbisdk/yo;->cX:D

    iget-wide v7, v5, Lnbisdk/yo;->hG:D

    iget-wide v9, v0, Lnbisdk/yo;->hG:D

    add-double/2addr v7, v9

    iput-wide v7, v5, Lnbisdk/yo;->hG:D

    iget-wide v7, v5, Lnbisdk/yo;->El:D

    iget-wide v9, v0, Lnbisdk/yo;->El:D

    add-double/2addr v7, v9

    iput-wide v7, v5, Lnbisdk/yo;->El:D

    iget-object v1, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    if-nez v1, :cond_0

    iget-object v1, v0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    iput-object v1, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    :goto_1
    iget-object v7, v0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_1

    iget-object v9, v5, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/bs;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_0
    iget-object v1, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    iget-object v3, v0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    invoke-virtual {v1, v3}, Lnbisdk/em;->a(Lnbisdk/em;)Lnbisdk/em;

    move-result-object v1

    iput-object v1, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    move v3, v2

    :goto_3
    if-ge v3, v8, :cond_2

    iget-object v9, v5, Lnbisdk/yo;->iG:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/jh;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_2
    iget-object v3, v0, Lnbisdk/yo;->vE:Ljava/util/Vector;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    move v1, v2

    :goto_4
    if-ge v1, v7, :cond_3

    iget-object v8, v5, Lnbisdk/yo;->vE:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    if-nez v4, :cond_4

    iget-object v1, v0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    iput-object v1, v5, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    iget-wide v0, v0, Lnbisdk/yo;->Em:D

    iput-wide v0, v5, Lnbisdk/yo;->Em:D

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    if-nez v0, :cond_6

    iget-object v0, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    iput-object v0, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    :goto_5
    iget-object v3, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    move v1, v2

    :goto_6
    if-ge v1, v4, :cond_7

    iget-object v6, v5, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bs;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_6
    iget-object v0, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    iget-object v1, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    invoke-virtual {v0, v1}, Lnbisdk/em;->a(Lnbisdk/em;)Lnbisdk/em;

    move-result-object v0

    iput-object v0, v5, Lnbisdk/yo;->Ei:Lnbisdk/em;

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    move v1, v2

    :goto_7
    if-ge v1, v4, :cond_8

    iget-object v6, v5, Lnbisdk/yo;->iG:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jh;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lnbisdk/yo;->vE:Ljava/util/Vector;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v0, v2

    :goto_8
    if-ge v0, v3, :cond_9

    iget-object v2, v5, Lnbisdk/yo;->vE:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    iput-object v5, p0, Lnbisdk/yo;->Er:Lnbisdk/yo;

    return-void
.end method

.method final a(Lnbisdk/yo;)V
    .locals 6

    iget-object v0, p1, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    if-ge v2, v4, :cond_1

    iget-object v0, p1, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bs;

    iget-object v1, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/bs;

    invoke-virtual {v1, v0}, Lnbisdk/bs;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lnbisdk/bs;->bW()Z

    move-result v5

    invoke-virtual {v1, v5}, Lnbisdk/bs;->d(Z)V

    invoke-virtual {v0}, Lnbisdk/bs;->bX()Z

    move-result v0

    invoke-virtual {v1, v0}, Lnbisdk/bs;->e(Z)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lnbisdk/jh;)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jh;

    invoke-virtual {p1}, Lnbisdk/jh;->ip()D

    move-result-wide v5

    invoke-virtual {v0}, Lnbisdk/jh;->ip()D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-gez v0, :cond_4

    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_3

    invoke-static {v3, p1}, Lnbisdk/ck;->a(ILnbisdk/jh;)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final bR()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/yo;->hG:D

    return-wide v0
.end method

.method public final c(Lnbisdk/bq;)V
    .locals 9

    :goto_0
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/yo;->vb:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/yo;->Ek:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/yo;->El:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/yo;->En:D

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating traffic Flow for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnbisdk/yo;->hX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x200

    const/16 v1, 0x8

    invoke-static {v0, v3, v4, v1}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bs;

    invoke-virtual {v0}, Lnbisdk/bs;->bU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnbisdk/bq;->s(Ljava/lang/String;)Lnbisdk/bg;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lnbisdk/bg;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnbisdk/bs;->t(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnbisdk/bg;->bf()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnbisdk/bs;->b(D)V

    invoke-virtual {v3}, Lnbisdk/bg;->be()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnbisdk/bs;->a(D)V

    invoke-virtual {v0}, Lnbisdk/bs;->R()V

    invoke-virtual {v3}, Lnbisdk/bg;->bh()I

    move-result v4

    invoke-virtual {v0, v4}, Lnbisdk/bs;->k(I)V

    invoke-virtual {v3}, Lnbisdk/bg;->am()I

    move-result v4

    invoke-virtual {v0, v4}, Lnbisdk/bs;->l(I)V

    invoke-virtual {v3}, Lnbisdk/bg;->bd()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnbisdk/bs;->b(J)V

    sget-boolean v4, Lnbisdk/me;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lnbisdk/bg;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x200

    const/16 v6, 0x8

    invoke-static {v3, v4, v5, v6}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_3
    invoke-virtual {v0}, Lnbisdk/bs;->bR()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lnbisdk/bs;->bT()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lnbisdk/yo;->vb:D

    invoke-virtual {v0}, Lnbisdk/bs;->getLength()D

    move-result-wide v5

    invoke-virtual {v0}, Lnbisdk/bs;->bR()D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iput-wide v3, p0, Lnbisdk/yo;->vb:D

    iget-wide v3, p0, Lnbisdk/yo;->Ek:D

    invoke-virtual {v0}, Lnbisdk/bs;->getLength()D

    move-result-wide v5

    invoke-virtual {v0}, Lnbisdk/bs;->bT()D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iput-wide v3, p0, Lnbisdk/yo;->Ek:D

    :cond_4
    sget-boolean v3, Lnbisdk/me;->sE:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    iget-object v4, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    invoke-virtual {v4}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lnbisdk/ck;->a(ILnbisdk/bs;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    iget-wide v0, p0, Lnbisdk/yo;->vb:D

    iget-wide v2, p0, Lnbisdk/yo;->Ek:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    iget-wide v0, p0, Lnbisdk/yo;->vb:D

    iget-wide v2, p0, Lnbisdk/yo;->Ek:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lnbisdk/yo;->El:D

    iget-wide v0, p0, Lnbisdk/yo;->Ek:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    iget-wide v0, p0, Lnbisdk/yo;->El:D

    const-wide/high16 v2, 0x404e

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lnbisdk/yo;->El:D

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lnbisdk/yo;->Ek:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lnbisdk/yo;->En:D

    iget-wide v0, p0, Lnbisdk/yo;->En:D

    const-wide/high16 v2, 0x4059

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lnbisdk/yo;->En:D

    :cond_7
    iget-object v0, p0, Lnbisdk/yo;->Er:Lnbisdk/yo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnbisdk/yo;->Er:Lnbisdk/yo;

    goto/16 :goto_0
.end method

.method public final cb(I)Lnbisdk/bs;
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bs;

    return-object v0
.end method

.method public final getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistance()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/yo;->cX:D

    return-wide v0
.end method

.method public final getTotalDelay()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/yo;->El:D

    return-wide v0
.end method

.method public final im()V
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/yo;->iG:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    return-void
.end method

.method public final kJ()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/yo;->Eo:Z

    return v0
.end method

.method public final lo()Lnbisdk/em;
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    return-object v0
.end method

.method public final lp()Lnbisdk/ly;
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->Ee:Lnbisdk/ly;

    return-object v0
.end method

.method public final lq()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/yo;->bG:Z

    return v0
.end method

.method public final lr()Lnbisdk/mx;
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    return-object v0
.end method

.method public final ls()Lnbisdk/mx;
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    return-object v0
.end method

.method public final lt()D
    .locals 4

    invoke-direct {p0}, Lnbisdk/yo;->pb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lnbisdk/yo;->vb:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lnbisdk/yo;->oZ()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lnbisdk/yo;->vb:D

    goto :goto_0
.end method

.method public final lu()D
    .locals 4

    invoke-direct {p0}, Lnbisdk/yo;->pb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lnbisdk/yo;->Ek:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lnbisdk/yo;->oZ()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lnbisdk/yo;->Ek:D

    goto :goto_0
.end method

.method public final lv()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/yo;->Em:D

    return-wide v0
.end method

.method public final lw()Z
    .locals 2

    invoke-direct {p0}, Lnbisdk/yo;->pb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/yo;->cl:Ljava/lang/String;

    const-string v1, "DT."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final oY()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/yo;->cY:D

    return-wide v0
.end method

.method public final pa()I
    .locals 1

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/yo;->vD:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    const/4 v4, 0x0

    const-wide v10, 0x3f1a36e2eb1c432dL

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Maneuver-"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/yo;->hX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yo;->cl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Current Road="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yo;->Ef:Lnbisdk/mx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Turn Road="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yo;->Eg:Lnbisdk/mx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "distanceFromStartOfTrip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/yo;->Em:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/yo;->cX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/yo;->hG:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", currentHeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/yo;->cY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "actualTripTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/yo;->vb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", freeFlowTripTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/yo;->Ek:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lnbisdk/yo;->bG:Z

    if-eqz v0, :cond_0

    const-string v0, ",Stack advise"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    if-eqz v0, :cond_1

    const-string v0, ",Realistic sign="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    invoke-virtual {v1}, Lnbisdk/vi;->nR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", Sign Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yo;->Eq:Lnbisdk/vi;

    invoke-virtual {v1}, Lnbisdk/vi;->nS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    invoke-virtual {v0}, Lnbisdk/em;->fe()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lnbisdk/yo;->tR:[D

    sget-object v3, Lnbisdk/yo;->tS:[D

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lnbisdk/em;->a(I[D[D[D[D)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lnbisdk/yo;->tR:[D

    aget-wide v0, v0, v6

    sget-object v2, Lnbisdk/yo;->tS:[D

    aget-wide v2, v2, v6

    iget-object v4, p0, Lnbisdk/yo;->Ee:Lnbisdk/ly;

    iget-wide v4, v4, Lnbisdk/ly;->sp:D

    iget-object v8, p0, Lnbisdk/yo;->Ee:Lnbisdk/ly;

    iget-wide v8, v8, Lnbisdk/ly;->sq:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_3

    cmpg-double v0, v2, v10

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/yo;->Ei:Lnbisdk/em;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v6

    goto :goto_0
.end method
