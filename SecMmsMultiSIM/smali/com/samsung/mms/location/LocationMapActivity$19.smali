.class Lcom/samsung/mms/location/LocationMapActivity$19;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Lcom/samsung/mms/location/SearchHandlerListener;


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
    .line 2454
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceReceived(Lcom/nbi/map/data/Place;)V
    .locals 2
    .parameter "place"

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mSearchMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$800(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->searchPerformed:Z
    invoke-static {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$4702(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    .line 2487
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/android/MapView;->removeAllPins()V

    .line 2490
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->shiftMapToLocation(Lcom/nbi/map/data/Place;)V
    invoke-static {v0, p1}, Lcom/samsung/mms/location/LocationMapActivity;->access$3500(Lcom/samsung/mms/location/LocationMapActivity;Lcom/nbi/map/data/Place;)V

    .line 2491
    return-void
.end method

.method public onResultsReturned(IZ)V
    .locals 4
    .parameter "resultCount"
    .parameter "showResults"

    .prologue
    const/4 v1, 0x0

    .line 2458
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->isStartupSearch:Z
    invoke-static {v2, v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$4302(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    .line 2461
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$4400(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mMyLocation:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$4400(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2464
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$4500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2465
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mFavoriteLocation:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$4500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2467
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$4600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2468
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mRecentLocation:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$4600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2471
    :cond_2
    if-eqz p2, :cond_3

    .line 2473
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$19;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v1, 0x5

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v0, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;I)V

    .line 2475
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 2458
    goto :goto_0
.end method
