.class public Landroid/app/enterprise/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mobileRxBytes:J

.field public mobileTxBytes:J

.field public uid:I

.field public wifiRxBytes:J

.field public wifiTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/app/enterprise/NetworkStats$1;

    invoke-direct {v0}, Landroid/app/enterprise/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 52
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 56
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 60
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 64
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const-wide/16 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 52
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 56
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 60
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 64
    iput-wide v1, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/enterprise/NetworkStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 96
    iget v0, p0, Landroid/app/enterprise/NetworkStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    return-void
.end method
