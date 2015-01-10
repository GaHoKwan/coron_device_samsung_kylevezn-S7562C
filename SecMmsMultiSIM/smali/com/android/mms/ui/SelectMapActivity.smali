.class public Lcom/android/mms/ui/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# static fields
.field private static final GET_MYLOCATION:I = 0x0

.field private static final MENU_CANCEL:I = 0x65

.field private static final MENU_OK:I = 0x66

.field private static MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String; = null

.field private static final OFFSET:I = 0x64

.field private static final UPDATE_LOCATION:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarCancelButton:Landroid/widget/TextView;

.field private mActionbarDoneButton:Landroid/widget/TextView;

.field private mActionbarLayout:Landroid/widget/LinearLayout;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mLocation:Ljava/lang/String;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mPickImage:Z

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchPoint:Lcom/google/android/maps/GeoPoint;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSelectMapHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "MessageLocationTempJPG.tmp"

    sput-object v0, Lcom/android/mms/ui/SelectMapActivity;->MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 87
    const-string v0, "Messaging/SelectMapActivity"

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    .line 116
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    .line 118
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarTitle:Landroid/widget/TextView;

    .line 120
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    .line 122
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    .line 131
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 133
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 266
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$6;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    .line 493
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$7;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 581
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$8;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 876
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SelectMapActivity;D)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SelectMapActivity;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SelectMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SelectMapActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->setSearchButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 3
    .parameter "lat"
    .parameter "lon"
    .parameter "snippet"

    .prologue
    .line 653
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 654
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 655
    .local v0, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/mms/ui/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 656
    const/4 v2, 0x1

    return v2
.end method

.method private convToDouble(I)D
    .locals 4
    .parameter "i"

    .prologue
    .line 640
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 2
    .parameter "d"

    .prologue
    .line 636
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 16
    .parameter "location"

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v14, "getFromLocationName"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 543
    :cond_0
    const/4 v13, 0x0

    .line 578
    :goto_0
    return v13

    .line 546
    :cond_1
    new-instance v2, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 547
    .local v2, geo:Landroid/location/Geocoder;
    const v11, 0x55d4a80

    .local v11, minLat:I
    const v9, -0x55d4a80

    .line 548
    .local v9, maxLat:I
    const v12, 0xaba9500

    .local v12, minLon:I
    const v10, -0xaba9500

    .line 550
    .local v10, maxLon:I
    const/4 v13, 0x5

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 551
    .local v6, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 552
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v13}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    .line 553
    .local v8, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 554
    .local v4, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v4}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, addr:Landroid/location/Address;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_2

    .line 557
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #addr:Landroid/location/Address;
    check-cast v1, Landroid/location/Address;

    .line 558
    .restart local v1       #addr:Landroid/location/Address;
    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v5

    .line 559
    .local v5, lat:I
    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v7

    .line 560
    .local v7, lon:I
    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v13}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 561
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 562
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 563
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 564
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 567
    .end local v5           #lat:I
    .end local v7           #lon:I
    :cond_2
    if-eqz v1, :cond_3

    .line 568
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v12, v10}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    .line 578
    .end local v1           #addr:Landroid/location/Address;
    .end local v3           #i:I
    .end local v4           #itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    .end local v6           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/4 v13, 0x1

    goto :goto_0

    .line 571
    .restart local v6       #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01ce

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 575
    .end local v6           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method private getMyLocation()Lcom/google/android/maps/GeoPoint;
    .locals 12

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "getMyLocation"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v11, 0x0

    .line 441
    .local v11, myLocation:Lcom/google/android/maps/GeoPoint;
    const/4 v10, 0x0

    .line 445
    .local v10, location:Landroid/location/Location;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    if-eqz v10, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " got location gps : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 454
    .local v8, geoLat:Ljava/lang/Double;
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 456
    .local v9, geoLng:Ljava/lang/Double;
    new-instance v11, Lcom/google/android/maps/GeoPoint;

    .end local v11           #myLocation:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {v11, v0, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .restart local v11       #myLocation:Lcom/google/android/maps/GeoPoint;
    move-object v0, v11

    .line 487
    .end local v8           #geoLat:Ljava/lang/Double;
    .end local v9           #geoLng:Ljava/lang/Double;
    :goto_1
    return-object v0

    .line 447
    :catch_0
    move-exception v7

    .line 448
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 460
    .local v6, criteria:Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 461
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 462
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 463
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 464
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 465
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, provider:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " got provider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    if-nez v1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "provider null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 472
    const/4 v0, 0x0

    goto :goto_1

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 478
    if-eqz v10, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " got location network : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 481
    .restart local v8       #geoLat:Ljava/lang/Double;
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 483
    .restart local v9       #geoLng:Ljava/lang/Double;
    new-instance v11, Lcom/google/android/maps/GeoPoint;

    .end local v11           #myLocation:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {v11, v0, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .restart local v11       #myLocation:Lcom/google/android/maps/GeoPoint;
    move-object v0, v11

    .line 484
    goto/16 :goto_1

    .line 487
    .end local v8           #geoLat:Ljava/lang/Double;
    .end local v9           #geoLng:Ljava/lang/Double;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .parameter "latitude"
    .parameter "longitude"
    .parameter "drawable"
    .parameter "snippet"

    .prologue
    .line 660
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 661
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .local v0, overlay:Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 663
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 644
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 645
    .local v2, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020366

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 646
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 647
    .local v1, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(IIII)Z
    .locals 5
    .parameter "minLat"
    .parameter "maxLat"
    .parameter "minLon"
    .parameter "maxLon"

    .prologue
    .line 677
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v4, "move to marker"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sub-int v0, p2, p1

    .line 679
    .local v0, lat_span:I
    sub-int v1, p4, p3

    .line 680
    .local v1, lon_span:I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 683
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 684
    iput-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    .line 685
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .parameter "point"

    .prologue
    const/4 v3, 0x1

    .line 669
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 670
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    .line 672
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 673
    return v3
