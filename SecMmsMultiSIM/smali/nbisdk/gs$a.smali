.class public Lnbisdk/gs$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "speed-zone-type"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ez"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_0
    const-string v0, "warn-ahead"

    invoke-static {p1, v0}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    return-void
.end method

.method private static a(Lnbisdk/wa;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v3}, Lnbisdk/wa;->bU(I)J

    move-result-wide v3

    invoke-static {v0, v1, p0, v3, v4}, Lnbisdk/gs$a;->a(JLnbisdk/wa;J)Lnbisdk/yv;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnbisdk/bz; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/Vector;->trimToSize()V

    return-object v2
.end method

.method private static a(JLnbisdk/wa;J)Lnbisdk/yv;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;
        }
    .end annotation

    new-instance v0, Lnbisdk/dp;

    long-to-int v1, p3

    invoke-direct {v0, p2, v1}, Lnbisdk/dp;-><init>(Lnbisdk/wa;I)V

    invoke-virtual {v0}, Lnbisdk/wa;->or()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lnbisdk/wa;->or()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnbisdk/bz; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/Vector;->trimToSize()V

    new-instance v0, Lnbisdk/yv;

    invoke-direct {v0, p0, p1, v1, v2}, Lnbisdk/yv;-><init>(JLjava/lang/String;Ljava/util/Vector;)V

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)Lnbisdk/yn;
    .locals 9

    new-instance v0, Lnbisdk/hh;

    invoke-direct {v0, p0}, Lnbisdk/hh;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lnbisdk/bp;

    invoke-direct {v2, v0}, Lnbisdk/bp;-><init>(Lnbisdk/wa;)V

    const/16 v0, 0x14

    :try_start_0
    invoke-virtual {v2, v0}, Lnbisdk/wa;->bT(I)[B

    move-result-object v3

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lnbisdk/wa;->bU(I)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v7, v0, v5

    if-gez v7, :cond_0

    invoke-virtual {v2}, Lnbisdk/wa;->or()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lnbisdk/wa;->or()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lnbisdk/gs$a;->a(Lnbisdk/wa;)Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Lnbisdk/ns;->close()V
    :try_end_1
    .catch Lnbisdk/kt; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Lnbisdk/yn;

    invoke-direct {v1, v3, v4, v0}, Lnbisdk/yn;-><init>([BLjava/util/Hashtable;Ljava/util/Vector;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Lnbisdk/ns;->close()V

    throw v0
    :try_end_2
    .catch Lnbisdk/kt; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed template library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
