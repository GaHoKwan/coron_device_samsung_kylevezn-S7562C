.class public Lcom/nbi/map/data/Maneuver;
.super Ljava/lang/Object;


# instance fields
.field private fO:I

.field private fP:Lnbisdk/pn;

.field private fQ:Lnbisdk/hg;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lnbisdk/xt;

    invoke-virtual {p2}, Lnbisdk/xt;->oM()Lnbisdk/pn;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-virtual {p2}, Lnbisdk/xt;->oN()Lnbisdk/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/data/Maneuver;->fQ:Lnbisdk/hg;

    iput p1, p0, Lcom/nbi/map/data/Maneuver;->fO:I

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Z)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/nbi/map/data/Maneuver;->getManeuverText(Z)Lcom/nbi/map/data/FormattedTextBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/FormattedTextBlock;->getFormattedTextCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/nbi/map/data/FormattedTextBlock;->getFormattedText(I)Lcom/nbi/map/data/FormattedText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/FormattedText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/nbi/map/data/FormattedTextBlock;->getFormattedText(I)Lcom/nbi/map/data/FormattedText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/FormattedText;->isNewLine()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getManeuverID()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Maneuver;->fO:I

    return v0
.end method

.method public getManeuverText(Z)Lcom/nbi/map/data/FormattedTextBlock;
    .locals 3

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fQ:Lnbisdk/hg;

    iget v1, p0, Lcom/nbi/map/data/Maneuver;->fO:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lnbisdk/hg;->a(IZZ)Lnbisdk/in;

    move-result-object v0

    new-instance v1, Lcom/nbi/map/data/FormattedTextBlock;

    invoke-direct {v1, v0}, Lcom/nbi/map/data/FormattedTextBlock;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getPoint()Lcom/nbi/map/data/Coordinates;
    .locals 5

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    iget-object v1, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v1}, Lnbisdk/pn;->lp()Lnbisdk/ly;

    move-result-object v1

    iget-wide v1, v1, Lnbisdk/ly;->sp:D

    iget-object v3, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v3}, Lnbisdk/pn;->lp()Lnbisdk/ly;

    move-result-object v3

    iget-wide v3, v3, Lnbisdk/ly;->sq:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    return-object v0
.end method

.method public getPrimaryStreet()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->lw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fQ:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->j()Lnbisdk/de;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoutingIcon()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fQ:Lnbisdk/hg;

    iget v1, p0, Lcom/nbi/map/data/Maneuver;->fO:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lnbisdk/hg;->j(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "nc"

    :cond_1
    iget-object v1, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v1}, Lnbisdk/pn;->lw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nbi/map/data/Maneuver;->fQ:Lnbisdk/hg;

    iget v2, p0, Lcom/nbi/map/data/Maneuver;->fO:I

    invoke-interface {v1, v2}, Lnbisdk/hg;->av(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "nc"

    :cond_2
    return-object v0
.end method

.method public getSecondaryStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->lt()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTrafficDelay()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/Maneuver;->fP:Lnbisdk/pn;

    invoke-interface {v0}, Lnbisdk/pn;->getTotalDelay()D

    move-result-wide v0

    return-wide v0
.end method
