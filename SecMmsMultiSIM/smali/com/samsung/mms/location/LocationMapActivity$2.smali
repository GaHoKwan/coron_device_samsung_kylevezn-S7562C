.class Lcom/samsung/mms/location/LocationMapActivity$2;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;

.field final synthetic val$addressArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iput-object p2, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->val$addressArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 861
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 872
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_place_address"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 866
    .local v7, address:Ljava/lang/String;
    const-string v1, "LocationMapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OnStart() Address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v0, Lcom/samsung/mms/location/GeocodeSearchHandler;

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchResultsList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v4}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v5}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->searchHandlerListener:Lcom/samsung/mms/location/SearchHandlerListener;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$500(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/SearchHandlerListener;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/location/GeocodeSearchHandler;-><init>(Landroid/app/Activity;ZLandroid/widget/ListView;Lcom/nbi/map/android/MapView;Lcom/samsung/mms/location/PlaceDBAdapter;Lcom/samsung/mms/location/SearchHandlerListener;)V

    .line 871
    .local v0, geoHandler:Lcom/samsung/mms/location/GeocodeSearchHandler;
    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$2;->val$addressArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/mms/location/GeocodeSearchHandler;->performSearch(Ljava/lang/String;)V

    goto :goto_0
.end method
