.class public Lcom/nbi/map/android/MapUtils;
.super Ljava/lang/Object;


# static fields
.field public static final COUPON_ANALYTICS_EVENT_CALL:Ljava/lang/String; = "call"

.field public static final COUPON_ANALYTICS_EVENT_NAVIGATE:Ljava/lang/String; = "navigate"

.field public static final COUPON_ANALYTICS_EVENT_VIEW_DETAILS:Ljava/lang/String; = "view"

.field public static final ROUTING_ICON_LARGE:I = 0x4

.field public static final ROUTING_ICON_MEDIUM:I = 0x2

.field public static final ROUTING_ICON_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnbisdk/br;
    .locals 7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lnbisdk/br;->bL()Lnbisdk/br;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/br;->getRouteType()I

    move-result v0

    const-string v4, "easiest"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    invoke-virtual {v5, v0}, Lnbisdk/br;->setRouteType(I)V

    move v0, v2

    move v4, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "fastest"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v4, "shortest"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_0
    or-int/lit8 v4, v4, 0x1

    goto :goto_2

    :sswitch_1
    or-int/lit8 v4, v4, 0x10

    goto :goto_2

    :sswitch_2
    or-int/lit8 v4, v4, 0x4

    goto :goto_2

    :sswitch_3
    or-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v4}, Lnbisdk/br;->setAvoidFeatures(I)V

    invoke-virtual {v5}, Lnbisdk/br;->bM()I

    move-result v0

    const-string v4, "bicycle"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v5, v1}, Lnbisdk/br;->j(I)V

    return-object v5

    :cond_4
    const-string v1, "car"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    const-string v1, "pedestrian"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_3

    :cond_6
    const-string v1, "truck"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x46 -> :sswitch_1
        0x48 -> :sswitch_2
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getRoutingIconImage(Lcom/nbi/common/NBIContext;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/high16 v4, 0x3f80

    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    new-instance v1, Lnbisdk/cd;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v2

    const-string v3, "respak.zip"

    invoke-direct {v1, v2, v3}, Lnbisdk/cd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v0, "medium"

    cmpl-float v3, v2, v4

    if-lez v3, :cond_1

    const-string v0, "large"

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/cd;->x(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    const-string v0, "small"

    goto :goto_0
.end method

.method public static isNavigationAvailable(Lcom/nbi/common/NBIContext;)Z
    .locals 5

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nH()Z

    move-result v0

    const-string v1, "Android"

    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getNbiVersion()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnbisdk/hd;

    invoke-direct {v4, v1, v2, v3, v0}, Lnbisdk/hd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v4}, Lnbisdk/rb;->b(Lnbisdk/hd;)V

    invoke-static {}, Lnbisdk/rb;->P()V

    return v0
.end method

.method public static mapDistance(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;)Lcom/nbi/map/data/MapVector;
    .locals 9

    const/4 v0, 0x1

    new-array v8, v0, [D

    invoke-virtual {p0}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v0

    new-instance v2, Lcom/nbi/map/data/MapVector;

    const/4 v3, 0x0

    aget-wide v3, v8, v3

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/nbi/map/data/MapVector;-><init>(DD)V

    return-object v2
.end method

.method public static navigateTo(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/Place;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const-wide v6, -0x3f70c80000000000L

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "Android"

    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getNbiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getInternalObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnbisdk/de;

    invoke-static {p2, p3, p4}, Lcom/nbi/map/android/MapUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnbisdk/br;

    move-result-object v5

    new-instance v0, Lnbisdk/hd;

    invoke-direct/range {v0 .. v5}, Lnbisdk/hd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnbisdk/de;Lnbisdk/br;)V

    invoke-static {v0}, Lnbisdk/rb;->b(Lnbisdk/hd;)V

    invoke-static {}, Lnbisdk/rb;->P()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "&commands="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    if-ne p5, v0, :cond_d

    const-string v0, "&immediate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_2

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, "&lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getAirport()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getAirport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "&airportcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getAirport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nbi/map/data/Place;->makeStringForApp2App(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "&street="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nbi/map/data/Place;->makeStringForApp2App(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nbi/map/data/Place;->makeStringForApp2App(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, "&state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nbi/map/data/Place;->makeStringForApp2App(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "&postal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nbi/map/data/Place;->makeStringForApp2App(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "&country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/map/data/Place;->makeStringForApp2App(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "&navroutetype="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "&navavoid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    if-eqz p4, :cond_c

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "&navvehicletype="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0, v2}, Lnbisdk/bt;->bo(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string v0, "&immediate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static recordCouponAnalyticsEvent(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lcom/nbi/coupons/data/Coupon;Lcom/nbi/coupons/data/Store;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "coupon is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "navigate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lnbisdk/cm;->d(Lcom/nbi/coupons/data/Coupon;)Lnbisdk/xz;

    move-result-object v0

    new-instance v1, Lnbisdk/jv;

    invoke-direct {v1, p1, v0}, Lnbisdk/jv;-><init>(Ljava/lang/String;Lnbisdk/xz;)V

    if-eqz p3, :cond_4

    invoke-static {p3}, Lnbisdk/cm;->a(Lcom/nbi/coupons/data/Store;)Lnbisdk/jb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/jv;->b(Lnbisdk/jb;)V

    :cond_4
    invoke-static {v1}, Lnbisdk/rb;->b(Lnbisdk/jv;)V

    invoke-static {}, Lnbisdk/rb;->P()V

    return-void
.end method
