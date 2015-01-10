.class public Lcom/samsung/mms/location/GeocodeSearchHandler;
.super Lcom/samsung/mms/location/SearchHandler;
.source "GeocodeSearchHandler.java"

# interfaces
.implements Lcom/nbi/map/geocode/GeocodeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GeocodeListener"


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V
    .locals 0
    .parameter "activity"
    .parameter "showFailedList"
    .parameter "listView"
    .parameter "mapView"
    .parameter "locationDBAdapter"
    .parameter "searchHandlerListener"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/samsung/mms/location/SearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onGeocode(Lcom/nbi/map/geocode/GeocodeInformation;Lcom/nbi/map/geocode/GeocodeRequest;)V
    .locals 8
    .parameter "info"
    .parameter "request"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/samsung/mms/location/SearchHandler;->dismissSearchDialog()V

    .line 43
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    if-eqz v2, :cond_4

    .line 45
    const-string v2, "LocationMapActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search Item Count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a03e9

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 48
    invoke-virtual {p0, v5}, Lcom/samsung/mms/location/SearchHandler;->displayNoSearches(Z)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 51
    new-instance v1, Lcom/nbi/map/data/Place;

    const-string v2, ""

    invoke-interface {p1, v7}, Lcom/nbi/map/geocode/GeocodeInformation;->getMapLocation(I)Lcom/nbi/map/data/MapLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    .line 52
    .local v1, selectedPlace:Lcom/nbi/map/data/Place;
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v3

    invoke-interface {v2, v3, v7}, Lcom/samsung/mms/location/SearchHandlerListener;->onResultsReturned(IZ)V

    .line 53
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    invoke-interface {v2, v1}, Lcom/samsung/mms/location/SearchHandlerListener;->onPlaceReceived(Lcom/nbi/map/data/Place;)V

    goto :goto_0

    .line 55
    .end local v1           #selectedPlace:Lcom/nbi/map/data/Place;
    :cond_2
    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 56
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v3

    invoke-interface {v2, v3, v5}, Lcom/samsung/mms/location/SearchHandlerListener;->onResultsReturned(IZ)V

    .line 57
    new-instance v2, Ljava/util/Vector;

    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Lcom/nbi/map/geocode/GeocodeInformation;->getResultCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    new-instance v3, Lcom/nbi/map/data/Place;

    const-string v4, ""

    invoke-interface {p1, v0}, Lcom/nbi/map/geocode/GeocodeInformation;->getMapLocation(I)Lcom/nbi/map/data/MapLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_3
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/mms/location/LocationListAdapter;

    iget-object v4, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/mms/location/SearchHandler;->mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v6, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 70
    .end local v0           #i:I
    :cond_4
    const-string v2, "GeocodeListener"

    const-string v3, "onGeocode() - geocodeHandlerListener was null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestCancelled(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 99
    const-string v0, "GeocodeListener"

    const-string v1, "onRequestComplete() - request has been canceled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onRequestComplete(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 95
    const-string v0, "GeocodeListener"

    const-string v1, "onRequestComplete() - request was successful"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V
    .locals 3
    .parameter "exception"
    .parameter "request"

    .prologue
    .line 87
    const-string v0, "GeocodeListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestError() - error retrieving search results, details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "Error retrieving search results"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/mms/location/SearchHandler;->dismissSearchDialog()V

    .line 92
    return-void
.end method

.method public onRequestProgress(ILcom/nbi/common/NBIRequest;)V
    .locals 3
    .parameter "percent"
    .parameter "request"

    .prologue
    .line 83
    const-string v0, "GeocodeListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestProgress() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onRequestStart(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 79
    const-string v0, "GeocodeListener"

    const-string v1, "onRequestStart() - request has started"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 75
    const-string v0, "GeocodeListener"

    const-string v1, "onRequestTimeOut() - the search request timed out"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public performSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "searchString"

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, p0, v1}, Lcom/samsung/mms/location/SearchHandler;->performSearch(Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;Lcom/nbi/common/NBIListener;I)V

    .line 36
    return-void
.end method
