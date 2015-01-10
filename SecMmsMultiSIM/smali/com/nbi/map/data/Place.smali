.class public Lcom/nbi/map/data/Place;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private qv:Lnbisdk/de;

.field private qw:Lcom/nbi/map/data/MapLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/location/Location;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/nbi/map/data/MapLocation;

    invoke-direct {v0}, Lcom/nbi/map/data/MapLocation;-><init>()V

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nbi/map/data/MapLocation;->setLongitude(D)V

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/de;

    iput-object p1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nbi/map/data/MapLocation;

    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v1}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p2, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    new-instance v0, Lnbisdk/de;

    invoke-direct {p0}, Lcom/nbi/map/data/Place;->ja()Lnbisdk/lc;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnbisdk/de;-><init>(Ljava/lang/String;Lnbisdk/lc;)V

    iput-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    const-string v3, "."

    invoke-static {v2, v3}, Lnbisdk/as;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnbisdk/lc;

    invoke-direct {v3}, Lnbisdk/lc;-><init>()V

    invoke-static {v2, v1}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnbisdk/lc;->setFreeform(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setAirport(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setAddress(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setStreet(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setCrossStreet(Ljava/lang/String;)V

    const/4 v5, 0x6

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setCity(Ljava/lang/String;)V

    const/4 v5, 0x7

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setCounty(Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setState(Ljava/lang/String;)V

    const/16 v5, 0x9

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setPostal(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setCountry(Ljava/lang/String;)V

    const/16 v5, 0xb

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnbisdk/lc;->setAreaName(Ljava/lang/String;)V

    const/16 v5, 0xc

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->aI(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnbisdk/lc;->setLatitude(D)V

    const/16 v5, 0xd

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->aI(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnbisdk/lc;->setLongitude(D)V

    new-instance v5, Lnbisdk/de;

    invoke-direct {v5, v4, v3}, Lnbisdk/de;-><init>(Ljava/lang/String;Lnbisdk/lc;)V

    iput-object v5, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    new-instance v3, Lcom/nbi/map/data/MapLocation;

    iget-object v4, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v4}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    array-length v3, v2

    if-le v3, v0, :cond_2

    invoke-static {v2, v0}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/map/data/Place;->aH(Ljava/lang/String;)I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0xf

    invoke-static {v2, v4}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nbi/map/data/Category;

    invoke-direct {v6, v4, v5}, Lcom/nbi/map/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/nbi/map/data/Place;->addCategory(Lcom/nbi/map/data/Category;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0xf

    :cond_2
    array-length v3, v2

    if-le v3, v0, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/map/data/Place;->aH(Ljava/lang/String;)I

    move-result v4

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v5, v0, 0x4

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    invoke-static {v2, v6}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    mul-int/lit8 v7, v0, 0x4

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x3

    invoke-static {v2, v7}, Lcom/nbi/map/data/Place;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/nbi/map/data/Phone;

    invoke-direct {v8, v1, v5, v6, v7}, Lcom/nbi/map/data/Phone;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/nbi/map/data/Place;->addPhoneNumber(Lcom/nbi/map/data/Phone;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static a([Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static aH(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static aI(Ljava/lang/String;)D
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ja()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/lc;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(D)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static makeSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lnbisdk/ku;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2

    const-string v4, "_2e"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_3

    const-string v4, "%5f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_4

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_5

    const-string v4, "_20"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_6

    const-string v4, "_26"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method public static makeStringForApp2App(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lnbisdk/ku;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    const-string v3, "%20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_3

    const-string v3, "%26"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "_"

    const-string v1, "%"

    invoke-static {p0, v0, v1}, Lcom/nbi/map/data/Place;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%5f"

    const-string v2, "_"

    invoke-static {v0, v1, v2}, Lcom/nbi/map/data/Place;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lnbisdk/ix;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addCategory(Lcom/nbi/map/data/Category;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {p1}, Lcom/nbi/map/data/Category;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/qc;

    invoke-virtual {v1, v0}, Lnbisdk/de;->c(Lnbisdk/qc;)V

    return-void
.end method

.method public addPhoneNumber(Lcom/nbi/map/data/Phone;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "phoneNumber is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {p1}, Lcom/nbi/map/data/Phone;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/di;

    invoke-virtual {v1, v0}, Lnbisdk/de;->a(Lnbisdk/di;)V

    return-void
.end method

.method public addPlaceDetail(Lcom/nbi/map/data/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "placeDetail is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {p1}, Lcom/nbi/map/data/Pair;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v1, v0}, Lnbisdk/de;->b(Lnbisdk/vl;)V

    return-void
.end method

.method public clearCategories()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0}, Lnbisdk/de;->clearCategories()V

    return-void
.end method

.method public clearPhoneNumbers()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0}, Lnbisdk/de;->clearPhoneNumbers()V

    return-void
.end method

.method public copy(Lcom/nbi/map/data/Place;)V
    .locals 1

    iget-object v0, p1, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    iput-object v0, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    iget-object v0, p1, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    iput-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    return-void
.end method

.method public getCategoriesCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0}, Lnbisdk/de;->getCategoriesCount()I

    move-result v0

    return v0
.end method

.method public getCategory(I)Lcom/nbi/map/data/Category;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/Category;

    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v1, p1}, Lnbisdk/de;->D(I)Lnbisdk/qc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Category;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    return-object v0
.end method

.method public getLocation()Lcom/nbi/map/data/MapLocation;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber(I)Lcom/nbi/map/data/Phone;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/Phone;

    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v1, p1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Phone;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPhoneNumberCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0}, Lnbisdk/de;->getPhoneNumberCount()I

    move-result v0

    return v0
.end method

.method public setLocation(Lcom/nbi/map/data/MapLocation;)V
    .locals 2

    iput-object p1, p0, Lcom/nbi/map/data/Place;->qw:Lcom/nbi/map/data/MapLocation;

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-direct {p0}, Lcom/nbi/map/data/Place;->ja()Lnbisdk/lc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/de;->c(Lnbisdk/lc;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0, p1}, Lnbisdk/de;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setServerModTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0, p1, p2}, Lnbisdk/de;->setServerModTime(J)V

    return-void
.end method

.method public toByteArray()[B
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getFreeform()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nbi/map/data/Place;->l(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nbi/map/data/Place;->l(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->getCategoriesCount()I

    move-result v4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v5, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v5, v2}, Lnbisdk/de;->D(I)Lnbisdk/qc;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/qc;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v5, v2}, Lnbisdk/de;->D(I)Lnbisdk/qc;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/qc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v2, "............0.0."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v2}, Lnbisdk/de;->getPhoneNumberCount()I

    move-result v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    if-ge v1, v2, :cond_2

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v5, v1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/di;->getType()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v4, v1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/di;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v4, v1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/di;->ep()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v4, v1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {v0}, Lnbisdk/de;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCategory(ILcom/nbi/map/data/Category;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {p2}, Lcom/nbi/map/data/Category;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/qc;

    invoke-virtual {v1, p1, v0}, Lnbisdk/de;->a(ILnbisdk/qc;)V

    return-void
.end method

.method public updatePhoneNumber(ILcom/nbi/map/data/Phone;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "phoneNumber is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/data/Place;->qv:Lnbisdk/de;

    invoke-virtual {p2}, Lcom/nbi/map/data/Phone;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/di;

    invoke-virtual {v1, p1, v0}, Lnbisdk/de;->a(ILnbisdk/di;)V

    return-void
.end method
