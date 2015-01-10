.class abstract Lnbisdk/ke;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/gh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/ke$a;,
        Lnbisdk/ke$b;
    }
.end annotation


# instance fields
.field protected uY:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lnbisdk/zo;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnbisdk/ke;->a(Lnbisdk/zo;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lnbisdk/zo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public c()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/ke$b;

    iget-object v1, p0, Lnbisdk/ke;->uY:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/ke$b;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnbisdk/ke;->uY:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public d()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/ke$a;

    iget-object v1, p0, Lnbisdk/ke;->uY:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/ke$a;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
