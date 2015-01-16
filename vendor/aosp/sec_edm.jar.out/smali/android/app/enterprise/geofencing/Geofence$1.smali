.class final Landroid/app/enterprise/geofencing/Geofence$1;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/geofencing/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/enterprise/geofencing/Geofence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;
    .locals 3
    .parameter "in"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 68
    .local v1, position:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, geofenceType:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    invoke-static {v0, p1}, Landroid/app/enterprise/geofencing/GeofenceFactory;->createGeofence(ILandroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/Geofence$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/geofencing/Geofence;
    .locals 1
    .parameter "size"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/Geofence$1;->newArray(I)[Landroid/app/enterprise/geofencing/Geofence;

    move-result-object v0

    return-object v0
.end method
