.class public final Lnbisdk/hh;
.super Lnbisdk/wa;


# instance fields
.field private mg:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/wa;-><init>()V

    iput-object p1, p0, Lnbisdk/hh;->mg:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lnbisdk/hh;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected final a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnbisdk/hh;->mg:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lnbisdk/bz;

    invoke-direct {v0}, Lnbisdk/bz;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lnbisdk/mg;

    invoke-direct {v1, v0}, Lnbisdk/mg;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    return v0
.end method

.method public final close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnbisdk/hh;->mg:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/hh;->mg:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hh;->mg:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
