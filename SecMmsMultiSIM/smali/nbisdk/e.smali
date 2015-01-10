.class public final Lnbisdk/e;
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    const-string v0, "INSECURE"

    const-string v5, "TLSMODE"

    invoke-interface {p1, v5}, Lnbisdk/zo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/navbuilder/pal/android/network/HappyTrustManager;

    invoke-direct {v0}, Lcom/navbuilder/pal/android/network/HappyTrustManager;-><init>()V

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-interface {p1}, Lnbisdk/zo;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnbisdk/zo;->J()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/e;->uY:Ljava/net/Socket;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lnbisdk/hk;

    invoke-direct {v0, p1}, Lnbisdk/hk;-><init>(Lnbisdk/zo;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "TLS not supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
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
