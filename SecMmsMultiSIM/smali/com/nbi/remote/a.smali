.class public final Lcom/nbi/remote/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nbi/remote/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private np:Lcom/navbuilder/nb/NBException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nbi/remote/b;

    invoke-direct {v0}, Lcom/nbi/remote/b;-><init>()V

    sput-object v0, Lcom/nbi/remote/a;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public final ie()Lcom/navbuilder/nb/NBException;
    .locals 1

    iget-object v0, p0, Lcom/nbi/remote/a;->np:Lcom/navbuilder/nb/NBException;

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p1}, Lnbisdk/ay;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/navbuilder/nb/NBException;

    invoke-direct {v2, v0, v1}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/nbi/remote/a;->np:Lcom/navbuilder/nb/NBException;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/remote/a;->np:Lcom/navbuilder/nb/NBException;

    invoke-virtual {v0}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nbi/remote/a;->np:Lcom/navbuilder/nb/NBException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnbisdk/ay;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method
