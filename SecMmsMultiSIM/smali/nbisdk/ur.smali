.class public final Lnbisdk/ur;
.super Ljava/lang/Object;


# static fields
.field private static jc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lnbisdk/ur;->jc:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lnbisdk/ql;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-void
.end method

.method public static j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mY()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnbisdk/ur;->a(Lnbisdk/ql;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnbisdk/ro; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Lnbisdk/ql;Ljava/lang/String;)[B
    .locals 2

    sget-object v0, Lnbisdk/ur;->jc:[B

    :try_start_0
    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B
    :try_end_0
    .catch Lnbisdk/ro; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
