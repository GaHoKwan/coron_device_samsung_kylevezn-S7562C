.class Lcom/samsung/mms/location/POISearchHandler$1;
.super Ljava/lang/Object;
.source "POISearchHandler.java"

# interfaces
.implements Lcom/nbi/map/search/poi/POISearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/POISearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "POISearchListener"


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/POISearchHandler;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/POISearchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalSearch(Lcom/nbi/map/search/poi/POISearchInformation;Lcom/nbi/map/search/poi/POISearchRequest;)V
    .locals 7
    .parameter "searchInfo"
    .parameter "request"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-interface {p1}, Lcom/nbi/map/search/poi/POISearchInformation;->getResultCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 86
    const-string v1, "POISearchListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocalSearch() - search info returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nbi/map/search/poi/POISearchInformation;->getResultCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    invoke-interface {p1}, Lcom/nbi/map/search/poi/POISearchInformation;->getResultCount()I

    move-result v2

    invoke-interface {v1, v2, v4}, Lcom/samsung/mms/location/SearchHandlerListener;->onResultsReturned(IZ)V

    .line 88
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    new-instance v2, Ljava/util/Vector;

    invoke-interface {p1}, Lcom/nbi/map/search/poi/POISearchInformation;->getResultCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    .line 91
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mMapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lcom/nbi/map/search/poi/POISearchInformation;->getResultCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-interface {p1, v0}, Lcom/nbi/map/search/poi/POISearchInformation;->getPOI(I)Lcom/nbi/map/data/POI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/POI;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/mms/location/LocationListAdapter;

    iget-object v3, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v3, v3, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v4, v4, Lcom/samsung/mms/location/SearchHandler;->mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    iget-object v5, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v5, v5, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mMapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mMapView:Lcom/nbi/map/android/MapView;

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->zoomToAllPins()Z

    .line 116
    .end local v0           #i:I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    invoke-virtual {v1}, Lcom/samsung/mms/location/SearchHandler;->dismissSearchDialog()V

    .line 117
    return-void

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, v1, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a03ea

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    const-string v1, "POISearchListener"

    const-string v2, "onLocalSearch() - no results returned"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    invoke-virtual {v1, v6}, Lcom/samsung/mms/location/SearchHandler;->displayNoSearches(Z)V

    goto :goto_1
.end method

.method public onRequestCancelled(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 79
    const-string v0, "POISearchListener"

    const-string v1, "onRequestComplete() - request has been canceled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onRequestComplete(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 75
    const-string v0, "POISearchListener"

    const-string v1, "onRequestComplete() - request was successful"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V
    .locals 3
    .parameter "exception"
    .parameter "request"

    .prologue
    .line 67
    const-string v0, "POISearchListener"

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

    .line 70
    iget-object v0, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    iget-object v0, v0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "Error retrieving search results"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    iget-object v0, p0, Lcom/samsung/mms/location/POISearchHandler$1;->this$0:Lcom/samsung/mms/location/POISearchHandler;

    invoke-virtual {v0}, Lcom/samsung/mms/location/SearchHandler;->dismissSearchDialog()V

    .line 72
    return-void
.end method

.method public onRequestProgress(ILcom/nbi/common/NBIRequest;)V
    .locals 3
    .parameter "percent"
    .parameter "request"

    .prologue
    .line 63
    const-string v0, "POISearchListener"

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

    .line 64
    return-void
.end method

.method public onRequestStart(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 59
    const-string v0, "POISearchListener"

    const-string v1, "onRequestStart() - request has started"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 55
    const-string v0, "POISearchListener"

    const-string v1, "onRequestTimeOut() - the search request timed out"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
