.class public Lcom/samsung/mms/location/POISearchHandler;
.super Lcom/samsung/mms/location/SearchHandler;
.source "POISearchHandler.java"


# instance fields
.field private final poiSearchListener:Lcom/nbi/map/search/poi/POISearchListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V
    .locals 1
    .parameter "activity"
    .parameter "showFailedList"
    .parameter "listView"
    .parameter "mapView"
    .parameter "locationDBAdapter"
    .parameter "searchHandlerListener"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/samsung/mms/location/SearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 50
    new-instance v0, Lcom/samsung/mms/location/POISearchHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/POISearchHandler$1;-><init>(Lcom/samsung/mms/location/POISearchHandler;)V

    iput-object v0, p0, Lcom/samsung/mms/location/POISearchHandler;->poiSearchListener:Lcom/nbi/map/search/poi/POISearchListener;

    .line 30
    return-void
.end method


# virtual methods
.method public performSearch(Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;)V
    .locals 2
    .parameter "searchString"
    .parameter "searchRegion"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/mms/location/POISearchHandler;->poiSearchListener:Lcom/nbi/map/search/poi/POISearchListener;

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Lcom/samsung/mms/location/SearchHandler;->performSearch(Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;Lcom/nbi/common/NBIListener;I)V

    .line 44
    return-void
.end method
