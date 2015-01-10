.class Lcom/samsung/mms/location/LocationMapActivity$8;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Lcom/nbi/map/android/MapView$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinBubbleDraw(Lcom/nbi/map/android/MapView;Landroid/graphics/Canvas;III)V
    .locals 1
    .parameter "mapView"
    .parameter "canvas"
    .parameter "pinId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/mms/location/PinBubbleView;->draw(Landroid/graphics/Canvas;)V

    .line 1704
    return-void
.end method

.method public onPinBubbleGetRectangle(Lcom/nbi/map/android/MapView;III)Lcom/nbi/map/data/Rectangle;
    .locals 15
    .parameter "mapView"
    .parameter "pinId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1708
    invoke-virtual/range {p1 .. p2}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v12

    .line 1709
    .local v12, drawPin:Lcom/nbi/map/android/Pin;
    if-nez v12, :cond_0

    .line 1710
    const/4 v2, 0x0

    .line 1745
    :goto_0
    return-object v2

    .line 1712
    :cond_0
    invoke-virtual {v12}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v13

    .line 1713
    .local v13, pinPlace:Lcom/nbi/map/data/Place;
    if-nez v13, :cond_1

    .line 1714
    const/4 v2, 0x0

    goto :goto_0

    .line 1716
    :cond_1
    new-instance v14, Lcom/samsung/mms/location/PlaceFormatter;

    invoke-direct {v14, v13}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 1717
    .local v14, placeFormat:Lcom/samsung/mms/location/PlaceFormatter;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/samsung/mms/location/PlaceFormatter;->getFormattedPlaceArray(Z)[Ljava/lang/String;

    move-result-object v10

    .line 1719
    .local v10, addressLines:[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v11

    .line 1720
    .local v11, drawLocation:Lcom/nbi/map/data/MapLocation;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v11, :cond_4

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaLatitude:D
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2000(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/mms/location/Utils;->compareDouble(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaLongitude:D
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$2100(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v2

    invoke-virtual {v11}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/mms/location/Utils;->compareDouble(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1724
    array-length v2, v10

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1725
    const/4 v2, 0x2

    aget-object v2, v10, v2

    if-eqz v2, :cond_2

    .line 1726
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    const/4 v5, 0x1

    aget-object v5, v10, v5

    const/4 v6, 0x2

    aget-object v6, v10, v6

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/mms/location/PinBubbleView;->setImageData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    goto :goto_0

    .line 1729
    :cond_2
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    const/4 v5, 0x1

    aget-object v5, v10, v5

    const-string v6, ""

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/mms/location/PinBubbleView;->setImageData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    goto/16 :goto_0

    .line 1732
    :cond_3
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mediaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1900(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    const/4 v5, 0x1

    aget-object v5, v10, v5

    const-string v6, ""

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/mms/location/PinBubbleView;->setImageData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    goto/16 :goto_0

    .line 1735
    :cond_4
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/location/PinBubbleView;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1736
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/samsung/mms/location/PinBubbleView;->setLoadingData(II)Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    goto/16 :goto_0

    .line 1739
    :cond_5
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/mms/location/PlaceDBAdapter;->findPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    .line 1741
    .local v7, isFavorite:Z
    :goto_1
    array-length v2, v10

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 1742
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v10, v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    const/4 v5, 0x2

    aget-object v5, v10, v5

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$2200(Lcom/samsung/mms/location/LocationMapActivity;)Ljava/lang/String;

    move-result-object v6

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/mms/location/PinBubbleView;->setAddressData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    goto/16 :goto_0

    .line 1739
    .end local v7           #isFavorite:Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1745
    .restart local v7       #isFavorite:Z
    :cond_7
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v10, v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    const-string v5, ""

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->accuracyString:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$2200(Lcom/samsung/mms/location/LocationMapActivity;)Ljava/lang/String;

    move-result-object v6

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/mms/location/PinBubbleView;->setAddressData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public onPinDragEnd(Lcom/nbi/map/android/MapView;ILcom/nbi/map/data/Coordinates;)Z
    .locals 4
    .parameter "view"
    .parameter "pinIndex"
    .parameter "moveTo"

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/nbi/map/android/MapView;->convertCoordindatesToMapXY(Lcom/nbi/map/data/Coordinates;)Lcom/nbi/map/data/Point;

    move-result-object v0

    .line 1646
    .local v0, newMapPosition:Lcom/nbi/map/data/Point;
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v0}, Lcom/nbi/map/data/Point;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/nbi/map/data/Point;->getY()I

    move-result v3

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->dropPin(II)V
    invoke-static {v1, v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1700(Lcom/samsung/mms/location/LocationMapActivity;II)V

    .line 1647
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1800(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPinDragRequest(Lcom/nbi/map/android/MapView;I)Z
    .locals 12
    .parameter "view"
    .parameter "pinIndex"

    .prologue
    const/4 v11, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1654
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v1

    .line 1656
    .local v1, dragPin:Lcom/nbi/map/android/Pin;
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$1800(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 1657
    invoke-virtual {p0, p1, p2, v6}, Lcom/samsung/mms/location/LocationMapActivity$8;->onPinTouched(Lcom/nbi/map/android/MapView;IZ)Z

    .line 1673
    :goto_0
    return v6

    .line 1661
    :cond_0
    if-eqz v1, :cond_1

    .line 1663
    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v2

    .line 1664
    .local v2, dragPlace:Lcom/nbi/map/data/Place;
    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    .line 1666
    .local v0, dragLocation:Lcom/nbi/map/data/MapLocation;
    new-instance v3, Lcom/nbi/map/data/MapLocation;

    invoke-direct {v3}, Lcom/nbi/map/data/MapLocation;-><init>()V

    .line 1667
    .local v3, pinLocation:Lcom/nbi/map/data/MapLocation;
    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/nbi/map/data/MapLocation;->setLatLon(DD)V

    .line 1668
    new-instance v4, Lcom/nbi/map/data/Place;

    const-string v7, ""

    invoke-direct {v4, v7, v3}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    .line 1669
    .local v4, pinPlace:Lcom/nbi/map/data/Place;
    invoke-virtual {v1, v4}, Lcom/nbi/map/android/Pin;->setPlace(Lcom/nbi/map/data/Place;)V

    .line 1670
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v7

    invoke-virtual {v7, p2, v1, v5}, Lcom/nbi/map/android/MapView;->setPin(ILcom/nbi/map/android/Pin;Z)Z

    .line 1673
    .end local v0           #dragLocation:Lcom/nbi/map/data/MapLocation;
    .end local v2           #dragPlace:Lcom/nbi/map/data/Place;
    .end local v3           #pinLocation:Lcom/nbi/map/data/MapLocation;
    .end local v4           #pinPlace:Lcom/nbi/map/data/Place;
    :cond_1
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$1800(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v7

    if-eq v7, v11, :cond_2

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method public onPinDrop(Lcom/nbi/map/android/MapView;II)Z
    .locals 3
    .parameter "mapView"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1681
    .local v0, allowPin:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1682
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->dropPin(II)V
    invoke-static {v1, p2, p3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1700(Lcom/samsung/mms/location/LocationMapActivity;II)V

    .line 1685
    :cond_0
    return v0

    .line 1678
    .end local v0           #allowPin:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPinDropped(Lcom/nbi/map/android/MapView;I)V
    .locals 3
    .parameter "mapView"
    .parameter "pinId"

    .prologue
    .line 1690
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$8;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->startupMode:I
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1800(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1692
    invoke-virtual {p1, p2}, Lcom/nbi/map/android/MapView;->removePin(I)V

    .line 1695
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v0

    .line 1696
    .local v0, firstPinId:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1697
    invoke-virtual {p1, p2}, Lcom/nbi/map/android/MapView;->selectPin(I)Z

    .line 1699
    .end local v0           #firstPinId:I
    :cond_0
    return-void
.end method

.method public onPinSelected(Lcom/nbi/map/android/MapView;I)V
    .locals 6
    .parameter "mapView"
    .parameter "pinIndex"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 1752
    invoke-virtual {p1, p2}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v2

    .line 1753
    .local v2, selectedPin:Lcom/nbi/map/android/Pin;
    invoke-virtual {v2}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 1756
    const/4 v1, -0x1

    .line 1757
    .local v1, mapPinID:I
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1758
    invoke-virtual {p1, v1}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    .line 1760
    .local v0, mapPin:Lcom/nbi/map/android/Pin;
    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1761
    invoke-virtual {v0, v4}, Lcom/nbi/map/android/Pin;->setPinType(I)V

    .line 1762
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3}, Lcom/nbi/map/android/MapView;->setPin(ILcom/nbi/map/android/Pin;Z)Z

    goto :goto_0

    .line 1766
    .end local v0           #mapPin:Lcom/nbi/map/android/Pin;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/nbi/map/android/Pin;->setPinType(I)V

    .line 1767
    const/4 v3, 0x1

    invoke-virtual {p1, p2, v2, v3}, Lcom/nbi/map/android/MapView;->setPin(ILcom/nbi/map/android/Pin;Z)Z

    .line 1769
    .end local v1           #mapPinID:I
    :cond_2
    return-void
.end method

.method public onPinTouched(Lcom/nbi/map/android/MapView;IZ)Z
    .locals 6
    .parameter "mapView"
    .parameter "pinIndex"
    .parameter "inBubble"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1776
    const/4 v1, -0x1

    .line 1777
    .local v1, mapPinID:I
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1778
    invoke-virtual {p1, v1}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    .line 1780
    .local v0, mapPin:Lcom/nbi/map/android/Pin;
    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 1781
    invoke-virtual {v0, v5}, Lcom/nbi/map/android/Pin;->setPinType(I)V

    .line 1782
    invoke-virtual {p1, v1, v0, v4}, Lcom/nbi/map/android/MapView;->setPin(ILcom/nbi/map/android/Pin;Z)Z

    goto :goto_0

    .line 1787
    .end local v0           #mapPin:Lcom/nbi/map/android/Pin;
    :cond_1
    invoke-virtual {p1, p2}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v2

    .line 1788
    .local v2, touchedPin:Lcom/nbi/map/android/Pin;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/nbi/map/android/Pin;->setPinType(I)V

    .line 1789
    const/4 v3, 0x1

    invoke-virtual {p1, p2, v2, v3}, Lcom/nbi/map/android/MapView;->setPin(ILcom/nbi/map/android/Pin;Z)Z

    .line 1791
    return v4
.end method

.method public onPinTrafficBubbleTouched(Lcom/nbi/map/android/MapView;Lcom/nbi/map/data/TrafficIncident;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1772
    return-void
.end method
