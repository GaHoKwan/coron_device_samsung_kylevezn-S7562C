.class public Lcom/nbi/map/data/FormattedText;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final BOLD_STYLE:B = 0x1t

.field public static final ITALIC_STYLE:B = 0x3t

.field public static final LARGE_SIZE:B = 0x3t

.field public static final NEW_LINE:Ljava/lang/String; = " "

.field public static final NORMAL_SIZE:B = 0x2t

.field public static final NORMAL_STYLE:B = 0x2t

.field public static final SMALL_SIZE:B = 0x1t


# instance fields
.field private lO:Lnbisdk/nn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/map/data/MapLocation;IBBZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/nn;

    invoke-virtual {p1}, Lcom/nbi/map/data/MapLocation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/lc;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnbisdk/nn;-><init>(Lnbisdk/lc;IBBZ)V

    iput-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    return-void
.end method

.method public constructor <init>(Lcom/nbi/map/data/Phone;IBBZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "phone can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/nn;

    invoke-virtual {p1}, Lcom/nbi/map/data/Phone;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/di;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnbisdk/nn;-><init>(Lnbisdk/di;IBBZ)V

    iput-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    return-void
.end method

.method public constructor <init>(Lcom/nbi/map/data/RouteOptions;IBBZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeSettings can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/nn;

    invoke-virtual {p1}, Lcom/nbi/map/data/RouteOptions;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/br;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnbisdk/nn;-><init>(Lnbisdk/br;IBBZ)V

    iput-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/nn;

    iput-object p1, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IBBZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/nn;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    iput-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "font can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/nn;

    invoke-direct {v0, p1, p2, p3, p4}, Lnbisdk/nn;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    return-void
.end method

.method public static getFontSize(Ljava/lang/String;)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "font can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getFontStyle(Ljava/lang/String;)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "font can\'t be bull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v1, "italic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->getColor()I

    move-result v0

    return v0
.end method

.method public getFontSize()B
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->getFontSize()B

    move-result v0

    return v0
.end method

.method public getFontStyle()B
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->getFontStyle()B

    move-result v0

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->getHref()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    return-object v0
.end method

.method public getLocation()Lcom/nbi/map/data/MapLocation;
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->ba()Lnbisdk/lc;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/MapLocation;

    iget-object v1, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v1}, Lnbisdk/nn;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPhoneNumber()Lcom/nbi/map/data/Phone;
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->kU()Lnbisdk/di;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/Phone;

    iget-object v1, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v1}, Lnbisdk/nn;->kU()Lnbisdk/di;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Phone;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getRouteSettings()Lcom/nbi/map/data/RouteOptions;
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->kV()Lnbisdk/br;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/RouteOptions;

    iget-object v1, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v1}, Lnbisdk/nn;->kV()Lnbisdk/br;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/RouteOptions;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNewLine()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FormattedText;->lO:Lnbisdk/nn;

    invoke-virtual {v0}, Lnbisdk/nn;->isNewLine()Z

    move-result v0

    return v0
.end method
