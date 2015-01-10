.class public final Lnbisdk/uh;
.super Ljava/lang/Object;


# instance fields
.field private V:I

.field private bj:I

.field private cC:I

.field private cK:J

.field private cT:I

.field private cf:Ljava/lang/String;

.field private ci:Ljava/lang/String;

.field private iD:Ljava/lang/String;

.field private iw:I

.field private la:J

.field private lu:[B

.field private mr:J

.field private zA:Ljava/lang/String;

.field private zB:Lnbisdk/zd;

.field private zC:Lnbisdk/bv;

.field private zD:Lnbisdk/cp;

.field private zE:Ljava/lang/String;

.field private zF:[Lnbisdk/cw;

.field private zG:Lnbisdk/jl;

.field private zH:Lnbisdk/ie;

.field private zI:Lnbisdk/hd;

.field private zJ:Lnbisdk/jv;

.field private zK:Lnbisdk/yk;

.field private zL:Ljava/util/Vector;

.field private zu:B

.field private zv:F

.field private zw:Lnbisdk/cs;

.field private zx:Lnbisdk/cs;

.field private zy:Lnbisdk/cs;

.field private zz:Lnbisdk/gw;


# direct methods
.method public constructor <init>(BIJJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lnbisdk/uh;->zu:B

    iput p2, p0, Lnbisdk/uh;->cT:I

    iput-wide p3, p0, Lnbisdk/uh;->mr:J

    iput-wide p5, p0, Lnbisdk/uh;->la:J

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    long-to-int v0, p3

    long-to-int v1, p5

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, p1, v2}, Lnbisdk/db;->a(IIIBB)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/DataInputStream;Lnbisdk/uh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lnbisdk/vl;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p1, Lnbisdk/uh;->zL:Ljava/util/Vector;

    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Lnbisdk/cs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnbisdk/cs;->db()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1}, Lnbisdk/cs;->dd()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1}, Lnbisdk/cs;->isEnhancedPOI()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1}, Lnbisdk/cs;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/cs;->de()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lnbisdk/cs;->dc()Lnbisdk/cp;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnbisdk/cp;->cQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnbisdk/cp;->cR()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Lnbisdk/cp;->cR()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mZ()I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Lnbisdk/cs;->dg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/cs;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lnbisdk/cs;->df()Lnbisdk/cp;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnbisdk/cp;->cQ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/cp;->cR()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Lnbisdk/cp;->cR()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private static a(Ljava/io/DataOutputStream;Lnbisdk/gw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnbisdk/gw;->gU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/gw;->getFilterCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lnbisdk/gw;->am(I)Lnbisdk/vl;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnbisdk/vl;->nV()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnbisdk/vl;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnbisdk/vl;->nW()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Lnbisdk/zd;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lnbisdk/zd;->pq()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1}, Lnbisdk/zd;->bU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/zd;->ps()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1}, Lnbisdk/zd;->oY()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p1}, Lnbisdk/zd;->pr()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p1}, Lnbisdk/zd;->ap()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lnbisdk/zd;->ap()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lnbisdk/zd;->pp()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v4, v0

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lnbisdk/uh;Ljava/io/DataInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lnbisdk/uh;->lu:[B

    iget-object v0, p0, Lnbisdk/uh;->lu:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v9, v0, [Lnbisdk/cw;

    move v7, v8

    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_2

    new-instance v0, Lnbisdk/cw;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lnbisdk/cw;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    aput-object v0, v9, v7

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v0, v8

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lnbisdk/vl;

    invoke-direct {v5, v3, v4}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    aget-object v0, v9, v7

    invoke-virtual {v0, v1}, Lnbisdk/cw;->d(Ljava/util/Vector;)V

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    iput-object v9, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    return-void
.end method

.method static at(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private b(Ljava/io/DataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/uh;->lu:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/uh;->lu:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/cw;->dC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/qh;->jb()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/cw;->getTimeDelta()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/cw;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/cw;->dD()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnbisdk/cw;->dE()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v0

    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public static q([B)Lnbisdk/uh;
    .locals 15

    const/16 v9, 0x9

    const/4 v8, 0x5

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    new-instance v0, Lnbisdk/uh;

    invoke-direct/range {v0 .. v6}, Lnbisdk/uh;-><init>(BIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v7, 0x2

    if-eq v1, v7, :cond_0

    const/4 v7, 0x6

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    const/4 v7, 0x3

    if-eq v1, v7, :cond_0

    const/4 v7, 0x4

    if-eq v1, v7, :cond_0

    const/16 v7, 0xb

    if-eq v1, v7, :cond_0

    const/16 v7, 0x13

    if-eq v1, v7, :cond_0

    const/16 v7, 0x12

    if-eq v1, v7, :cond_0

    const/16 v7, 0xc

    if-ne v1, v7, :cond_3

    :cond_0
    :try_start_1
    invoke-static {v14}, Lnbisdk/uh;->u(Ljava/io/DataInputStream;)Lnbisdk/cs;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zw:Lnbisdk/cs;

    :cond_1
    :goto_0
    sget-boolean v7, Lnbisdk/me;->sE:Z

    if-eqz v7, :cond_2

    long-to-int v3, v3

    long-to-int v4, v5

    const/16 v5, 0x9

    invoke-static {v2, v3, v4, v1, v5}, Lnbisdk/db;->a(IIIBB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FilterInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    return-object v0

    :cond_3
    const/16 v7, 0x8

    if-ne v1, v7, :cond_4

    :try_start_3
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v0, Lnbisdk/uh;->cK:J

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v0, Lnbisdk/uh;->bj:I

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v0, Lnbisdk/uh;->cC:I

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v0, Lnbisdk/uh;->zv:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    invoke-static {v1}, Lnbisdk/jg;->f(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FilterInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_4
    const/4 v7, 0x7

    if-ne v1, v7, :cond_5

    :try_start_6
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v0, Lnbisdk/uh;->cK:J

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->cf:Ljava/lang/String;

    invoke-static {v14}, Lnbisdk/uh;->u(Ljava/io/DataInputStream;)Lnbisdk/cs;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zx:Lnbisdk/cs;

    invoke-static {v14}, Lnbisdk/uh;->u(Ljava/io/DataInputStream;)Lnbisdk/cs;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zy:Lnbisdk/cs;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v14}, Ljava/io/FilterInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_3
    throw v0

    :cond_5
    if-ne v1, v9, :cond_6

    :try_start_8
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    iput-wide v7, v0, Lnbisdk/uh;->cK:J

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v0, Lnbisdk/uh;->bj:I

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v0, Lnbisdk/uh;->V:I

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->ci:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v0, Lnbisdk/uh;->cC:I

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    iput v7, v0, Lnbisdk/uh;->zv:F

    invoke-static {v14, v0}, Lnbisdk/uh;->a(Ljava/io/DataInputStream;Lnbisdk/uh;)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x1

    if-ne v1, v7, :cond_8

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zA:Ljava/lang/String;

    invoke-static {v14}, Lnbisdk/uh;->w(Ljava/io/DataInputStream;)Lnbisdk/gw;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zz:Lnbisdk/gw;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v7

    invoke-virtual {v7}, Lnbisdk/tt;->mZ()I

    move-result v7

    if-le v7, v8, :cond_1

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zE:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Lnbisdk/bv;

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v8

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lnbisdk/bv;-><init>(DD)V

    iput-object v7, v0, Lnbisdk/uh;->zC:Lnbisdk/bv;

    :cond_7
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {v14, v8}, Ljava/io/DataInputStream;->read([B)I

    new-instance v9, Lnbisdk/yt;

    invoke-direct {v9, v7, v8}, Lnbisdk/yt;-><init>(Ljava/lang/String;[B)V

    iput-object v9, v0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0xa

    if-ne v1, v7, :cond_9

    invoke-static {v14}, Lnbisdk/uh;->v(Ljava/io/DataInputStream;)Lnbisdk/zd;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zB:Lnbisdk/zd;

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0xd

    if-ne v1, v7, :cond_a

    invoke-static {v0, v14}, Lnbisdk/uh;->a(Lnbisdk/uh;Ljava/io/DataInputStream;)V

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0xe

    if-ne v1, v7, :cond_b

    invoke-static {v14}, Lnbisdk/jl;->n(Ljava/io/DataInputStream;)Lnbisdk/jl;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zG:Lnbisdk/jl;

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xf

    if-ne v1, v7, :cond_c

    invoke-static {v14}, Lnbisdk/ie;->l(Ljava/io/DataInputStream;)Lnbisdk/ie;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zH:Lnbisdk/ie;

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0x10

    if-ne v1, v7, :cond_d

    invoke-static {v14}, Lnbisdk/hd;->k(Ljava/io/DataInputStream;)Lnbisdk/hd;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zI:Lnbisdk/hd;

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0x11

    if-ne v1, v7, :cond_e

    invoke-static {v14}, Lnbisdk/jv;->p(Ljava/io/DataInputStream;)Lnbisdk/jv;

    move-result-object v7

    iput-object v7, v0, Lnbisdk/uh;->zJ:Lnbisdk/jv;

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0x14

    if-ne v1, v7, :cond_1

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    new-instance v7, Lnbisdk/yk;

    invoke-direct/range {v7 .. v12}, Lnbisdk/yk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v0, Lnbisdk/uh;->zK:Lnbisdk/yk;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_1
.end method

.method private static u(Ljava/io/DataInputStream;)Lnbisdk/cs;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/cs;

    invoke-direct {v0}, Lnbisdk/cs;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cs;->i(Z)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cs;->j(Z)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cs;->k(Z)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/cs;->D(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cs;->w(I)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->read([B)I

    new-instance v3, Lnbisdk/ue;

    invoke-direct {v3, v1, v2}, Lnbisdk/ue;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v3}, Lnbisdk/cs;->a(Lnbisdk/cp;)V

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mZ()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/cs;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cs;->setIndex(I)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->read([B)I

    new-instance v3, Lnbisdk/yt;

    invoke-direct {v3, v1, v2}, Lnbisdk/yt;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v3}, Lnbisdk/cs;->b(Lnbisdk/cp;)V

    :cond_1
    return-object v0
.end method

.method private static v(Ljava/io/DataInputStream;)Lnbisdk/zd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lnbisdk/zd;

    invoke-direct {v1}, Lnbisdk/zd;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/zd;->b(J)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/zd;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/zd;->p(J)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/zd;->a(D)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/zd;->b(D)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v1, v0}, Lnbisdk/zd;->n([B)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lnbisdk/zd;->a(Ljava/util/Vector;)V

    return-object v1
.end method

.method private static w(Ljava/io/DataInputStream;)Lnbisdk/gw;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lnbisdk/yg;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/yg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v3, Lnbisdk/vl;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnbisdk/vl;->bs(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnbisdk/vl;->bt(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Lnbisdk/vl;->X(Z)V

    invoke-virtual {v1, v3}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lnbisdk/bv;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zC:Lnbisdk/bv;

    return-void
.end method

.method public final a(Lnbisdk/cs;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zx:Lnbisdk/cs;

    return-void
.end method

.method public final a(Lnbisdk/gw;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zz:Lnbisdk/gw;

    return-void
.end method

.method public final b(Lnbisdk/cs;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zy:Lnbisdk/cs;

    return-void
.end method

.method public final bi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->cf:Ljava/lang/String;

    return-void
.end method

.method public final bj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zA:Ljava/lang/String;

    return-void
.end method

.method public final bk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->iD:Ljava/lang/String;

    return-void
.end method

.method public final bl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zE:Ljava/lang/String;

    return-void
.end method

.method public final bq(I)V
    .locals 0

    iput p1, p0, Lnbisdk/uh;->bj:I

    return-void
.end method

.method public final br(I)V
    .locals 0

    iput p1, p0, Lnbisdk/uh;->V:I

    return-void
.end method

.method public final bs(I)V
    .locals 0

    iput p1, p0, Lnbisdk/uh;->iw:I

    return-void
.end method

.method public final c(Lnbisdk/cp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    return-void
.end method

.method public final c(Lnbisdk/hd;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zI:Lnbisdk/hd;

    return-void
.end method

.method public final c(Lnbisdk/jv;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zJ:Lnbisdk/jv;

    return-void
.end method

.method public final c(Lnbisdk/se;[Lnbisdk/cw;)V
    .locals 1

    invoke-static {p1}, Lnbisdk/hn;->d(Lnbisdk/se;)[B

    move-result-object v0

    iput-object v0, p0, Lnbisdk/uh;->lu:[B

    iput-object p2, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    return-void
.end method

.method public final dV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->iD:Ljava/lang/String;

    return-object v0
.end method

.method public final dY()Lnbisdk/gw;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zz:Lnbisdk/gw;

    return-object v0
.end method

.method public final ek()Lnbisdk/cp;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    return-object v0
.end method

.method public final el()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zE:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnbisdk/uh;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnbisdk/uh;

    iget-object v1, p0, Lnbisdk/uh;->zH:Lnbisdk/ie;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnbisdk/uh;->zH:Lnbisdk/ie;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/uh;->zH:Lnbisdk/ie;

    iget-object v0, v0, Lnbisdk/uh;->zH:Lnbisdk/ie;

    invoke-virtual {v1, v0}, Lnbisdk/ie;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lnbisdk/uh;->zv:F

    return-void
.end method

.method public final fI()[B
    .locals 9

    const/4 v8, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v3, p0, Lnbisdk/uh;->cT:I

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v6, p0, Lnbisdk/uh;->mr:J

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v6, p0, Lnbisdk/uh;->la:J

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/4 v6, 0x6

    if-eq v3, v6, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    if-eq v3, v8, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/16 v6, 0xb

    if-eq v3, v6, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/16 v6, 0x13

    if-eq v3, v6, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/16 v6, 0x12

    if-eq v3, v6, :cond_0

    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/16 v6, 0xc

    if-ne v3, v6, :cond_2

    :cond_0
    iget-object v1, p0, Lnbisdk/uh;->zw:Lnbisdk/cs;

    invoke-static {v5, v1}, Lnbisdk/uh;->a(Ljava/io/DataOutputStream;Lnbisdk/cs;)V

    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3

    iget-wide v1, p0, Lnbisdk/uh;->cK:J

    invoke-virtual {v5, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v1, p0, Lnbisdk/uh;->bj:I

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/uh;->cC:I

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/uh;->zv:F

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lnbisdk/jg;->f(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FilterOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    :try_start_7
    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    iget-wide v1, p0, Lnbisdk/uh;->cK:J

    invoke-virtual {v5, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v1, p0, Lnbisdk/uh;->cf:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/uh;->zx:Lnbisdk/cs;

    invoke-static {v5, v1}, Lnbisdk/uh;->a(Ljava/io/DataOutputStream;Lnbisdk/cs;)V

    iget-object v1, p0, Lnbisdk/uh;->zy:Lnbisdk/cs;

    invoke-static {v5, v1}, Lnbisdk/uh;->a(Ljava/io/DataOutputStream;Lnbisdk/cs;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FilterOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_4
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_5
    throw v0

    :cond_4
    :try_start_a
    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    const/16 v6, 0x9

    if-ne v3, v6, :cond_5

    iget-wide v1, p0, Lnbisdk/uh;->cK:J

    invoke-virtual {v5, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v1, p0, Lnbisdk/uh;->bj:I

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/uh;->V:I

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lnbisdk/uh;->ci:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v1, p0, Lnbisdk/uh;->cC:I

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lnbisdk/uh;->zv:F

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v1, p0, Lnbisdk/uh;->zL:Ljava/util/Vector;

    invoke-static {v5, v1}, Lnbisdk/uh;->a(Ljava/io/DataOutputStream;Ljava/util/Vector;)V

    goto/16 :goto_0

    :cond_5
    iget-byte v3, p0, Lnbisdk/uh;->zu:B

    if-ne v3, v1, :cond_9

    iget-object v3, p0, Lnbisdk/uh;->zA:Ljava/lang/String;

    invoke-static {v3}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, p0, Lnbisdk/uh;->zz:Lnbisdk/gw;

    invoke-static {v5, v3}, Lnbisdk/uh;->a(Ljava/io/DataOutputStream;Lnbisdk/gw;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/tt;->mZ()I

    move-result v3

    if-le v3, v8, :cond_1

    iget-object v3, p0, Lnbisdk/uh;->zE:Ljava/lang/String;

    invoke-static {v3}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, p0, Lnbisdk/uh;->zC:Lnbisdk/bv;

    if-eqz v3, :cond_7

    move v3, v1

    :goto_6
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v3, p0, Lnbisdk/uh;->zC:Lnbisdk/bv;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lnbisdk/uh;->zC:Lnbisdk/bv;

    iget-wide v6, v3, Lnbisdk/bv;->dh:D

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v3, p0, Lnbisdk/uh;->zC:Lnbisdk/bv;

    iget-wide v6, v3, Lnbisdk/bv;->di:D

    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    :cond_6
    iget-object v3, p0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    if-eqz v3, :cond_8

    :goto_7
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Lnbisdk/uh;->iD:Ljava/lang/String;

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    invoke-virtual {v1}, Lnbisdk/cp;->cQ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/uh;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    invoke-virtual {v1}, Lnbisdk/cp;->cR()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lnbisdk/uh;->zD:Lnbisdk/cp;

    invoke-virtual {v1}, Lnbisdk/cp;->cR()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto :goto_6

    :cond_8
    move v1, v2

    goto :goto_7

    :cond_9
    iget-byte v1, p0, Lnbisdk/uh;->zu:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lnbisdk/uh;->zB:Lnbisdk/zd;

    invoke-static {v5, v1}, Lnbisdk/uh;->a(Ljava/io/DataOutputStream;Lnbisdk/zd;)V

    goto/16 :goto_0

    :cond_a
    iget-byte v1, p0, Lnbisdk/uh;->zu:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    invoke-direct {p0, v5}, Lnbisdk/uh;->b(Ljava/io/DataOutputStream;)V

    goto/16 :goto_0

    :cond_b
    iget-byte v1, p0, Lnbisdk/uh;->zu:B

    const/16 v2, 0xe

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lnbisdk/uh;->zG:Lnbisdk/jl;

    invoke-static {v5, v1}, Lnbisdk/jl;->a(Ljava/io/DataOutputStream;Lnbisdk/jl;)V

    goto/16 :goto_0

    :cond_c
    iget-byte v1, p0, Lnbisdk/uh;->zu:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lnbisdk/uh;->zH:Lnbisdk/ie;

    invoke-static {v5, v1}, Lnbisdk/ie;->a(Ljava/io/DataOutputStream;Lnbisdk/ie;)V

    goto/16 :goto_0

    :cond_d
    iget-byte v1, p0, Lnbisdk/uh;->zu:B

    const/16 v2, 0x10

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lnbisdk/uh;->zI:Lnbisdk/hd;

    invoke-static {v5, v1}, Lnbisdk/hd;->a(Ljava/io/DataOutputStream;Lnbisdk/hd;)V

    goto/16 :goto_0

    :cond_e
    iget-byte v1, p0, Lnbisdk/uh;->zu:B

    const/16 v2, 0x11

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lnbisdk/uh;->zJ:Lnbisdk/jv;

    invoke-static {v5, v1}, Lnbisdk/jv;->a(Ljava/io/DataOutputStream;Lnbisdk/jv;)V

    goto/16 :goto_0

    :cond_f
    iget-byte v1, p0, Lnbisdk/uh;->zu:B

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lnbisdk/uh;->zK:Lnbisdk/yk;

    invoke-static {v5, v1}, Lnbisdk/yk;->a(Ljava/io/DataOutputStream;Lnbisdk/yk;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto/16 :goto_4

    :catch_6
    move-exception v1

    goto/16 :goto_5
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lnbisdk/uh;->cC:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lnbisdk/uh;->cT:I

    return v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zA:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public final hG()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/uh;->mr:J

    return-wide v0
.end method

.method public final iD()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/uh;->cK:J

    return-wide v0
.end method

.method public final iE()I
    .locals 1

    iget v0, p0, Lnbisdk/uh;->bj:I

    return v0
.end method

.method public final l(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->zL:Ljava/util/Vector;

    return-void
.end method

.method public final ng()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/uh;->zu:B

    return v0
.end method

.method public final nh()Lnbisdk/cs;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zw:Lnbisdk/cs;

    return-object v0
.end method

.method public final ni()Lnbisdk/cs;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zx:Lnbisdk/cs;

    return-object v0
.end method

.method public final nj()Lnbisdk/cs;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zy:Lnbisdk/cs;

    return-object v0
.end method

.method public final nk()I
    .locals 1

    iget v0, p0, Lnbisdk/uh;->V:I

    return v0
.end method

.method public final nl()F
    .locals 1

    iget v0, p0, Lnbisdk/uh;->zv:F

    return v0
.end method

.method public final nm()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/uh;->la:J

    return-wide v0
.end method

.method public final nn()Lnbisdk/zd;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zB:Lnbisdk/zd;

    return-object v0
.end method

.method public final no()I
    .locals 1

    iget v0, p0, Lnbisdk/uh;->iw:I

    return v0
.end method

.method public final np()Lnbisdk/bv;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zC:Lnbisdk/bv;

    return-object v0
.end method

.method public final nq()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->lu:[B

    return-object v0
.end method

.method public final nr()[Lnbisdk/cw;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zF:[Lnbisdk/cw;

    return-object v0
.end method

.method public final ns()Lnbisdk/jl;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zG:Lnbisdk/jl;

    return-object v0
.end method

.method public final nt()Lnbisdk/ie;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zH:Lnbisdk/ie;

    return-object v0
.end method

.method public final nu()Lnbisdk/hd;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zI:Lnbisdk/hd;

    return-object v0
.end method

.method public final nv()Lnbisdk/jv;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zJ:Lnbisdk/jv;

    return-object v0
.end method

.method public final nw()Lnbisdk/yk;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zK:Lnbisdk/yk;

    return-object v0
.end method

.method public final nx()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/uh;->zL:Ljava/util/Vector;

    return-object v0
.end method

.method public final q(J)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/uh;->cK:J

    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    iput p1, p0, Lnbisdk/uh;->cC:I

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/uh;->ci:Ljava/lang/String;

    return-void
.end method