.end method

.method private removeActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 395
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 402
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 407
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    .line 409
    :cond_2
    return-void
.end method

.method private searchLocation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 525
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "searchLocation"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mms/Log;->logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, location:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "empay location to search"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_0
    return-void

    .line 533
    :cond_0
    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 535
    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 537
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setSearchButtonState(I)V
    .locals 3
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 249
    if-gtz p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 301
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local v1, doneText:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v0, cancelText:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    .line 306
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 308
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0017

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarTitle:Landroid/widget/TextView;

    .line 309
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarTitle:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0019

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    .line 312
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0018

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    .line 314
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v2, v4

    .line 315
    .local v2, isLandscape:Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBarText(Z)V

    .line 346
    .end local v0           #cancelText:Ljava/lang/StringBuffer;
    .end local v1           #doneText:Ljava/lang/StringBuffer;
    .end local v2           #isLandscape:Z
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 347
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->invalidateOptionsMenu()V

    .line 350
    return-void

    .line 314
    .restart local v0       #cancelText:Ljava/lang/StringBuffer;
    .restart local v1       #doneText:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateActionBarText(Z)V
    .locals 6
    .parameter "isLandscape"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 354
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 356
    .local v1, mIsLandscape:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 386
    :cond_0
    :goto_1
    return-void

    .end local v1           #mIsLandscape:Z
    :cond_1
    move v1, v2

    .line 354
    goto :goto_0

    .line 359
    .restart local v1       #mIsLandscape:Z
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 360
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 363
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionbarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    .line 367
    if-eqz p1, :cond_5

    .line 368
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v3, 0x7f020285

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    const v3, 0x7f020286

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 371
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 372
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14
    .parameter "point"

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateLocation"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v12, ""

    .line 692
    .local v12, location:Ljava/lang/String;
    const/4 v9, 0x0

    .line 694
    .local v9, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 695
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 697
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 698
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 699
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 700
    .local v8, addressLines:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-gt v11, v8, :cond_2

    .line 701
    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 702
    .local v7, addressLine:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    if-nez v11, :cond_1

    .line 704
    move-object v12, v7

    .line 700
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 706
    :cond_1
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v13, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    const-string v1, " "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 714
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressLine:Ljava/lang/String;
    .end local v8           #addressLines:I
    .end local v11           #i:I
    .end local v13           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v10

    .line 715
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 717
    .end local v10           #e:Ljava/io/IOException;
    :cond_2
    return-object v12
.end method


