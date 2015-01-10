.class public final Lnbisdk/go;
.super Ljava/lang/Object;


# static fields
.field private static lb:Lnbisdk/go;


# instance fields
.field private aB:Ljava/util/Vector;

.field private kY:Lnbisdk/qh;

.field private kZ:Lnbisdk/nb;

.field private la:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/go;->lb:Lnbisdk/go;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    iput-object v0, p0, Lnbisdk/go;->kY:Lnbisdk/qh;

    iput-object v0, p0, Lnbisdk/go;->kZ:Lnbisdk/nb;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/go;->la:J

    return-void
.end method

.method public static gA()Lnbisdk/go;
    .locals 1

    sget-object v0, Lnbisdk/go;->lb:Lnbisdk/go;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/go;

    invoke-direct {v0}, Lnbisdk/go;-><init>()V

    sput-object v0, Lnbisdk/go;->lb:Lnbisdk/go;

    :cond_0
    sget-object v0, Lnbisdk/go;->lb:Lnbisdk/go;

    return-object v0
.end method


# virtual methods
.method public final a(Lnbisdk/qh;Ljava/util/Vector;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    if-eq v0, p2, :cond_1

    iput-object p2, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lnbisdk/go;->kY:Lnbisdk/qh;

    if-ne v0, p1, :cond_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lnbisdk/go;->kY:Lnbisdk/qh;

    if-nez v0, :cond_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lnbisdk/go;->kY:Lnbisdk/qh;

    if-eqz v0, :cond_0

    :cond_4
    const-class v0, Lnbisdk/jn;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p1, Lnbisdk/jn;

    iget-object v0, p0, Lnbisdk/go;->kY:Lnbisdk/qh;

    check-cast v0, Lnbisdk/jn;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lnbisdk/jn;->gX()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/jn;->gX()I

    move-result v4

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lnbisdk/jn;->iH()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/jn;->iH()I

    move-result v4

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lnbisdk/jn;->iG()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/jn;->iG()I

    move-result v0

    if-eq v1, v0, :cond_7

    :cond_5
    move v0, v3

    :goto_1
    if-nez v0, :cond_e

    iget-object v6, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    if-eqz p2, :cond_d

    iget-object v0, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    move v5, v2

    :goto_2
    if-ge v5, v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/xg;

    move v4, v2

    :goto_3
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_c

    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/xg;

    invoke-interface {v0}, Lnbisdk/xg;->dC()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lnbisdk/xg;->dC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    check-cast p1, Lnbisdk/gz;

    iget-object v0, p0, Lnbisdk/go;->kY:Lnbisdk/qh;

    check-cast v0, Lnbisdk/gz;

    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lnbisdk/gz;->gX()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/gz;->gX()I

    move-result v4

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Lnbisdk/gz;->ha()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/gz;->ha()I

    move-result v4

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Lnbisdk/gz;->gZ()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/gz;->gZ()I

    move-result v4

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Lnbisdk/gz;->gY()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/gz;->gY()I

    move-result v0

    if-eq v1, v0, :cond_b

    :cond_9
    move v0, v3

    goto :goto_1

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_d
    move v3, v2

    goto/16 :goto_0

    :cond_e
    move v3, v0

    goto/16 :goto_0
.end method

.method public final b(Lnbisdk/nb;)V
    .locals 2

    iput-object p1, p0, Lnbisdk/go;->kZ:Lnbisdk/nb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/go;->la:J

    return-void
.end method

.method public final b(Lnbisdk/qh;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/go;->kY:Lnbisdk/qh;

    return-void
.end method

.method public final g(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/go;->aB:Ljava/util/Vector;

    return-void
.end method

.method public final gB()Lnbisdk/nb;
    .locals 1

    iget-object v0, p0, Lnbisdk/go;->kZ:Lnbisdk/nb;

    return-object v0
.end method

.method public final gC()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/go;->la:J

    return-wide v0
.end method
