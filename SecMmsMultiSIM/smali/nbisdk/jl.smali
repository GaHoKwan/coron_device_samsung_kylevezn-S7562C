.class public final Lnbisdk/jl;
.super Ljava/lang/Object;


# instance fields
.field private Q:Lnbisdk/de;

.field private Y:Ljava/lang/String;

.field private aZ:[B

.field private aa:Z

.field private cC:I

.field private cR:Lnbisdk/lc;

.field private cZ:I

.field private cf:Ljava/lang/String;

.field private cg:Ljava/lang/String;

.field private cl:Ljava/lang/String;

.field private cx:Lnbisdk/lc;

.field private db:Z

.field private kT:J

.field private oB:[B

.field private ou:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/DataInputStream;Lnbisdk/jl;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    if-eqz p2, :cond_2

    iput-object v0, p1, Lnbisdk/jl;->oB:[B

    goto :goto_0

    :cond_2
    iput-object v0, p1, Lnbisdk/jl;->aZ:[B

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_4

    invoke-static {p0}, Lnbisdk/jl;->o(Ljava/io/DataInputStream;)Lnbisdk/lc;

    move-result-object v0

    iput-object v0, p1, Lnbisdk/jl;->cx:Lnbisdk/lc;

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lnbisdk/jl;->o(Ljava/io/DataInputStream;)Lnbisdk/lc;

    move-result-object v0

    iput-object v0, p1, Lnbisdk/jl;->cR:Lnbisdk/lc;

    goto :goto_0
.end method

.method static a(Ljava/io/DataOutputStream;Lnbisdk/jl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p1, Lnbisdk/jl;->cf:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p1, Lnbisdk/jl;->cg:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v1, p1, Lnbisdk/jl;->aa:Z

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v1, p1, Lnbisdk/jl;->db:Z

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-wide v1, p1, Lnbisdk/jl;->kT:J

    invoke-virtual {p0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v1, p1, Lnbisdk/jl;->cC:I

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p1, Lnbisdk/jl;->cZ:I

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p1, Lnbisdk/jl;->Y:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p1, Lnbisdk/jl;->cl:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p1, Lnbisdk/jl;->Q:Lnbisdk/de;

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget-object v1, p1, Lnbisdk/jl;->oB:[B

    iget-object v2, p1, Lnbisdk/jl;->cx:Lnbisdk/lc;

    invoke-static {p0, v1, v2}, Lnbisdk/jl;->a(Ljava/io/DataOutputStream;[BLnbisdk/lc;)V

    iget-object v1, p1, Lnbisdk/jl;->aZ:[B

    iget-object v2, p1, Lnbisdk/jl;->cR:Lnbisdk/lc;

    invoke-static {p0, v1, v2}, Lnbisdk/jl;->a(Ljava/io/DataOutputStream;[BLnbisdk/lc;)V

    iget-object v2, p1, Lnbisdk/jl;->ou:Ljava/util/Vector;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnbisdk/de;->dP()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v2}, Lnbisdk/de;->dQ()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v2}, Lnbisdk/de;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Lnbisdk/de;->dS()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p0, v1}, Lnbisdk/jl;->a(Ljava/io/DataOutputStream;Lnbisdk/lc;)V

    :goto_1
    invoke-virtual {v2}, Lnbisdk/de;->getPhoneNumberCount()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/di;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4}, Lnbisdk/di;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/di;->ep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/di;->er()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lnbisdk/de;->getCategoriesCount()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Lnbisdk/de;->D(I)Lnbisdk/qc;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/qc;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/qc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lnbisdk/de;->dR()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lnbisdk/de;->E(I)Lnbisdk/vl;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/vl;->nV()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/vl;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnbisdk/vl;->nW()Z

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_6
    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Lnbisdk/lc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnbisdk/lc;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p1}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p1}, Lnbisdk/lc;->getFreeform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;[BLnbisdk/lc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p0, p2}, Lnbisdk/jl;->a(Ljava/io/DataOutputStream;Lnbisdk/lc;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method static n(Ljava/io/DataInputStream;)Lnbisdk/jl;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lnbisdk/jl;

    invoke-direct {v2}, Lnbisdk/jl;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lnbisdk/jl;->cf:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lnbisdk/jl;->cg:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, v2, Lnbisdk/jl;->aa:Z

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, v2, Lnbisdk/jl;->db:Z

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lnbisdk/jl;->kT:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v2, Lnbisdk/jl;->cC:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v2, Lnbisdk/jl;->cZ:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lnbisdk/jl;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lnbisdk/jl;->cl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v3, Lnbisdk/de;

    invoke-direct {v3}, Lnbisdk/de;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnbisdk/de;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnbisdk/de;->setServerModTime(J)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnbisdk/de;->d(J)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lnbisdk/de;->setId(I)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lnbisdk/de;->F(I)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    invoke-static {p0}, Lnbisdk/jl;->o(Ljava/io/DataInputStream;)Lnbisdk/lc;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnbisdk/de;->c(Lnbisdk/lc;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lnbisdk/di;

    invoke-direct {v10, v5, v6, v7, v8}, Lnbisdk/di;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lnbisdk/di;->V(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lnbisdk/de;->a(Lnbisdk/di;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lnbisdk/qc;

    invoke-direct {v7, v5, v6}, Lnbisdk/qc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lnbisdk/de;->c(Lnbisdk/qc;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    new-instance v10, Lnbisdk/vl;

    invoke-direct {v10, v5, v6}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lnbisdk/vl;->bs(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Lnbisdk/vl;->bt(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lnbisdk/vl;->X(Z)V

    invoke-virtual {v3, v10}, Lnbisdk/de;->b(Lnbisdk/vl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput-object v3, v2, Lnbisdk/jl;->Q:Lnbisdk/de;

    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, v2, v1}, Lnbisdk/jl;->a(Ljava/io/DataInputStream;Lnbisdk/jl;Z)V

    invoke-static {p0, v2, v0}, Lnbisdk/jl;->a(Ljava/io/DataInputStream;Lnbisdk/jl;Z)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_6

    :goto_3
    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lnbisdk/jl;->ou:Ljava/util/Vector;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, v2, Lnbisdk/jl;->ou:Ljava/util/Vector;

    :cond_5
    iget-object v4, v2, Lnbisdk/jl;->ou:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-object v2
.end method

.method private static o(Ljava/io/DataInputStream;)Lnbisdk/lc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0}, Lnbisdk/lc;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setType(I)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAreaName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setStreet(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCrossStreet(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCity(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCounty(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setState(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setPostal(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAirport(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/lc;->setLatitude(D)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/lc;->setLongitude(D)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setFreeform(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final cX()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->Q:Lnbisdk/de;

    return-object v0
.end method

.method public final de()I
    .locals 1

    iget v0, p0, Lnbisdk/jl;->cZ:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final iA()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->cR:Lnbisdk/lc;

    return-object v0
.end method

.method public final iB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->cg:Ljava/lang/String;

    return-object v0
.end method

.method public final iC()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->ou:Ljava/util/Vector;

    return-object v0
.end method

.method public final iD()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/jl;->kT:J

    return-wide v0
.end method

.method public final iE()I
    .locals 1

    iget v0, p0, Lnbisdk/jl;->cC:I

    return v0
.end method

.method public final iF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public final ix()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->cx:Lnbisdk/lc;

    return-object v0
.end method

.method public final iy()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->oB:[B

    return-object v0
.end method

.method public final iz()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/jl;->aZ:[B

    return-object v0
.end method
