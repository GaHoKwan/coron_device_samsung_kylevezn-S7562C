.class public Lnbisdk/ay;
.super Ljava/lang/Object;


# instance fields
.field public M:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public ce:Ljava/lang/String;

.field public cf:Ljava/lang/String;

.field public cg:Ljava/lang/String;

.field public ch:Ljava/lang/String;

.field public ci:Ljava/lang/String;

.field public cj:Ljava/lang/String;

.field public ck:Ljava/lang/String;

.field public cl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/lc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "airport"

    move-object v1, p0

    :goto_0
    iput-object v0, v1, Lnbisdk/ay;->M:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ce:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cf:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cg:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ch:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ci:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cj:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ck:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cl:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "intersect"

    move-object v1, p0

    goto :goto_0

    :cond_1
    const-string v0, "street"

    move-object v1, p0

    goto :goto_0
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->M:Ljava/lang/String;

    const-string v0, "sa"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ce:Ljava/lang/String;

    const-string v0, "str"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cf:Ljava/lang/String;

    const-string v0, "xstr"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cg:Ljava/lang/String;

    const-string v0, "city"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ch:Ljava/lang/String;

    const-string v0, "county"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ci:Ljava/lang/String;

    const-string v0, "state"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cj:Ljava/lang/String;

    const-string v0, "postal"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->ck:Ljava/lang/String;

    const-string v0, "country"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->Y:Ljava/lang/String;

    const-string v0, "airport"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ay;->cl:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
