.class public Landroid/app/enterprise/BluetoothControlInfo;
.super Landroid/app/enterprise/ControlInfo;
.source "BluetoothControlInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/app/enterprise/BluetoothControlInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/BluetoothControlInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/BluetoothControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/enterprise/ControlInfo;-><init>()V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/enterprise/ControlInfo;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ControlInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/BluetoothControlInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/enterprise/BluetoothControlInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
