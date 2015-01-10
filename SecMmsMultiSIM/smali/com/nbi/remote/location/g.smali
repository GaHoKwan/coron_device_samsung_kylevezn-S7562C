.class public final Lcom/nbi/remote/location/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nbi/remote/location/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sS:Lnbisdk/nb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nbi/remote/location/j;

    invoke-direct {v0}, Lcom/nbi/remote/location/j;-><init>()V

    sput-object v0, Lcom/nbi/remote/location/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final kb()Lnbisdk/nb;
    .locals 1

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    new-instance v0, Lnbisdk/nb;

    invoke-direct {v0}, Lnbisdk/nb;-><init>()V

    iput-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/nb;->setAltitude(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/nb;->setGpsTime(J)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/nb;->setHeading(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/nb;->setHorizontalVelocity(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/nb;->setLatitude(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/nb;->setLongitude(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/nb;->setNumberOfSatellites(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/nb;->setStatus(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/nb;->setValid(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/nb;->setAccuracy(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/nb;->setLocationType(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-static {p1}, Lnbisdk/ay;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/nb;->aO(Ljava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getGpsTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getHeading()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getHorizontalVelocity()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getNumberOfSatellites()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getValid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getAccuracy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->getLocationType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nbi/remote/location/g;->sS:Lnbisdk/nb;

    invoke-virtual {v0}, Lnbisdk/nb;->kR()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnbisdk/ay;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method
