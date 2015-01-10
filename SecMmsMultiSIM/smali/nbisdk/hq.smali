.class public final Lnbisdk/hq;
.super Lnbisdk/ke;


# direct methods
.method public constructor <init>(Lnbisdk/zo;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnbisdk/ke;-><init>(Lnbisdk/zo;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(Lnbisdk/zo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Ljava/net/Socket;

    invoke-interface {p1}, Lnbisdk/zo;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnbisdk/zo;->J()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lnbisdk/ke;->uY:Ljava/net/Socket;

    const-string v0, "idle_timeout"

    invoke-interface {p1, v0}, Lnbisdk/zo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lnbisdk/ke;->uY:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lnbisdk/ke;->uY:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic c()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lnbisdk/ke;->c()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lnbisdk/ke;->close()V

    return-void
.end method

.method public final bridge synthetic d()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lnbisdk/ke;->d()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
