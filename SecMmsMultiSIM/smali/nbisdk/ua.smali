.class public final Lnbisdk/ua;
.super Ljava/lang/Object;


# static fields
.field private static final P:[B

.field private static final X:[B

.field private static final aW:[B

.field private static final aZ:[B

.field private static final kG:[B

.field private static final oB:[B

.field private static final pR:[B

.field private static final yU:[B

.field private static final yV:[B

.field private static final yW:[B

.field private static final yX:[B

.field private static final yY:[B

.field private static final yZ:[B

.field private static final za:[B

.field private static final zb:[B

.field private static final zc:[B


# instance fields
.field private wl:Lnbisdk/ql;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "continue"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->aW:[B

    const-string v0, "show-turn"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->oB:[B

    const-string v0, "prepare"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->yU:[B

    const-string v0, "turn"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->aZ:[B

    const-string v0, "past-turn"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->P:[B

    const-string v0, "recalc"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->yV:[B

    const-string v0, "soft-recalc"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->yW:[B

    const-string v0, "recalc-confirm"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->yX:[B

    const-string v0, "recalc-traffic"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->yY:[B

    const-string v0, "traffic-congestion"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->X:[B

    const-string v0, "traffic-incident"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->yZ:[B

    const-string v0, "traffic-alert"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->za:[B

    const-string v0, "traffic-delay"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->kG:[B

    const-string v0, "calc"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->zb:[B

    const-string v0, "speed-limit-alert"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->pR:[B

    const-string v0, "speed-limit-sz-alert"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lnbisdk/ua;->zc:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILnbisdk/ql;Lnbisdk/vu;)Lnbisdk/ql;
    .locals 5

    const/4 v1, 0x0

    move-object v0, p2

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-left-side-traffic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3, p1}, Lnbisdk/vu;->bM(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-right-side-traffic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3, p1}, Lnbisdk/vu;->bM(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lnbisdk/ql;I[B[B)Lnbisdk/ql;
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v5

    move-object v1, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    if-eqz v0, :cond_7

    const-string v4, "instruction"

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "turn"

    invoke-static {v0, v4}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v4

    array-length v6, v4

    if-lez v6, :cond_2

    :goto_1
    invoke-static {v4, p3}, Lnbisdk/ju;->b([B[B)I

    move-result v4

    shl-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    const-string v4, "pos"

    invoke-static {v0, v4}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {p2}, Lnbisdk/ua;->aA(I)[B

    move-result-object v7

    if-eqz v4, :cond_1

    array-length v8, v4

    if-lez v8, :cond_1

    if-eqz v7, :cond_0

    invoke-static {v4, v7}, Lnbisdk/ju;->b([B[B)I

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const-string v4, "stacknext"

    invoke-static {v0, v4}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v4

    array-length v7, v4

    if-lez v7, :cond_3

    :goto_2
    invoke-static {v4, p4}, Lnbisdk/ju;->b([B[B)I

    move-result v4

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    add-int v7, v6, v4

    if-le v7, v2, :cond_6

    add-int v2, v6, v4

    move v1, v2

    :goto_3
    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    :goto_4
    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v4, v3

    goto :goto_1

    :cond_3
    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v0, v1

    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    move v1, v2

    goto :goto_3

    :cond_7
    move-object v0, v1

    move v1, v2

    goto :goto_4
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p4, p2, p1}, Lnbisdk/ua;->a(Lnbisdk/vu;Ljava/lang/String;I)Z

    move-result v1

    invoke-static {p4, p3, p1}, Lnbisdk/ua;->a(Lnbisdk/vu;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "start"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lnbisdk/vu;->ob()Lnbisdk/de;

    move-result-object v2

    :goto_0
    const-string v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lnbisdk/vu;->ob()Lnbisdk/de;

    move-result-object v1

    :cond_0
    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_2
    return v0

    :cond_2
    const-string v2, "destination"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lnbisdk/vu;->oc()Lnbisdk/de;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v3, "destination"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lnbisdk/vu;->oc()Lnbisdk/de;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Lnbisdk/de;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_5
    move-object v2, v1

    goto :goto_0
.end method

.method private a(Lnbisdk/ql;ILnbisdk/vu;)Z
    .locals 3

    const-string v0, "s1"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s2"

    invoke-static {p1, v1}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mdist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tripdist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p2, v0, v1, p3}, Lnbisdk/ua;->b(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v2, "triptime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "navpos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, p2, v0, v1, p3}, Lnbisdk/ua;->c(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string v2, "cardinal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "oname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "dname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "aname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "tcode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "scode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, p2, v0, v1, p3}, Lnbisdk/ua;->d(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z

    move-result v0

    goto :goto_0

    :cond_5
    const-string v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "destination"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {v0, v1, p3}, Lnbisdk/ua;->a(Ljava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z

    move-result v0

    goto :goto_0

    :cond_7
    const-string v2, "unnamed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, p2, v0, v1, p3}, Lnbisdk/ua;->a(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z

    move-result v0

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lnbisdk/vu;Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const-string v0, "unnamed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bK(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "navigating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnbisdk/vu;->aI()Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lnbisdk/vu;I)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lnbisdk/vu;->bH(I)I
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lnbisdk/vu;->bI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Lnbisdk/tk; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static aA(I)[B
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    sget-object v0, Lnbisdk/ua;->aW:[B

    goto :goto_0

    :pswitch_2
    sget-object v0, Lnbisdk/ua;->oB:[B

    goto :goto_0

    :pswitch_3
    sget-object v0, Lnbisdk/ua;->yU:[B

    goto :goto_0

    :pswitch_4
    sget-object v0, Lnbisdk/ua;->aZ:[B

    goto :goto_0

    :pswitch_5
    sget-object v0, Lnbisdk/ua;->P:[B

    goto :goto_0

    :pswitch_6
    sget-object v0, Lnbisdk/ua;->yV:[B

    goto :goto_0

    :pswitch_7
    sget-object v0, Lnbisdk/ua;->yW:[B

    goto :goto_0

    :pswitch_8
    sget-object v0, Lnbisdk/ua;->yX:[B

    goto :goto_0

    :pswitch_9
    sget-object v0, Lnbisdk/ua;->yY:[B

    goto :goto_0

    :pswitch_a
    sget-object v0, Lnbisdk/ua;->X:[B

    goto :goto_0

    :pswitch_b
    sget-object v0, Lnbisdk/ua;->yZ:[B

    goto :goto_0

    :pswitch_c
    sget-object v0, Lnbisdk/ua;->za:[B

    goto :goto_0

    :pswitch_d
    sget-object v0, Lnbisdk/ua;->kG:[B

    goto :goto_0

    :pswitch_e
    sget-object v0, Lnbisdk/ua;->zb:[B

    goto :goto_0

    :pswitch_f
    sget-object v0, Lnbisdk/ua;->pR:[B

    goto :goto_0

    :pswitch_10
    sget-object v0, Lnbisdk/ua;->zc:[B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private static b(Lnbisdk/vu;Ljava/lang/String;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const-string v0, "dist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bz(I)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "mdist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bA(I)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-string v0, "maxdist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/vu;->od()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-string v0, "aheaddist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bP(I)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    const-string v0, "tripremaindist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnbisdk/vu;->of()D

    move-result-wide v0

    goto :goto_0

    :cond_4
    const-string v0, "stackdist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnbisdk/vu;->oh()D

    move-result-wide v0

    goto :goto_0

    :cond_5
    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V
    .locals 9

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/ql;

    move-object v0, p2

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lnbisdk/sv;->a(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;Lnbisdk/ua;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p4, p2, p1}, Lnbisdk/ua;->b(Lnbisdk/vu;Ljava/lang/String;I)D

    move-result-wide v1

    invoke-static {p4, p3, p1}, Lnbisdk/ua;->b(Lnbisdk/vu;Ljava/lang/String;I)D
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Lnbisdk/vu;I)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lnbisdk/vu;->bH(I)I
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lnbisdk/vu;->bJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Lnbisdk/tk; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private bh(Ljava/lang/String;)Lnbisdk/ql;
    .locals 4

    iget-object v0, p0, Lnbisdk/ua;->wl:Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-virtual {v0}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v2

    const-string v3, "section"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "name"

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lnbisdk/vu;I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lnbisdk/vu;->bH(I)I
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(Lnbisdk/vu;Ljava/lang/String;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const-string v0, "triptime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/vu;->oa()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "navpos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bH(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    const-string v0, "step"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bN(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    const-string v0, "totalsteps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bO(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_3
    const-string v0, "tripremaintime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnbisdk/vu;->og()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p4, p2, p1}, Lnbisdk/ua;->c(Lnbisdk/vu;Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {p4, p3, p1}, Lnbisdk/ua;->c(Lnbisdk/vu;Ljava/lang/String;I)J
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Lnbisdk/vu;I)I
    .locals 2

    move v0, p1

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lnbisdk/vu;->bK(I)Z
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method private static d(Lnbisdk/vu;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const-string v0, "cardinal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bB(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "oname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bC(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bD(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "dname-base"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bE(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "aname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bF(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "aname-base"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bG(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "tcode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bI(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "scode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Lnbisdk/vu;->bJ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(ILjava/lang/String;Ljava/lang/String;Lnbisdk/vu;)Z
    .locals 2

    :try_start_0
    invoke-static {p4, p2, p1}, Lnbisdk/ua;->d(Lnbisdk/vu;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p3, p1}, Lnbisdk/ua;->d(Lnbisdk/vu;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lnbisdk/vu;I)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lnbisdk/vu;->bz(I)D

    move-result-wide v0

    invoke-static {p1, p2}, Lnbisdk/ua;->d(Lnbisdk/vu;I)I

    move-result v3

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-gt v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p1, v2}, Lnbisdk/vu;->bz(I)D
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final a(IZLnbisdk/vu;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1}, Lnbisdk/ua;->c(Lnbisdk/vu;I)I

    move-result v1

    invoke-static {p3, p1}, Lnbisdk/ua;->a(Lnbisdk/vu;I)[B

    move-result-object v2

    invoke-static {p3, p1}, Lnbisdk/ua;->b(Lnbisdk/vu;I)[B

    move-result-object v3

    const-string v4, "image"

    invoke-direct {p0, v4}, Lnbisdk/ua;->bh(Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v1, v2, v3}, Lnbisdk/ua;->a(Lnbisdk/ql;I[B[B)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1, p3}, Lnbisdk/ua;->a(ILnbisdk/ql;Lnbisdk/vu;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "id"

    invoke-static {v1, v2}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x400

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_0
.end method

.method public final a(IZZLjava/lang/String;Lnbisdk/vu;)Lnbisdk/in;
    .locals 7

    invoke-static {p5, p1}, Lnbisdk/ua;->c(Lnbisdk/vu;I)I

    move-result v0

    invoke-static {p5, p1}, Lnbisdk/ua;->a(Lnbisdk/vu;I)[B

    move-result-object v1

    invoke-static {p5, p1}, Lnbisdk/ua;->b(Lnbisdk/vu;I)[B

    move-result-object v2

    invoke-direct {p0, p4}, Lnbisdk/ua;->bh(Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v0, v1, v2}, Lnbisdk/ua;->a(Lnbisdk/ql;I[B[B)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lnbisdk/sv;

    invoke-direct {v2}, Lnbisdk/sv;-><init>()V

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    invoke-virtual {v2}, Lnbisdk/sv;->mB()Lnbisdk/in;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lnbisdk/lm;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "element is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lnbisdk/lm;->jt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    iput-object v0, p0, Lnbisdk/ua;->wl:Lnbisdk/ql;

    return-void
.end method

.method public final a(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p6, p4}, Lnbisdk/ua;->a(Lnbisdk/vu;I)[B

    move-result-object v4

    invoke-static {p6, p4}, Lnbisdk/ua;->b(Lnbisdk/vu;I)[B

    move-result-object v5

    const/4 v0, -0x3

    if-ne p4, v0, :cond_2

    :goto_0
    invoke-static {p6, v1}, Lnbisdk/ua;->a(Lnbisdk/vu;I)[B

    move-result-object v6

    const-string v0, "turn"

    invoke-static {p1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "stacknext"

    invoke-static {p1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v1

    const-string v0, "next"

    invoke-static {p1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    array-length v7, v3

    if-lez v7, :cond_3

    :goto_1
    invoke-static {v3, v4}, Lnbisdk/ju;->b([B[B)I

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v1

    if-lez v3, :cond_4

    :goto_2
    invoke-static {v1, v5}, Lnbisdk/ju;->b([B[B)I

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v0

    if-lez v1, :cond_0

    move-object v2, v0

    :cond_0
    invoke-static {v2, v6}, Lnbisdk/ju;->b([B[B)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    add-int/lit8 v1, p4, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-start-name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p6}, Lnbisdk/vu;->ob()Lnbisdk/de;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {p6}, Lnbisdk/vu;->W()Z

    move-result v1

    if-eqz v1, :cond_3b

    throw v0

    :cond_6
    :try_start_1
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-start-phonenum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p6}, Lnbisdk/vu;->ob()Lnbisdk/de;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/de;->getPhoneNumberCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-destination-name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p6}, Lnbisdk/vu;->oc()Lnbisdk/de;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-destination-phonenum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p6}, Lnbisdk/vu;->oc()Lnbisdk/de;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/de;->getPhoneNumberCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-oname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bC(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-dname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bD(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-dname-base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bE(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-aname"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bF(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-aname-base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bG(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "next"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-equal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-direct {p0, p1, p4, p6}, Lnbisdk/ua;->a(Lnbisdk/ql;ILnbisdk/vu;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-not-equal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {p0, p1, p4, p6}, Lnbisdk/ua;->a(Lnbisdk/ql;ILnbisdk/vu;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-stack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {p6, p4}, Lnbisdk/ua;->b(Lnbisdk/vu;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "if-not-stack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {p6, p4}, Lnbisdk/ua;->b(Lnbisdk/vu;I)[B

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_13
    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_14
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v4, "turn-sound"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p1}, Lnbisdk/ql;->iq()Lnbisdk/ql;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v4

    const-string v5, "section"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "name"

    invoke-static {v3, v4}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "traffic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v1, v0

    :cond_15
    if-nez v1, :cond_17

    invoke-virtual {p1}, Lnbisdk/ql;->iq()Lnbisdk/ql;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v4

    const-string v5, "instruction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "turn"

    invoke-static {v3, v4}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "turn"

    invoke-static {v3, v4}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_16
    move v1, v0

    :cond_17
    invoke-virtual {p6, p4}, Lnbisdk/vu;->bH(I)I

    move-result v3

    invoke-static {p6, p4}, Lnbisdk/ua;->a(Lnbisdk/vu;I)[B

    move-result-object v0

    if-eqz v1, :cond_40

    invoke-virtual {p6}, Lnbisdk/vu;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v5, v0

    :goto_6
    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    if-eqz v3, :cond_1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_3f

    invoke-static {v3}, Lnbisdk/ua;->aA(I)[B

    move-result-object v0

    move-object v4, v0

    :goto_7
    iget-object v0, p0, Lnbisdk/ua;->wl:Lnbisdk/ql;

    const-string v1, "turn-sounds"

    invoke-static {v0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v6

    :cond_18
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/ql;

    const-string v0, "pos"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "turn"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v7

    const-string v8, "define-turn-sound"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    array-length v7, v3

    if-lez v7, :cond_1b

    :goto_8
    invoke-static {v3, v4}, Lnbisdk/ju;->b([B[B)I

    move-result v3

    if-eqz v3, :cond_18

    array-length v3, v0

    if-lez v3, :cond_1c

    :goto_9
    invoke-static {v0, v5}, Lnbisdk/ju;->b([B[B)I

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_19
    invoke-virtual {v3}, Lnbisdk/ql;->iq()Lnbisdk/ql;

    move-result-object v3

    goto/16 :goto_4

    :cond_1a
    invoke-virtual {v3}, Lnbisdk/ql;->iq()Lnbisdk/ql;

    move-result-object v3

    goto/16 :goto_5

    :cond_1b
    move-object v3, v2

    goto :goto_8

    :cond_1c
    move-object v0, v2

    goto :goto_9

    :cond_1d
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stack-sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bH(I)I

    move-result v1

    invoke-static {p6, p4}, Lnbisdk/ua;->b(Lnbisdk/vu;I)[B

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1e

    array-length v3, v0

    if-nez v3, :cond_3e

    :cond_1e
    invoke-static {v1}, Lnbisdk/ua;->aA(I)[B

    move-result-object v0

    move-object v4, v0

    :goto_a
    iget-object v0, p0, Lnbisdk/ua;->wl:Lnbisdk/ql;

    const-string v1, "turn-sounds"

    invoke-static {v0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v6

    :cond_1f
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/ql;

    const-string v0, "pos"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "turn"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v7

    const-string v8, "define-turn-sound"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    array-length v7, v3

    if-lez v7, :cond_20

    :goto_b
    invoke-static {v3, v4}, Lnbisdk/ju;->b([B[B)I

    move-result v3

    if-eqz v3, :cond_1f

    array-length v3, v0

    if-lez v3, :cond_21

    :goto_c
    invoke-static {v0, v5}, Lnbisdk/ju;->b([B[B)I

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_20
    move-object v3, v2

    goto :goto_b

    :cond_21
    move-object v0, v2

    goto :goto_c

    :cond_22
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transition-sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bH(I)I

    move-result v1

    invoke-static {p6, p4}, Lnbisdk/ua;->a(Lnbisdk/vu;I)[B

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_23

    array-length v3, v0

    if-nez v3, :cond_3d

    :cond_23
    invoke-static {v1}, Lnbisdk/ua;->aA(I)[B

    move-result-object v0

    move-object v4, v0

    :goto_d
    iget-object v0, p0, Lnbisdk/ua;->wl:Lnbisdk/ql;

    const-string v1, "transition-sounds"

    invoke-static {v0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v6

    :cond_24
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/ql;

    const-string v0, "pos"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "turn"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v7

    const-string v8, "define-transition-sound"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    array-length v7, v3

    if-lez v7, :cond_25

    :goto_e
    invoke-static {v3, v4}, Lnbisdk/ju;->b([B[B)I

    move-result v3

    if-eqz v3, :cond_24

    array-length v3, v0

    if-lez v3, :cond_26

    :goto_f
    invoke-static {v0, v5}, Lnbisdk/ju;->b([B[B)I

    move-result v0

    if-eqz v0, :cond_24

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_25
    move-object v3, v2

    goto :goto_e

    :cond_26
    move-object v0, v2

    goto :goto_f

    :cond_27
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stack-transition-sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bH(I)I

    move-result v1

    invoke-static {p6, p4}, Lnbisdk/ua;->b(Lnbisdk/vu;I)[B

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "pos"

    invoke-static {p1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_28

    array-length v3, v0

    if-nez v3, :cond_3c

    :cond_28
    invoke-static {v1}, Lnbisdk/ua;->aA(I)[B

    move-result-object v0

    move-object v4, v0

    :goto_10
    iget-object v0, p0, Lnbisdk/ua;->wl:Lnbisdk/ql;

    const-string v1, "transition-sounds"

    invoke-static {v0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v6

    :cond_29
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/ql;

    const-string v0, "pos"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "turn"

    invoke-static {v1, v0}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v7

    const-string v8, "define-transition-sound"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    array-length v7, v3

    if-lez v7, :cond_2a

    :goto_11
    invoke-static {v3, v4}, Lnbisdk/ju;->b([B[B)I

    move-result v3

    if-eqz v3, :cond_29

    array-length v3, v0

    if-lez v3, :cond_2b

    :goto_12
    invoke-static {v0, v5}, Lnbisdk/ju;->b([B[B)I

    move-result v0

    if-eqz v0, :cond_29

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_2a
    move-object v3, v2

    goto :goto_11

    :cond_2b
    move-object v0, v2

    goto :goto_12

    :cond_2c
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-unnamed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bK(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_2d
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-not-unnamed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bK(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_2e
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-toward-name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bL(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_2f
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-not-toward-name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bL(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_30
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-next-named"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p6, p4}, Lnbisdk/ua;->d(Lnbisdk/vu;I)I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_31
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-not-next-named"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p6, p4}, Lnbisdk/ua;->d(Lnbisdk/vu;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_32
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "next-named"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p6, p4}, Lnbisdk/ua;->d(Lnbisdk/vu;I)I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_33
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-lookahead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p3, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_34
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-not-lookahead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p3, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_35
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-next-named-dist-lt-max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0, p6, p4}, Lnbisdk/ua;->e(Lnbisdk/vu;I)D

    move-result-wide v0

    invoke-virtual {p6}, Lnbisdk/vu;->od()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_36
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-navigating"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p6}, Lnbisdk/vu;->aI()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_37
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-not-navigating"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p6}, Lnbisdk/vu;->aI()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_38
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-ferry-on-route"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p6}, Lnbisdk/vu;->ok()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_39
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if-show-speed-camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p6}, Lnbisdk/vu;->on()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V

    goto/16 :goto_3

    :cond_3a
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "next-significant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p6, p4}, Lnbisdk/vu;->bQ(I)I

    move-result v4

    if-eq v4, v5, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnbisdk/ua;->b(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V
    :try_end_1
    .catch Lnbisdk/tk; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_3b
    const-wide/16 v1, 0x400

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto/16 :goto_3

    :cond_3c
    move-object v4, v0

    goto/16 :goto_10

    :cond_3d
    move-object v4, v0

    goto/16 :goto_d

    :cond_3e
    move-object v4, v0

    goto/16 :goto_a

    :cond_3f
    move-object v4, v0

    goto/16 :goto_7

    :cond_40
    move-object v5, v0

    goto/16 :goto_6
.end method
