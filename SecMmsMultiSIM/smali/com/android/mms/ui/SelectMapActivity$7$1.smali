.class Lcom/android/mms/ui/SelectMapActivity$7$1;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity$7;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SelectMapActivity$7;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity$7;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$7$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$7;

    iput-object p2, p0, Lcom/android/mms/ui/SelectMapActivity$7$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$7$1;->val$location:Landroid/location/Location;

    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$7$1;->val$location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 501
    .local v0, geoLat:Ljava/lang/Double;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$7$1;->val$location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 503
    .local v1, geoLng:Ljava/lang/Double;
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    .end local v2           #point:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 506
    .end local v0           #geoLat:Ljava/lang/Double;
    .end local v1           #geoLng:Ljava/lang/Double;
    .restart local v2       #point:Lcom/google/android/maps/GeoPoint;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$7$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$7;

    iget-object v3, v3, Lcom/android/mms/ui/SelectMapActivity$7;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity$7$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$7;

    iget-object v4, v4, Lcom/android/mms/ui/SelectMapActivity$7;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #calls: Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/mms/ui/SelectMapActivity;->access$700(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/mms/ui/SelectMapActivity;->access$602(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    return-void
.end method
