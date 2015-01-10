.class public Lcom/samsung/mms/location/PlaceFormatter;
.super Ljava/lang/Object;
.source "PlaceFormatter.java"


# static fields
.field public static final DROP_PIN_PLACE_NAME:Ljava/lang/String; = "Drag to move pin"

.field private static final IGNORE_PLACE_NAME:Ljava/lang/String; = "Location Address"


# instance fields
.field private mPlace:Lcom/nbi/map/data/Place;


# direct methods
.method public constructor <init>(Lcom/nbi/map/data/Place;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    .line 30
    return-void
.end method

.method public static setViewDisplayText(Landroid/widget/TextView;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "textView"
    .parameter "text"
    .parameter "hideViewIfEmpty"

    .prologue
    const/4 v0, 0x0

    .line 275
    if-eqz p0, :cond_0

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :goto_0
    const/4 v0, 0x1

    .line 289
    :cond_0
    return v0

    .line 282
    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 72
    :goto_0
    return-object v1

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    .line 69
    .local v0, location:Lcom/nbi/map/data/MapLocation;
    if-eqz v0, :cond_2

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 83
    iget-object v6, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v6}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    const-string v4, ""

    .line 94
    :goto_0
    return-object v4

    .line 84
    :cond_1
    iget-object v6, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v6}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v3

    .line 86
    .local v3, location:Lcom/nbi/map/data/MapLocation;
    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    .line 87
    .local v2, hasState:Z
    :goto_1
    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move v0, v4

    .line 88
    .local v0, hasCity:Z
    :goto_2
    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 90
    .local v1, hasPostalCode:Z
    :goto_3
    if-nez v2, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 92
    const-string v4, ""

    goto :goto_0

    .end local v0           #hasCity:Z
    .end local v1           #hasPostalCode:Z
    .end local v2           #hasState:Z
    :cond_2
    move v2, v5

    .line 86
    goto :goto_1

    .restart local v2       #hasState:Z
    :cond_3
    move v0, v5

    .line 87
    goto :goto_2

    .restart local v0       #hasCity:Z
    :cond_4
    move v1, v5

    .line 88
    goto :goto_3

    .line 94
    .restart local v1       #hasPostalCode:Z
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    const-string v4, ", "

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nbi/map/data/MapLocation;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    const-string v4, ""

    goto :goto_4

    :cond_7
    const-string v4, ""

    goto :goto_5
.end method

.method public getFormattedAddress(Z)Ljava/lang/String;
    .locals 5
    .parameter "showLatLong"

    .prologue
    const/4 v4, 0x1

    .line 160
    invoke-virtual {p0, v4}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedAddressArray(Z)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, address:[Ljava/lang/String;
    const-string v1, ""

    .line 163
    .local v1, finalAddress:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    return-object v1
.end method

.method public getFormattedAddressArray(Z)[Ljava/lang/String;
    .locals 8
    .parameter "showLatLong"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 187
    .local v0, addressString:[Ljava/lang/String;
    const-string v3, ""

    aput-object v3, v0, v6

    .line 188
    const-string v3, ""

    aput-object v3, v0, v7

    .line 190
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 191
    aget-object v3, v0, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 199
    if-eqz p1, :cond_0

    aget-object v3, v0, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v3}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v3}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    .line 202
    .local v2, location:Lcom/nbi/map/data/MapLocation;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "#####.######"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, doubleFormatter:Ljava/text/DecimalFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    goto :goto_0
.end method

.method public getFormattedPlaceArray(Z)[Ljava/lang/String;
    .locals 6
    .parameter "showLatLong"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    .line 224
    .local v2, placeTextArray:[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedAddressArray(Z)[Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, addressTextArray:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceFormatter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, placeName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    aput-object v1, v2, v4

    .line 229
    aget-object v3, v0, v4

    aput-object v3, v2, v5

    .line 230
    const/4 v3, 0x2

    aget-object v4, v0, v5

    aput-object v4, v2, v3

    .line 236
    :goto_0
    return-object v2

    .line 233
    :cond_0
    aget-object v3, v0, v4

    aput-object v3, v2, v4

    .line 234
    aget-object v3, v0, v5

    aput-object v3, v2, v5

    goto :goto_0
.end method

.method public getLatAndLong(Z)Ljava/lang/String;
    .locals 5
    .parameter "shortFormat"

    .prologue
    .line 139
    iget-object v2, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    .line 143
    :goto_0
    return-object v2

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    .line 141
    .local v1, location:Lcom/nbi/map/data/MapLocation;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#####.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, doubleFormatter:Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    const-string v2, ", "

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "\n"

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 54
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    if-nez v0, :cond_2

    .line 42
    const-string v0, ""

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Location Address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    const-string v0, ""

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag to move pin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    const-string v0, ""

    goto :goto_0

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v6, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    if-nez v6, :cond_0

    const-string v4, ""

    .line 126
    :goto_0
    return-object v4

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v6}, Lcom/nbi/map/data/Place;->getPhoneNumberCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 108
    iget-object v6, p0, Lcom/samsung/mms/location/PlaceFormatter;->mPlace:Lcom/nbi/map/data/Place;

    invoke-virtual {v6, v5}, Lcom/nbi/map/data/Place;->getPhoneNumber(I)Lcom/nbi/map/data/Phone;

    move-result-object v3

    .line 109
    .local v3, phoneNumber:Lcom/nbi/map/data/Phone;
    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v2, v4

    .line 110
    .local v2, hasCountry:Z
    :goto_1
    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->getArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    move v1, v4

    .line 112
    .local v1, hasAreaCode:Z
    :goto_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 115
    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v1           #hasAreaCode:Z
    .end local v2           #hasCountry:Z
    :cond_1
    move v2, v5

    .line 109
    goto :goto_1

    .restart local v2       #hasCountry:Z
    :cond_2
    move v1, v5

    .line 110
    goto :goto_2

    .line 119
    .restart local v1       #hasAreaCode:Z
    :cond_3
    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, baseNumber:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_4

    const-string v4, "-"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/nbi/map/data/Phone;->getArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_5

    const-string v4, "-"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    const-string v4, ""

    goto :goto_3

    :cond_5
    const-string v4, ""

    goto :goto_4

    .line 126
    .end local v0           #baseNumber:Ljava/lang/String;
    .end local v1           #hasAreaCode:Z
    .end local v2           #hasCountry:Z
    .end local v3           #phoneNumber:Lcom/nbi/map/data/Phone;
    :cond_6
    const-string v4, ""

    goto/16 :goto_0
.end method

.method public getSimpleAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, addressLine1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/mms/location/PlaceFormatter;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, addressLine2:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    .end local v0           #addressLine1:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 255
    .restart local v0       #addressLine1:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 256
    goto :goto_0

    .line 259
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/mms/location/PlaceFormatter;->getLatAndLong(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
