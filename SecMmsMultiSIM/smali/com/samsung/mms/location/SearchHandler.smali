.class public Lcom/samsung/mms/location/SearchHandler;
.super Ljava/lang/Object;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;,
        Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;,
        Lcom/samsung/mms/location/SearchHandler$LocationContextMenuClickListener;,
        Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;
    }
.end annotation


# static fields
.field protected static final SEARCH_TYPE_ADDRESS:I = 0x1

.field protected static final SEARCH_TYPE_POI:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SearchHandler"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mListView:Landroid/widget/ListView;

.field protected mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

.field protected mMapView:Lcom/nbi/map/android/MapView;

.field protected mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

.field protected mSearchRequest:Lcom/nbi/common/NBIRequest;

.field protected mSearchResultPlaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchingDialog:Landroid/app/ProgressDialog;

.field private final mShowFailedList:Z

.field private final searchDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V
    .locals 3
    .parameter "activity"
    .parameter "showFailedList"
    .parameter "listView"
    .parameter "mapView"
    .parameter "locationDBAdapter"
    .parameter "searchHandlerListener"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    .line 55
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    .line 56
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mMapView:Lcom/nbi/map/android/MapView;

    .line 57
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 58
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    .line 60
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    .line 61
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchResultPlaces:Ljava/util/Vector;

    .line 62
    iput-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    .line 160
    new-instance v0, Lcom/samsung/mms/location/SearchHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/SearchHandler$1;-><init>(Lcom/samsung/mms/location/SearchHandler;)V

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->searchDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 71
    iput-object p1, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p3, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    .line 73
    iput-object p4, p0, Lcom/samsung/mms/location/SearchHandler;->mMapView:Lcom/nbi/map/android/MapView;

    .line 74
    iput-object p5, p0, Lcom/samsung/mms/location/SearchHandler;->mLocationDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;

    .line 75
    iput-object p6, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    .line 76
    iput-boolean p2, p0, Lcom/samsung/mms/location/SearchHandler;->mShowFailedList:Z

    .line 79
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/location/SearchHandler$SearchItemClickListener;-><init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/location/SearchHandler$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/SearchHandler;Lcom/samsung/mms/location/SearchHandler$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 81
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/mms/location/SearchHandler;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/samsung/mms/location/SearchHandler;->getNoResultsVector(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private getNBIContext(Landroid/content/Context;)Lcom/nbi/common/NBIContext;
    .locals 2
    .parameter "context"

    .prologue
    .line 139
    :try_start_0
    invoke-static {p1}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/mms/location/LBSManager;->getNBIContext()Lcom/nbi/common/NBIContext;
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getNoResultsVector(Landroid/content/Context;)Ljava/util/Vector;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 287
    .local v0, objects:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 288
    return-object v0
.end method


# virtual methods
.method protected dismissSearchDialog()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 154
    :cond_0
    return-void
.end method

.method public displayNoSearches(Z)V
    .locals 3
    .parameter "isAddress"

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-boolean v1, p0, Lcom/samsung/mms/location/SearchHandler;->mShowFailedList:Z

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;

    invoke-interface {v1, v2, v2}, Lcom/samsung/mms/location/SearchHandlerListener;->onResultsReturned(IZ)V

    .line 279
    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    const v1, 0x7f0a03e9

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, fialedMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;

    invoke-direct {v2, p0, v0}, Lcom/samsung/mms/location/SearchHandler$NoResultsListAdapter;-><init>(Lcom/samsung/mms/location/SearchHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    iget-object v1, p0, Lcom/samsung/mms/location/SearchHandler;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 279
    .end local v0           #fialedMessage:Ljava/lang/String;
    :cond_1
    const v1, 0x7f0a03ea

    goto :goto_1
.end method

.method protected performSearch(Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;Lcom/nbi/common/NBIListener;I)V
    .locals 8
    .parameter "searchString"
    .parameter "searchRegion"
    .parameter "listener"
    .parameter "searchType"

    .prologue
    .line 93
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    packed-switch p4, :pswitch_data_0

    .line 122
    const-string v0, "SearchHandler"

    const-string v2, "performSearch() - unknown search type"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " .."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    .line 128
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/mms/location/SearchHandler;->searchDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchingDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 134
    :goto_1
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/SearchHandler;->getNBIContext(Landroid/content/Context;)Lcom/nbi/common/NBIContext;

    move-result-object v1

    .line 101
    .local v1, nbiContext:Lcom/nbi/common/NBIContext;
    if-eqz v1, :cond_0

    .line 102
    new-instance v0, Lcom/nbi/map/search/poi/POISearchRequest;

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x2

    move-object v7, p3

    check-cast v7, Lcom/nbi/map/search/poi/POISearchListener;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/nbi/map/search/poi/POISearchRequest;-><init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;Ljava/lang/String;[Ljava/lang/String;IILcom/nbi/map/search/poi/POISearchListener;)V

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    .line 105
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0}, Lcom/nbi/common/NBIRequest;->startRequest()V

    goto :goto_0

    .line 112
    .end local v1           #nbiContext:Lcom/nbi/common/NBIContext;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/SearchHandler;->getNBIContext(Landroid/content/Context;)Lcom/nbi/common/NBIContext;

    move-result-object v1

    .line 113
    .restart local v1       #nbiContext:Lcom/nbi/common/NBIContext;
    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Lcom/nbi/map/geocode/GeocodeRequest;

    const-string v3, "USA"

    const/16 v4, 0xa

    move-object v5, p3

    check-cast v5, Lcom/nbi/map/geocode/GeocodeListener;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nbi/map/geocode/GeocodeRequest;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Ljava/lang/String;ILcom/nbi/map/geocode/GeocodeListener;)V

    iput-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    .line 117
    iget-object v0, p0, Lcom/samsung/mms/location/SearchHandler;->mSearchRequest:Lcom/nbi/common/NBIRequest;

    invoke-interface {v0}, Lcom/nbi/common/NBIRequest;->startRequest()V

    goto :goto_0

    .line 132
    .end local v1           #nbiContext:Lcom/nbi/common/NBIContext;
    :cond_1
    const-string v0, "SearchHandler"

    const-string v2, "performSearch() - no search term provided"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
