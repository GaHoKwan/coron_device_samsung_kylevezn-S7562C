.class public final Lnbisdk/id;
.super Ljava/lang/Object;


# static fields
.field private static bx:I


# instance fields
.field private O:Z

.field private aH:Z

.field private bG:Z

.field private bq:B

.field private eM:Z

.field private kp:Ljava/util/Vector;

.field private mI:Z

.field private mJ:Z

.field private mK:Lnbisdk/fa;

.field private mL:Lnbisdk/uh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lnbisdk/id;->bx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lnbisdk/id;->bq:B

    iput-boolean v1, p0, Lnbisdk/id;->aH:Z

    iput-boolean v1, p0, Lnbisdk/id;->O:Z

    iput-boolean v1, p0, Lnbisdk/id;->eM:Z

    iput-boolean v1, p0, Lnbisdk/id;->mI:Z

    iput-boolean v1, p0, Lnbisdk/id;->bG:Z

    iput-boolean v1, p0, Lnbisdk/id;->mJ:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    return-void
.end method

.method public static ay(I)V
    .locals 0

    sput p0, Lnbisdk/id;->bx:I

    return-void
.end method

.method private static hF()I
    .locals 1

    sget v0, Lnbisdk/id;->bx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnbisdk/id;->bx:I

    return v0
.end method

.method public static hG()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x12d53d80

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static hO()Z
    .locals 2

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bm(I)Z

    move-result v0

    return v0
.end method

