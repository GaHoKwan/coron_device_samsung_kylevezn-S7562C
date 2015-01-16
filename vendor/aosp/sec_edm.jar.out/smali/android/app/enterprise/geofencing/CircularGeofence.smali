.class public Landroid/app/enterprise/geofencing/CircularGeofence;
.super Landroid/app/enterprise/geofencing/Geofence;
.source "CircularGeofence.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public center:Landroid/app/enterprise/geofencing/LatLongPoint;

.field public radius:D


# direct methods
.method public constructor <init>(Landroid/app/enterprise/geofencing/LatLongPoint;D)V
    .locals 1
    .parameter "center"
    .parameter "radius"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/enterprise/geofencing/Geofence;->type:I

    .line 72
    iput-object p1, p0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 73
    iput-wide p2, p0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/CircularGeofence;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/enterprise/geofencing/Geofence;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    sget-object v0, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    iput-object v0, p0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/geofencing/Geofence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    iget-object v0, p0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    iget-wide v0, p0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 113
    return-void
.end method
