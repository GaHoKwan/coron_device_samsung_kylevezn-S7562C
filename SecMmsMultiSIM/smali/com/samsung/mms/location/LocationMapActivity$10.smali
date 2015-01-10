.class Lcom/samsung/mms/location/LocationMapActivity$10;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1835
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 1838
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1840
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 1865
    :goto_0
    return-void

    .line 1844
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v4, 0x7f0e0116

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1845
    .local v10, editSearch:Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1846
    .local v11, searchString:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 1848
    .local v2, showResultsList:Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchTypeRadioGroup:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$2400(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v4, 0x7f0e011c

    if-ne v1, v4, :cond_3

    .line 1851
    new-instance v0, Lcom/samsung/mms/location/POISearchHandler;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchHandlerListener;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/location/POISearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 1855
    .local v0, searchHandler:Lcom/samsung/mms/location/POISearchHandler;
    new-instance v1, Lcom/nbi/map/data/SearchRegion;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLatitude:D
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$2500(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->lastLongitude:D
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$2600(Lcom/samsung/mms/location/LocationMapActivity;)D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/nbi/map/data/SearchRegion;-><init>(DD)V

    invoke-virtual {v0, v11, v1}, Lcom/samsung/mms/location/POISearchHandler;->performSearch(Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;)V

    goto :goto_0

    .line 1846
    .end local v0           #searchHandler:Lcom/samsung/mms/location/POISearchHandler;
    .end local v2           #showResultsList:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1859
    .restart local v2       #showResultsList:Z
    :cond_3
    new-instance v3, Lcom/samsung/mms/location/GeocodeSearchHandler;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v7

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$10;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchHandlerListener;

    move-result-object v9

    move v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/mms/location/GeocodeSearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 1863
    .local v3, geoHandler:Lcom/samsung/mms/location/GeocodeSearchHandler;
    invoke-virtual {v3, v11}, Lcom/samsung/mms/location/GeocodeSearchHandler;->performSearch(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
