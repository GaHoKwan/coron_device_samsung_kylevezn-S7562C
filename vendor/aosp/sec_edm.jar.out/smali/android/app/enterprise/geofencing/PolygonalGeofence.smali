.class public Landroid/app/enterprise/geofencing/PolygonalGeofence;
.super Landroid/app/enterprise/geofencing/Geofence;
.source "PolygonalGeofence.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

.field public graceDistance:D

.field public optimizedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field public pointsWithinGraceLimit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    .line 126
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/PolygonalGeofence;->readFromParcel(Landroid/os/Parcel;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/util/List;D)V
    .locals 1
    .parameter
    .parameter "graceDistance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/enterprise/geofencing/Geofence;->type:I

    .line 90
    iput-object p1, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    .line 91
    iput-wide p2, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;)V
    .locals 1
    .parameter
    .parameter "graceDistance"
    .parameter
    .parameter
    .parameter "boundingBox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;",
            "Landroid/app/enterprise/geofencing/BoundingBox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, polygonList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .local p4, latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .local p5, gracePoints:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/enterprise/geofencing/Geofence;->type:I

    .line 105
    iput-object p1, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    .line 106
    iput-wide p2, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    .line 107
    iput-object p4, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .line 108
    iput-object p5, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    .line 109
    iput-object p6, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/enterprise/geofencing/Geofence;->readFromParcel(Landroid/os/Parcel;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 159
    sget-object v3, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 160
    .local v1, point:Landroid/app/enterprise/geofencing/LatLongPoint;
    if-nez v1, :cond_0

    .line 161
    new-instance v3, Landroid/os/ParcelFormatException;

    const-string v4, "Parcel format exception"

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_0
    iget-object v3, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v1           #point:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    .line 177
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/geofencing/Geofence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    iget-object v2, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 140
    iget-object v2, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 141
    .local v1, point:Landroid/app/enterprise/geofencing/LatLongPoint;
    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1           #point:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_0
    iget-wide v2, p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 152
    return-void
.end method
