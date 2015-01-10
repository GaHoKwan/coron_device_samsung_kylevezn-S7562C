.class public Lcom/nbi/map/android/Pin;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbi/map/android/Pin$HaloAttributes;
    }
.end annotation


# static fields
.field public static final PIN_BLUE:I = 0x4

.field public static final PIN_CUSTOM_IMAGE:I = 0xc

.field public static final PIN_DESTINATION_FLAG:I = 0x2

.field public static final PIN_DRAG:I = 0x8

.field public static final PIN_GREEN:I = 0x5

.field public static final PIN_INVALID_ID:I = -0x1

.field public static final PIN_LOCATION_ID:I = -0x3e9

.field public static final PIN_ORANGE:I = 0x6

.field public static final PIN_RED:I = 0x3

.field public static final PIN_STANDARD_COUNT:I = 0xc

.field public static final PIN_STANDARD_MAX:I = 0x7

.field public static final PIN_STANDARD_MIN:I = 0x1

.field public static final PIN_START_FLAG:I = 0x1

.field public static final PIN_TRAFFIC_MAJOR:I = 0xa

.field public static final PIN_TRAFFIC_MINOR:I = 0x9

.field public static final PIN_TRAFFIC_SEVERE:I = 0xb

.field public static final PIN_YELLOW:I = 0x7


# instance fields
.field private e:Ljava/lang/String;

.field private eX:Ljava/lang/Object;

.field private gy:Lcom/nbi/map/data/Place;

.field private iS:I

.field private iT:Lcom/nbi/map/android/PinImage;

.field private iU:Z

.field private iV:Ljava/lang/String;

.field private iW:Z

.field private iX:Lcom/nbi/map/android/POILayer;

.field private iY:D

.field private iZ:Lcom/nbi/map/android/Pin$HaloAttributes;


# direct methods
.method public constructor <init>(ILcom/nbi/map/data/Place;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/nbi/map/data/Place;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(ILcom/nbi/map/data/Place;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nbi/map/android/Pin;->iW:Z

    iput p1, p0, Lcom/nbi/map/android/Pin;->iS:I

    iput-boolean p5, p0, Lcom/nbi/map/android/Pin;->iU:Z

    iget-boolean v1, p0, Lcom/nbi/map/android/Pin;->iU:Z

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/nbi/map/android/Pin;->iW:Z

    iput-object p3, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/nbi/map/android/Pin;->setPlace(Lcom/nbi/map/data/Place;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILcom/nbi/map/data/Place;Z)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Lcom/nbi/map/data/MapLocation;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nbi/map/data/MapLocation;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nbi/map/data/MapLocation;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "Intersection at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nbi/map/data/MapLocation;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/nbi/map/data/MapLocation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getErrorRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/map/android/Pin;->iY:D

    return-wide v0
.end method

.method public getHaloAttributes()Lcom/nbi/map/android/Pin$HaloAttributes;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->iZ:Lcom/nbi/map/android/Pin$HaloAttributes;

    return-object v0
.end method

.method public getPOILayer()Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->iX:Lcom/nbi/map/android/POILayer;

    return-object v0
.end method

.method public getPinImage()Lcom/nbi/map/android/PinImage;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->iT:Lcom/nbi/map/android/PinImage;

    return-object v0
.end method

.method public getPinType()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/Pin;->iS:I

    return v0
.end method

.method public getPlace()Lcom/nbi/map/data/Place;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->eX:Ljava/lang/Object;

    return-object v0
.end method

.method public isDropPin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/Pin;->iU:Z

    return v0
.end method

.method public isValidPlaceInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/Pin;->iW:Z

    return v0
.end method

.method public setErrorRadius(D)V
    .locals 5

    const-wide v2, 0x40c3880000000000L

    const-wide/16 v0, 0x0

    cmpg-double v4, p1, v0

    if-gez v4, :cond_1

    move-wide p1, v0

    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/nbi/map/android/Pin;->iY:D

    return-void

    :cond_1
    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    move-wide p1, v2

    goto :goto_0
.end method

.method public setHaloAttributes(Lcom/nbi/map/android/Pin$HaloAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/Pin;->iZ:Lcom/nbi/map/android/Pin$HaloAttributes;

    return-void
.end method

.method public setPOILayer(Lcom/nbi/map/android/POILayer;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/Pin;->iX:Lcom/nbi/map/android/POILayer;

    return-void
.end method

.method public setPinImage(Lcom/nbi/map/android/PinImage;)Z
    .locals 1

    iput-object p1, p0, Lcom/nbi/map/android/Pin;->iT:Lcom/nbi/map/android/PinImage;

    const/4 v0, 0x1

    return v0
.end method

.method public setPinType(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/Pin;->iS:I

    return-void
.end method

.method public setPlace(Lcom/nbi/map/data/Place;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Place cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    iget-boolean v0, p0, Lcom/nbi/map/android/Pin;->iU:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-static {v0}, Lcom/nbi/map/android/Pin;->a(Lcom/nbi/map/data/MapLocation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    iget-object v0, p0, Lcom/nbi/map/android/Pin;->gy:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/nbi/map/android/Pin;->a(Lcom/nbi/map/data/MapLocation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    iput-object v0, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, " "

    goto :goto_1

    :cond_a
    iput-object v2, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/nbi/map/android/Pin;->iV:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/nbi/map/android/Pin;->e:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/Pin;->eX:Ljava/lang/Object;

    return-void
.end method

.method public setValidPlaceInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/map/android/Pin;->iW:Z

    return-void
.end method