# virtual methods
.method protected captureMap()V
    .locals 8

    .prologue
    .line 722
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "capture map"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 724
    const/4 v1, 0x0

    .line 728
    .local v1, saved:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 736
    if-nez v1, :cond_0

    .line 737
    iget-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    const-string v7, "saved value is null!!!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;->printStackTrace()V

    .line 731
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 741
    .end local v0           #e:Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 742
    .local v3, savedWidth:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 744
    .local v2, savedHeight:I
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    sub-int v6, v3, v6

    div-int/lit8 v4, v6, 0x2

    .line 745
    .local v4, x:I
    if-gez v4, :cond_1

    .line 746
    const/4 v4, 0x0

    .line 747
    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    .line 749
    :cond_1
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v5, v6, 0x2

    .line 750
    .local v5, y:I
    if-gez v5, :cond_2

    .line 751
    const/4 v5, 0x0

    .line 752
    iput v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    .line 754
    :cond_2
    iget v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    iget v7, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v1, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected doFinish(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    .line 797
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 798
    .local v2, result:Landroid/content/Intent;
    const-string v3, "location"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, cachePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/SelectMapActivity;->MESSAGE_LOCATION_TEMP_FILENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, fullpath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v1}, Lcom/android/mms/ui/MessageUtils;->SaveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 805
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 807
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 808
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 809
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    .line 810
    return-void
.end method

.method protected getAddressAndURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14
    .parameter "point"

    .prologue
    .line 758
    const-string v11, ""

    .line 759
    .local v11, returnAddress:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v10, retAddress:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 762
    .local v7, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 763
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    .line 764
    .local v1, lat:D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    .line 767
    .local v3, lng:D
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 768
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 769
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 770
    .local v6, address:Landroid/location/Address;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v9, v5, :cond_1

    .line 771
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 772
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 776
    .end local v6           #address:Landroid/location/Address;
    .end local v9           #i:I
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 777
    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ")"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 785
    :goto_1
    return-object v11

    .line 781
    :catch_0
    move-exception v8

    .line 783
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected getURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 7
    .parameter "point"

    .prologue
    .line 789
    const-string v4, ""

    .line 790
    .local v4, returnURL:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v0

    .line 791
    .local v0, lat:D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v2

    .line 792
    .local v2, lng:D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    return-object v4
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 416
    .local v0, isLandscape:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBarText(Z)V

    .line 418
    return-void

    .line 415
    .end local v0           #isLandscape:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    .line 143
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "image_location"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    .line 148
    const v3, 0x7f03007c

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mActionBar:Landroid/app/ActionBar;

    .line 152
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBar()V

    .line 155
    new-instance v3, Landroid/location/Geocoder;

    invoke-direct {v3, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 156
    const v3, 0x7f0e0200

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/MapView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 157
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 158
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 160
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    .line 161
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    .line 163
    const-string v2, "location"

    .line 164
    .local v2, serviceString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 166
    const v3, 0x7f0e0051

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 168
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteEditBG()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v4, -0xfefeff

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 173
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$1;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 181
    const-string v3, ""

    const v4, 0x7f0a01f7

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SelectMapActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 183
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/SelectMapActivity$2;-><init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/app/ProgressDialog;)V

    const-string v5, "getMyLocation"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 197
    const v3, 0x7f0e01fe

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$3;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$4;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$4;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    const v3, 0x7f0e01ff

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 222
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$5;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 972
    const/16 v1, 0x65

    const v2, 0x7f0a01e9

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 973
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 975
    const/16 v1, 0x66

    const v2, 0x7f0a0029

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 976
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 977
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 979
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 980
    .local v0, isLandscape:Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->updateActionBarText(Z)V

    .line 982
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 435
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 821
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on options item, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 857
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 827
    :sswitch_0
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 828
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    goto :goto_0

    .line 834
    :sswitch_1
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 835
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    goto :goto_0

    .line 838
    :sswitch_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 840
    .local v0, address:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    if-eqz v2, :cond_2

    .line 841
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->captureMap()V

    .line 845
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v2, :cond_1

    .line 846
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    .line 853
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->doFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v2, :cond_1

    .line 850
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getAddressAndURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 823
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 424
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->initMarker()Z

    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    .line 426
    return-void
.end method
