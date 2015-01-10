.class Lnbisdk/do;
.super Ljava/lang/Object;


# instance fields
.field private ay:I

.field private cJ:I

.field private cT:I

.field private fV:[Lnbisdk/dn$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lnbisdk/dn;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p2, [Lnbisdk/dn$b;

    iput-object v0, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/do;->cJ:I

    iput v0, p0, Lnbisdk/do;->ay:I

    iput v0, p0, Lnbisdk/do;->cT:I

    return-void
.end method

.method static a(Lnbisdk/ze;Lnbisdk/rx;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lnbisdk/rx;->getSize()I

    move-result v5

    move v4, v3

    move-object v2, v1

    :goto_0
    if-ge v4, v5, :cond_6

    invoke-virtual {p1, v4}, Lnbisdk/rx;->bj(I)Lnbisdk/qh;

    move-result-object v0

    instance-of v6, v0, Lnbisdk/jn;

    if-eqz v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Lnbisdk/ze;

    const-string v6, "network-type"

    invoke-direct {v1, v6, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    :cond_0
    check-cast v0, Lnbisdk/jn;

    new-instance v6, Lnbisdk/ze;

    const-string v7, "cdma"

    invoke-direct {v6, v7, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v7, "nid"

    invoke-virtual {v0}, Lnbisdk/jn;->iH()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "sid"

    invoke-virtual {v0}, Lnbisdk/jn;->iG()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "cellid"

    invoke-virtual {v0}, Lnbisdk/jn;->gX()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "signal-strength"

    invoke-virtual {v0}, Lnbisdk/qh;->jb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    move-object v0, v1

    move-object v1, v2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    instance-of v6, v0, Lnbisdk/gz;

    if-eqz v6, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Lnbisdk/ze;

    const-string v6, "network-type"

    invoke-direct {v1, v6, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    :cond_2
    check-cast v0, Lnbisdk/gz;

    new-instance v6, Lnbisdk/ze;

    const-string v7, "gsm"

    invoke-direct {v6, v7, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v7, "mcc"

    invoke-virtual {v0}, Lnbisdk/gz;->gY()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "mnc"

    invoke-virtual {v0}, Lnbisdk/gz;->gZ()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "lac"

    invoke-virtual {v0}, Lnbisdk/gz;->ha()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "cellid"

    invoke-virtual {v0}, Lnbisdk/gz;->gX()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "signal-strength"

    invoke-virtual {v0}, Lnbisdk/qh;->jb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_3
    instance-of v6, v0, Lnbisdk/cw;

    if-eqz v6, :cond_5

    if-nez v2, :cond_4

    new-instance v2, Lnbisdk/ze;

    const-string v6, "network-type"

    invoke-direct {v2, v6, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    :cond_4
    check-cast v0, Lnbisdk/cw;

    new-instance v6, Lnbisdk/ze;

    const-string v7, "wifi"

    invoke-direct {v6, v7, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v7, "mac-address"

    invoke-virtual {v0}, Lnbisdk/cw;->dC()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "signal-strength"

    invoke-virtual {v0}, Lnbisdk/qh;->jb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    :cond_5
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lnbisdk/rx;->mq()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lnbisdk/rx;->mr()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-location-tiles-version-1"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_7
    invoke-virtual {p1}, Lnbisdk/rx;->ms()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-location-setting"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_8
    invoke-virtual {p1}, Lnbisdk/rx;->mt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v0, Lnbisdk/ze;

    const-string v1, "proxy-api-key"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "api-key"

    invoke-virtual {p1}, Lnbisdk/rx;->mt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_9
    invoke-virtual {p1}, Lnbisdk/rx;->mu()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_a

    new-instance v3, Lnbisdk/ze;

    const-string v0, "location-moved-point"

    invoke-direct {v3, v0, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v5, "mac-address"

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/na;

    invoke-virtual {v0}, Lnbisdk/na;->kO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cause"

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/na;

    invoke-virtual {v0}, Lnbisdk/na;->kP()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v3, v5, v6, v7}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v5, "timestamp"

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/na;

    invoke-virtual {v0}, Lnbisdk/na;->kQ()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v3, v5, v6, v7}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_a
    return-void
.end method


# virtual methods
.method final I(I)Lnbisdk/dn$b;
    .locals 1

    iget-object v0, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method final P()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/do;->cJ:I

    iput v0, p0, Lnbisdk/do;->ay:I

    iput v0, p0, Lnbisdk/do;->cT:I

    :goto_0
    iget-object v1, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(ILjava/lang/String;)I
    .locals 4

    iget v0, p0, Lnbisdk/do;->cJ:I

    iget-object v1, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    iget v2, p0, Lnbisdk/do;->cJ:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    new-instance v1, Lnbisdk/dn$b;

    iget v2, p0, Lnbisdk/do;->cJ:I

    invoke-direct {v1, v2, p1, p2}, Lnbisdk/dn$b;-><init>(IILjava/lang/String;)V

    iget-object v2, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    iget v3, p0, Lnbisdk/do;->cJ:I

    aput-object v1, v2, v3

    :goto_0
    iget v1, p0, Lnbisdk/do;->cT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnbisdk/do;->cT:I

    iget v1, p0, Lnbisdk/do;->cJ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnbisdk/do;->cJ:I

    iget v1, p0, Lnbisdk/do;->cJ:I

    iget-object v2, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lnbisdk/do;->cJ:I

    return v0

    :cond_0
    invoke-virtual {v1, p1}, Lnbisdk/dn$b;->l(I)V

    invoke-virtual {v1, p2}, Lnbisdk/dn$b;->t(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final aq()Z
    .locals 2

    iget v0, p0, Lnbisdk/do;->cT:I

    iget-object v1, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final ar()Z
    .locals 1

    iget v0, p0, Lnbisdk/do;->cT:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final eu()I
    .locals 1

    iget v0, p0, Lnbisdk/do;->cT:I

    return v0
.end method

.method final ev()Lnbisdk/dn$b;
    .locals 3

    iget-object v0, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    iget v1, p0, Lnbisdk/do;->ay:I

    aget-object v0, v0, v1

    iget v1, p0, Lnbisdk/do;->cT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnbisdk/do;->cT:I

    iget v1, p0, Lnbisdk/do;->ay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnbisdk/do;->ay:I

    iget v1, p0, Lnbisdk/do;->ay:I

    iget-object v2, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lnbisdk/do;->ay:I

    return-object v0
.end method

.method final ew()Lnbisdk/dn$b;
    .locals 2

    iget-object v0, p0, Lnbisdk/do;->fV:[Lnbisdk/dn$b;

    iget v1, p0, Lnbisdk/do;->ay:I

    aget-object v0, v0, v1

    return-object v0
.end method
