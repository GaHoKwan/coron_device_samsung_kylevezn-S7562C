.class public Landroid/app/enterprise/license/LicenseInfo;
.super Ljava/lang/Object;
.source "LicenseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/license/LicenseInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private instanceId:Ljava/lang/String;

.field private licenseKey:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/app/enterprise/license/LicenseInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/license/LicenseInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/license/LicenseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/enterprise/license/LicenseInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/license/LicenseInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "instanceId"
    .parameter "licenseKey"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/app/enterprise/license/LicenseInfo;->packageName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Landroid/app/enterprise/license/LicenseInfo;->instanceId:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Landroid/app/enterprise/license/LicenseInfo;->licenseKey:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->packageName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->instanceId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->licenseKey:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Landroid/app/enterprise/license/LicenseInfo;->licenseKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
