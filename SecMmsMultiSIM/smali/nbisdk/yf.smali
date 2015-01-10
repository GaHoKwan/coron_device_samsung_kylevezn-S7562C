.class public final Lnbisdk/yf;
.super Ljava/lang/Object;


# instance fields
.field private N:Ljava/lang/String;

.field private aR:Ljava/util/Vector;


# direct methods
.method public constructor <init>(II[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/yf;->aR:Ljava/util/Vector;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/yf;->N:Ljava/lang/String;

    invoke-direct {p0, p3}, Lnbisdk/yf;->u([B)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/yf;->aR:Ljava/util/Vector;

    return-void
.end method

.method private u([B)Ljava/util/Vector;
    .locals 24

    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v14

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v15

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v16

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v17

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {v13}, Ljava/io/FilterInputStream;->reset()V

    add-int/lit8 v2, v2, 0xb

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v15, :cond_3

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez v14, :cond_0

    new-instance v10, Lnbisdk/nh;

    invoke-direct {v10}, Lnbisdk/nh;-><init>()V

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v11, v9

    move v9, v7

    move v7, v5

    move v5, v2

    move/from16 v23, v3

    move-object v3, v10

    move v10, v8

    move v8, v6

    move/from16 v6, v23

    :goto_1
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readDouble()D

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readDouble()D

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v18

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v20

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v22

    if-nez v14, :cond_1

    move-object v0, v3

    check-cast v0, Lnbisdk/nh;

    move-object v2, v0

    invoke-virtual {v2, v9}, Lnbisdk/nh;->aS(I)V

    move-object v0, v3

    check-cast v0, Lnbisdk/nh;

    move-object v2, v0

    invoke-virtual {v2, v8}, Lnbisdk/nh;->aT(I)V

    move-object v0, v3

    check-cast v0, Lnbisdk/nh;

    move-object v2, v0

    invoke-virtual {v2, v11}, Lnbisdk/nh;->aU(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/yf;->N:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lnbisdk/og;->aW(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lnbisdk/og;->ai(I)V

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lnbisdk/og;->setLatitude(D)V

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lnbisdk/og;->setLongitude(D)V

    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    new-instance v10, Lnbisdk/co;

    invoke-direct {v10}, Lnbisdk/co;-><init>()V

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    move v11, v9

    move v9, v7

    move v7, v5

    move v5, v2

    move/from16 v23, v3

    move-object v3, v10

    move v10, v8

    move v8, v6

    move/from16 v6, v23

    goto :goto_1

    :cond_1
    move-object v0, v3

    check-cast v0, Lnbisdk/co;

    move-object v2, v0

    invoke-virtual {v2, v10}, Lnbisdk/co;->t(I)V

    move-object v0, v3

    check-cast v0, Lnbisdk/co;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lnbisdk/co;->u(I)V

    move-object v0, v3

    check-cast v0, Lnbisdk/co;

    move-object v2, v0

    invoke-virtual {v2, v6}, Lnbisdk/co;->v(I)V

    move-object v0, v3

    check-cast v0, Lnbisdk/co;

    move-object v2, v0

    invoke-virtual {v2, v5}, Lnbisdk/co;->s(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    sget-boolean v3, Lnbisdk/me;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v12

    :cond_3
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FilterInputStream;->reset()V

    add-int/lit8 v2, v16, 0xb

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    const/4 v2, 0x6

    new-array v5, v2, [B

    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v8

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v10

    new-instance v3, Lnbisdk/fq;

    invoke-direct {v3}, Lnbisdk/fq;-><init>()V

    move-object v0, v3

    check-cast v0, Lnbisdk/fq;

    move-object v2, v0

    new-instance v11, Ljava/lang/String;

    invoke-static {v5}, Lnbisdk/kz;->j([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lnbisdk/fq;->ac(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Lnbisdk/fq;->setLatitude(D)V

    invoke-virtual {v3, v8, v9}, Lnbisdk/fq;->setLongitude(D)V

    invoke-virtual {v3, v10}, Lnbisdk/fq;->ai(I)V

    invoke-virtual {v12, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3
.end method


# virtual methods
.method public final oS()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/yf;->aR:Ljava/util/Vector;

    return-object v0
.end method
