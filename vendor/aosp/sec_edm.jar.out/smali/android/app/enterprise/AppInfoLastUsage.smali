.class public Landroid/app/enterprise/AppInfoLastUsage;
.super Landroid/app/enterprise/AppInfo;
.source "AppInfoLastUsage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/AppInfoLastUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLastAppUsage:J

.field public mLastLaunchTime:J

.field public mLaunchCountPerMonth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/app/enterprise/AppInfoLastUsage$1;

    invoke-direct {v0}, Landroid/app/enterprise/AppInfoLastUsage$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/AppInfoLastUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 71
    invoke-direct {p0}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 49
    iput-wide v1, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 51
    iput-wide v1, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const-wide/16 v1, -0x1

    .line 78
    invoke-direct {p0}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 49
    iput-wide v1, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 51
    iput-wide v1, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/enterprise/AppInfoLastUsage;->readFromParcel(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/enterprise/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    iget v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    return-void
.end method
