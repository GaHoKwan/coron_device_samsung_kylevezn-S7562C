.class Lcom/samsung/mms/location/LocationMapActivity$7;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1559
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v11, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1563
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1565
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v7}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    .line 1634
    :cond_0
    :goto_0
    return v6

    .line 1568
    :cond_1
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #setter for: Lcom/samsung/mms/location/LocationMapActivity;->followMe:Z
    invoke-static {v8, v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$102(Lcom/samsung/mms/location/LocationMapActivity;Z)Z

    .line 1571
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v8}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v8

    if-eq v8, v11, :cond_2

    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v8}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v8

    if-eq v8, v6, :cond_2

    .line 1572
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v8, v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;I)V

    .line 1575
    :cond_2
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->pinBubble:Lcom/samsung/mms/location/PinBubbleView;
    invoke-static {v8}, Lcom/samsung/mms/location/LocationMapActivity;->access$1100(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PinBubbleView;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/mms/location/PinBubbleView;->isInPinbuble(FF)I

    move-result v0

    .line 1576
    .local v0, clipResult:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v6, v7

    .line 1634
    goto :goto_0

    .line 1582
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 1585
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->currentFocusMode:I
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$1300(Lcom/samsung/mms/location/LocationMapActivity;)I

    move-result v6

    if-eq v6, v11, :cond_4

    .line 1586
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->addLocationClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$1500(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View$OnClickListener;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v8}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v8

    invoke-interface {v6, v8}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_1
    move v6, v7

    .line 1593
    goto :goto_0

    .line 1589
    :cond_4
    iget-object v6, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->vzNavigateListener:Landroid/view/View$OnClickListener;
    invoke-static {v6}, Lcom/samsung/mms/location/LocationMapActivity;->access$1600(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/view/View$OnClickListener;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v8}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v8

    invoke-interface {v6, v8}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 1597
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_0

    .line 1599
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v8}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v4

    .line 1600
    .local v4, selectedPinID:I
    if-ltz v4, :cond_6

    .line 1602
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/nbi/map/android/MapView;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v3

    .line 1603
    .local v3, selectedPin:Lcom/nbi/map/android/Pin;
    invoke-virtual {v3}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v5

    .line 1607
    .local v5, selectedPlace:Lcom/nbi/map/data/Place;
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$1200(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    .line 1609
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/mms/location/PlaceDBAdapter;->findPlace(Lcom/nbi/map/data/Place;)J

    move-result-wide v1

    .line 1611
    .local v1, rowId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-nez v7, :cond_5

    .line 1613
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/mms/location/PlaceDBAdapter;->insertPlace(Lcom/nbi/map/data/Place;)J

    .line 1620
    :goto_2
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 1617
    :cond_5
    iget-object v7, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v7}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->deletePlace(J)Z

    goto :goto_2

    .line 1626
    .end local v1           #rowId:J
    .end local v3           #selectedPin:Lcom/nbi/map/android/Pin;
    .end local v5           #selectedPlace:Lcom/nbi/map/data/Place;
    :cond_6
    const-string v8, "LocationMapActivity"

    const-string v9, "OnTouchListener:onTouch() - no selected pin to add/remove when there should be"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    iget-object v8, p0, Lcom/samsung/mms/location/LocationMapActivity$7;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v9, 0x7f0a03f7

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1576
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