.method public static hP()Z
    .locals 2

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bm(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(JIIF)Lnbisdk/uh;
    .locals 7

    new-instance v0, Lnbisdk/uh;

    const/16 v1, 0x8

    invoke-static {}, Lnbisdk/id;->hF()I

    move-result v2

    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    sget-wide v5, Lnbisdk/tt;->bp:J

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V

    invoke-virtual {v0, p1, p2}, Lnbisdk/uh;->q(J)V

    invoke-virtual {v0, p3}, Lnbisdk/uh;->bq(I)V

    invoke-virtual {v0, p4}, Lnbisdk/uh;->setDuration(I)V

    invoke-virtual {v0, p5}, Lnbisdk/uh;->f(F)V

    iget-object v1, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(JIILjava/lang/String;IFLjava/util/Vector;)Lnbisdk/uh;
    .locals 7

    new-instance v0, Lnbisdk/uh;

    const/16 v1, 0x9

    invoke-static {}, Lnbisdk/id;->hF()I

    move-result v2

    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    sget-wide v5, Lnbisdk/tt;->bp:J

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V

    invoke-virtual {v0, p1, p2}, Lnbisdk/uh;->q(J)V

    invoke-virtual {v0, p3}, Lnbisdk/uh;->bq(I)V

    invoke-virtual {v0, p4}, Lnbisdk/uh;->br(I)V

    invoke-virtual {v0, p5}, Lnbisdk/uh;->setState(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lnbisdk/uh;->f(F)V

    invoke-virtual {v0, p6}, Lnbisdk/uh;->setDuration(I)V

    invoke-virtual {v0, p8}, Lnbisdk/uh;->l(Ljava/util/Vector;)V

    iget-object v1, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lnbisdk/cs;Lnbisdk/cs;JLjava/lang/String;)Lnbisdk/uh;
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lnbisdk/uh;

    const/4 v1, 0x7

    invoke-static {}, Lnbisdk/id;->hF()I

    move-result v2

    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    sget-wide v5, Lnbisdk/tt;->bp:J

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V

    invoke-virtual {v0, p3, p4}, Lnbisdk/uh;->q(J)V

    invoke-virtual {v0, p5}, Lnbisdk/uh;->bi(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnbisdk/uh;->a(Lnbisdk/cs;)V

    invoke-virtual {v0, p2}, Lnbisdk/uh;->b(Lnbisdk/cs;)V

    iget-object v1, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lnbisdk/gw;Ljava/lang/String;Ljava/lang/String;)Lnbisdk/uh;
    .locals 7

    new-instance v0, Lnbisdk/uh;

    const/4 v1, 0x1

    invoke-static {}, Lnbisdk/id;->hF()I

    move-result v2

    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    sget-wide v5, Lnbisdk/tt;->bp:J

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V

    invoke-virtual {v0, p1}, Lnbisdk/uh;->a(Lnbisdk/gw;)V

    invoke-virtual {v0, p2}, Lnbisdk/uh;->bj(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lnbisdk/uh;->bk(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lnbisdk/hd;)Lnbisdk/uh;
    .locals 7

    new-instance v0, Lnbisdk/uh;

    const/16 v1, 0x10

    invoke-static {}, Lnbisdk/id;->hF()I

    move-result v2

    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    sget-wide v5, Lnbisdk/tt;->bp:J

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V

    invoke-virtual {v0, p1}, Lnbisdk/uh;->c(Lnbisdk/hd;)V

    iget-object v1, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lnbisdk/jv;)Lnbisdk/uh;
    .locals 7

    new-instance v0, Lnbisdk/uh;

    const/16 v1, 0x11

    invoke-static {}, Lnbisdk/id;->hF()I

    move-result v2

    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    sget-wide v5, Lnbisdk/tt;->bp:J

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V

    invoke-virtual {v0, p1}, Lnbisdk/uh;->c(Lnbisdk/jv;)V

    iget-object v1, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lnbisdk/se;[Lnbisdk/cw;)Lnbisdk/uh;
    .locals 10

    new-instance v0, Lnbisdk/uh;

    const/16 v1, 0xd

    invoke-static {}, Lnbisdk/id;->hF()I

    move-result v2

    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    sget-wide v5, Lnbisdk/tt;->bp:J

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V

    invoke-virtual {v0, p1, p2}, Lnbisdk/uh;->c(Lnbisdk/se;[Lnbisdk/cw;)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    array-length v1, p2

    if-ge v7, v1, :cond_0

    array-length v1, p2

    int-to-byte v2, v1

    aget-object v1, p2, v7

    invoke-virtual {v1}, Lnbisdk/cw;->dC()Ljava/lang/String;

    move-result-object v3

    aget-object v1, p2, v7

    invoke-virtual {v1}, Lnbisdk/cw;->getSSID()Ljava/lang/String;

    move-result-object v4

    aget-object v1, p2, v7

    invoke-virtual {v1}, Lnbisdk/qh;->jb()I

    move-result v5

    aget-object v1, p2, v7

    invoke-virtual {v1}, Lnbisdk/cw;->getTimeDelta()J

    move-result-wide v8

    long-to-int v6, v8

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lnbisdk/ck;->a(Lnbisdk/se;BLjava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b(Lnbisdk/fa;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/id;->mK:Lnbisdk/fa;

    return-void
.end method

.method public final b(Lnbisdk/uh;)V
    .locals 2

    invoke-virtual {p1}, Lnbisdk/uh;->ng()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lnbisdk/id;->mL:Lnbisdk/uh;

    :cond_0
    iget-object v0, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lnbisdk/uh;)Z
    .locals 2

    iget-object v0, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lnbisdk/id;->mL:Lnbisdk/uh;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lnbisdk/id;->mL:Lnbisdk/uh;

    :cond_0
    return v0
.end method

.method public final hD()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/id;->bq:B

    return v0
.end method

.method public final hE()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/id;->kp:Ljava/util/Vector;

    return-object v0
.end method

.method public final hH()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/id;->aH:Z

    return v0
.end method

.method public final hI()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/id;->O:Z

    return v0
.end method

.method public final hJ()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/id;->eM:Z

    return v0
.end method

.method public final hK()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/id;->mI:Z

    return v0
.end method

.method public final hL()Lnbisdk/fa;
    .locals 1

    iget-object v0, p0, Lnbisdk/id;->mK:Lnbisdk/fa;

    return-object v0
.end method

.method public final hM()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/id;->bG:Z

    return v0
.end method

.method public final hN()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/id;->mJ:Z

    return v0
.end method
