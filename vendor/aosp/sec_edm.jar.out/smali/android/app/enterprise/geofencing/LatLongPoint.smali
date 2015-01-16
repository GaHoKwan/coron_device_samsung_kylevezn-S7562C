.class public Landroid/app/enterprise/geofencing/LatLongPoint;
.super Ljava/lang/Object;
.source "LatLongPoint.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/app/enterprise/geofencing/LatLongPoint$1;

    invoke-direct {v0}, Landroid/app/enterprise/geofencing/LatLongPoint$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 72
    iput-wide p3, p0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/LatLongPoint;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/geofencing/LatLongPoint$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 102
    iget-wide v0, p0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 103
    iget-wide v0, p0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 104
    return-void
.end method
