.class abstract Lnbisdk/wo;
.super Ljava/lang/Object;


# instance fields
.field protected BH:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lnbisdk/wo;->BH:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected P()V
    .locals 0

    return-void
.end method

.method public final S()I
    .locals 1

    invoke-virtual {p0}, Lnbisdk/wo;->P()V

    iget-object v0, p0, Lnbisdk/wo;->BH:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnbisdk/wo;->BH:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final b(J)V
    .locals 4

    invoke-static {p1, p2}, Lnbisdk/jd;->h(J)[B

    move-result-object v0

    iget-object v1, p0, Lnbisdk/wo;->BH:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public final ot()Ljava/io/ByteArrayOutputStream;
    .locals 1

    invoke-virtual {p0}, Lnbisdk/wo;->P()V

    iget-object v0, p0, Lnbisdk/wo;->BH:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
