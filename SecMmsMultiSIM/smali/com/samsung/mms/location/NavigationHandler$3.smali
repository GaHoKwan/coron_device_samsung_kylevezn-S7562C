.class Lcom/samsung/mms/location/NavigationHandler$3;
.super Ljava/lang/Object;
.source "NavigationHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/NavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/NavigationHandler;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/NavigationHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    const/4 v4, -0x1

    .line 123
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$000(Lcom/samsung/mms/location/NavigationHandler;)Lcom/samsung/mms/location/LocationMapActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$000(Lcom/samsung/mms/location/NavigationHandler;)Lcom/samsung/mms/location/LocationMapActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 158
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v2

    .line 132
    .local v2, selectedPinID:I
    if-gez v2, :cond_1

    .line 134
    const/4 v0, -0x1

    .line 135
    .local v0, mapPinID:I
    :goto_1
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nbi/map/android/MapView;->getNextPin(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v2, v4, :cond_1

    .line 136
    move v2, v0

    goto :goto_1

    .line 140
    .end local v0           #mapPinID:I
    :cond_1
    if-ltz v2, :cond_2

    .line 143
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    .line 146
    .local v1, pinLocation:Lcom/nbi/map/data/MapLocation;
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    new-instance v4, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    iget-object v5, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;
    invoke-static {v5}, Lcom/samsung/mms/location/NavigationHandler;->access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v5

    invoke-virtual {v3, v4, v5, v9}, Lcom/nbi/map/android/MapView;->setCenterAndZoomLevel(Lcom/nbi/map/data/Coordinates;IZ)V

    .line 151
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nbi/map/android/MapView;->selectPin(I)Z

    goto :goto_0

    .line 155
    .end local v1           #pinLocation:Lcom/nbi/map/data/MapLocation;
    :cond_2
    const-string v3, "NavigationHandler"

    const-string v4, "centerMapListener:onClick() - no selected pin to center on"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/samsung/mms/location/NavigationHandler$3;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;
    invoke-static {v3}, Lcom/samsung/mms/location/NavigationHandler;->access$000(Lcom/samsung/mms/location/NavigationHandler;)Lcom/samsung/mms/location/LocationMapActivity;

    move-result-object v3

    const v4, 0x7f0a03f6

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
