.class public final Lnbisdk/fq;
.super Lnbisdk/og;


# instance fields
.field private N:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/og;-><init>()V

    return-void
.end method


# virtual methods
.method public final ac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/fq;->N:Ljava/lang/String;

    return-void
.end method

.method public final ai(I)V
    .locals 0

    iput p1, p0, Lnbisdk/og;->uv:I

    return-void
.end method

.method public final gd()I
    .locals 1

    iget v0, p0, Lnbisdk/og;->uv:I

    return v0
.end method

.method public final getData()[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lnbisdk/fq;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v2, p0, Lnbisdk/og;->jn:D

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v2, p0, Lnbisdk/og;->jo:D

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget v2, p0, Lnbisdk/og;->uv:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/fq;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/og;->jn:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/og;->jo:D

    return-wide v0
.end method

.method public final getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/fq;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final setData([B)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fq;->N:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lnbisdk/og;->jn:D

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lnbisdk/og;->jo:D

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lnbisdk/og;->uv:I

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/og;->jn:D

    return-void
.end method

.method public final setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/og;->jo:D

    return-void
.end method
