.class public Landroid/app/enterprise/geofencing/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/geofencing/BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

.field public left:Landroid/app/enterprise/geofencing/LatLongPoint;

.field public right:Landroid/app/enterprise/geofencing/LatLongPoint;

.field public top:Landroid/app/enterprise/geofencing/LatLongPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/app/enterprise/geofencing/BoundingBox$1;

    invoke-direct {v0}, Landroid/app/enterprise/geofencing/BoundingBox$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/geofencing/BoundingBox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 73
    new-instance v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 74
    new-instance v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 75
    new-instance v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)V
    .locals 0
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 88
    iput-object p2, p0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 89
    iput-object p3, p0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 90
    iput-object p4, p0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/BoundingBox;->readFromParcel(Landroid/os/Parcel;)V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/geofencing/BoundingBox$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/enterprise/geofencing/BoundingBox;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 130
    sget-object v0, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 131
    sget-object v0, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 132
    sget-object v0, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 133
    sget-object v0, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    iput-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    iget-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    iget-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    iget-object v0, p0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    return-void
.end method
