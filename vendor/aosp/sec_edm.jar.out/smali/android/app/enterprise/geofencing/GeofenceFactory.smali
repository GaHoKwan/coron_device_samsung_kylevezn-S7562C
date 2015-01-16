.class public Landroid/app/enterprise/geofencing/GeofenceFactory;
.super Ljava/lang/Object;
.source "GeofenceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGeofence(ILandroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;
    .locals 1
    .parameter "geofenceType"
    .parameter "in"

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    new-instance v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    invoke-direct {v0, p1}, Landroid/app/enterprise/geofencing/PolygonalGeofence;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 51
    :pswitch_1
    new-instance v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    invoke-direct {v0, p1}, Landroid/app/enterprise/geofencing/CircularGeofence;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 54
    :pswitch_2
    new-instance v0, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct {v0, p1}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
