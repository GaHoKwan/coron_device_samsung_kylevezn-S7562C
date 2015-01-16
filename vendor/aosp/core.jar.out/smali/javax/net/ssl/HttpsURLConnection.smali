.class public abstract Ljavax/net/ssl/HttpsURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;
    }
.end annotation


# instance fields
.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 181
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 182
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 183
    return-void
.end method

.method public static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HostnameVerifier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 128
    return-void
.end method

.method public static setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .parameter "sf"

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSLSocketFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 152
    return-void
.end method


# virtual methods
.method public abstract getCipherSuite()Ljava/lang/String;
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public abstract getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 246
    .local v0, certs:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    .line 247
    :cond_0
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, v2

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 230
    .local v0, certs:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    .line 231
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "No server\'s end-entity certificate"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    aget-object v1, v0, v2

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public abstract getServerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HostnameVerifier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 265
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .parameter "sf"

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSLSocketFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 289
    return-void
.end method
