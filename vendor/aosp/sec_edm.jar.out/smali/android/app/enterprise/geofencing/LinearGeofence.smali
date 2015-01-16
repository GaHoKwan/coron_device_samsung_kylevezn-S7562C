.class public Landroid/app/enterprise/geofencing/LinearGeofence;
.super Landroid/app/enterprise/geofencing/Geofence;
.source "LinearGeofence.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

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

.field public width:D


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/LinearGeofence;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/util/List;D)V
    .locals 1
    .parameter
    .parameter "width"
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
    .line 86
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/enterprise/geofencing/Geofence;->type:I

    .line 89
    iput-object p1, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    .line 92
    iput-wide p2, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;D)V
    .locals 1
    .parameter
    .parameter
    .parameter "boundingBox"
    .parameter "widthVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;",
            "Landroid/app/enterprise/geofencing/BoundingBox;",
            "D)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, polygonList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .local p2, latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 100
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/enterprise/geofencing/Geofence;->type:I

    .line 101
    iput-object p1, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    .line 102
    iput-object p2, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .line 103
    iput-object p3, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    .line 104
    iput-wide p4, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 106
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/enterprise/geofencing/Geofence;->readFromParcel(Landroid/os/Parcel;)V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 163
    sget-object v3, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 164
    .local v1, point:Landroid/app/enterprise/geofencing/LatLongPoint;
    if-nez v1, :cond_0

    .line 165
    new-instance v3, Landroid/os/ParcelFormatException;

    const-string v4, "Parcel format exception"

    invoke-direct {v3, v4}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    :cond_0
    iget-object v3, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v1           #point:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .line 181
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/geofencing/Geofence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    iget-object v2, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 145
    .local v1, point:Landroid/app/enterprise/geofencing/LatLongPoint;
    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1           #point:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_0
    iget-wide v2, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 156
    return-void
.end method
