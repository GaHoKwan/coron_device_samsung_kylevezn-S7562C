.class public final Lnbisdk/wg;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/navbuilder/nb/a;


# static fields
.field private static yU:[B


# instance fields
.field private Bs:Lnbisdk/eu;

.field private Bt:Lnbisdk/xp;

.field private volatile aG:J

.field private volatile eJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lnbisdk/wg;->yU:[B

    return-void
.end method

.method public constructor <init>(Lnbisdk/xp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/wg;->eJ:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnbisdk/wg;->aG:J

    iput-object p1, p0, Lnbisdk/wg;->Bt:Lnbisdk/xp;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/tt;->a(Lcom/navbuilder/nb/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lnbisdk/kz;->k([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic a(Lnbisdk/wg;Lnbisdk/eu;)Ljava/lang/String;
    .locals 8

    const-string v1, ""

    const/4 v0, 0x0

    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "base_map"

    if-ne v2, v3, :cond_1

    invoke-static {}, Lnbisdk/tm;->mI()Lnbisdk/qk;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const-string v2, "$q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    const-string v2, "$q"

    invoke-virtual {p1}, Lnbisdk/eu;->fz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/wg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "$sz"

    invoke-virtual {p1}, Lnbisdk/eu;->getSize()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lnbisdk/wg;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$sz"

    invoke-virtual {p1}, Lnbisdk/eu;->getSize()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lnbisdk/wg;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$fmt"

    invoke-virtual {p1}, Lnbisdk/eu;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/wg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$res"

    invoke-virtual {p1}, Lnbisdk/eu;->fm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/wg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$loc"

    invoke-virtual {p1}, Lnbisdk/eu;->aS()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/wg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$v"

    invoke-virtual {p1}, Lnbisdk/eu;->fp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lnbisdk/qk;->me()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v3, v1}, Lnbisdk/wg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$user"

    invoke-virtual {p1}, Lnbisdk/eu;->fs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/wg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x100

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-interface {v2, v3}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/ju;->aD(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lnbisdk/qk;->md()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "traffic"

    if-ne v2, v3, :cond_2

    invoke-static {}, Lnbisdk/tm;->mM()Lnbisdk/qk;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "route"

    if-ne v2, v3, :cond_3

    invoke-static {}, Lnbisdk/tm;->mL()Lnbisdk/qk;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/eu;->fn()[B

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/eu;->fq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnbisdk/eu;->fv()[B

    move-result-object v4

    invoke-virtual {p1}, Lnbisdk/eu;->fw()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rid1"

    const-string v7, "rc1"

    invoke-static {v1, v2, v3, v6, v7}, Lnbisdk/wg;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rid2"

    const-string v3, "rc2"

    invoke-static {v1, v4, v5, v2, v3}, Lnbisdk/wg;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "satellite"

    if-ne v2, v3, :cond_5

    invoke-static {}, Lnbisdk/tm;->mJ()Lnbisdk/qk;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lnbisdk/tm;->mI()Lnbisdk/qk;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hybrid"

    if-ne v2, v3, :cond_7

    invoke-static {}, Lnbisdk/tm;->mK()Lnbisdk/qk;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lnbisdk/tm;->mI()Lnbisdk/qk;

    move-result-object v0

    :cond_6
    invoke-virtual {v0}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom_base_map"

    if-eq v2, v3, :cond_8

    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom_overlay_map"

    if-eq v2, v3, :cond_8

    invoke-virtual {p1}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto_pin"

    if-ne v2, v3, :cond_0

    :cond_8
    invoke-virtual {p1}, Lnbisdk/eu;->dI()Lnbisdk/qk;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const-string v2, "$x"

    invoke-virtual {p1}, Lnbisdk/eu;->getX()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lnbisdk/wg;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$y"

    invoke-virtual {p1}, Lnbisdk/eu;->getY()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lnbisdk/wg;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$z"

    invoke-virtual {p1}, Lnbisdk/eu;->fk()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lnbisdk/wg;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lnbisdk/eu;->fp()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    move-object v0, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lnbisdk/wg;)Lnbisdk/eu;
    .locals 1

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lnbisdk/wg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static s([B)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x89

    if-eq v2, v3, :cond_2

    aget-byte v2, p0, v1

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-eq v2, v3, :cond_2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x47

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/wg;->eJ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/wg;->eJ:Z

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(S)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lnbisdk/wg;->eJ:Z

    iget-object v0, p0, Lnbisdk/wg;->Bt:Lnbisdk/xp;

    invoke-virtual {v0}, Lnbisdk/xp;->b()V

    :cond_0
    return-void
.end method

.method final bd()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/wg;->aG:J

    return-wide v0
.end method

.method final os()Lnbisdk/eu;
    .locals 1

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    return-object v0
.end method

.method public final run()V
    .locals 11

    const-wide/16 v9, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lnbisdk/wg;->Bt:Lnbisdk/xp;

    invoke-virtual {v0}, Lnbisdk/xp;->gn()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnbisdk/wg;->eJ:Z

    if-nez v0, :cond_2

    iput-wide v9, p0, Lnbisdk/wg;->aG:J

    iget-object v0, p0, Lnbisdk/wg;->Bt:Lnbisdk/xp;

    invoke-virtual {v0}, Lnbisdk/xp;->oL()Lnbisdk/eu;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    iget-boolean v0, p0, Lnbisdk/wg;->eJ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-virtual {v0}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/wg;->aG:J

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-virtual {v0}, Lnbisdk/eu;->fr()Lnbisdk/cr;

    move-result-object v0

    check-cast v0, Lnbisdk/tj;

    :try_start_0
    invoke-virtual {v0}, Lnbisdk/tj;->mG()Lnbisdk/kd;

    move-result-object v1

    new-instance v2, Lnbisdk/tx;

    invoke-direct {v2, p0}, Lnbisdk/tx;-><init>(Lnbisdk/wg;)V

    invoke-virtual {v1, v2}, Lnbisdk/kd;->c(Lnbisdk/zo;)Lnbisdk/fu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnbisdk/np; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :try_start_1
    iget-boolean v1, p0, Lnbisdk/wg;->eJ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lnbisdk/np; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v1, :cond_3

    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Lnbisdk/fu;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    iput-object v3, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    :cond_2
    :goto_2
    iget-object v0, p0, Lnbisdk/wg;->Bt:Lnbisdk/xp;

    invoke-virtual {v0}, Lnbisdk/xp;->M()V

    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lnbisdk/wg;->aG:J

    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v2}, Lnbisdk/fu;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lnbisdk/np; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lnbisdk/wg;->aG:J

    const-string v1, "content-length"

    invoke-interface {v2, v1}, Lnbisdk/fu;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v4, v1}, Ljava/io/DataInputStream;->readFully([B)V

    :goto_3
    iget-boolean v5, p0, Lnbisdk/wg;->eJ:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lnbisdk/np; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11

    if-eqz v5, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v2}, Lnbisdk/fu;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_5
    iput-object v3, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    goto :goto_2

    :cond_5
    :try_start_7
    sget-object v1, Lnbisdk/wg;->yU:[B

    goto :goto_3

    :cond_6
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lnbisdk/wg;->aG:J

    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-virtual {v5}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "custom_base_map"

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-virtual {v5}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "custom_overlay_map"

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-virtual {v5}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "auto_pin"

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-virtual {v5}, Lnbisdk/eu;->getFormat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v1}, Lnbisdk/wg;->s([B)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v1, Lnbisdk/wg;->yU:[B

    :cond_7
    :goto_6
    new-instance v5, Lnbisdk/iy;

    iget-object v6, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-direct {v5, v6, v1}, Lnbisdk/iy;-><init>(Lnbisdk/eu;[B)V

    invoke-interface {v0, v5}, Lnbisdk/zh;->c(Lnbisdk/iy;)V

    sget-boolean v5, Lnbisdk/me;->sE:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    array-length v1, v1

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lnbisdk/ck;->a(Lnbisdk/eu;IB)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lnbisdk/np; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    :cond_8
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_7
    if-eqz v2, :cond_9

    :try_start_9
    invoke-interface {v2}, Lnbisdk/fu;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_9
    :goto_8
    iput-object v3, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    goto/16 :goto_0

    :cond_a
    :try_start_a
    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-virtual {v5}, Lnbisdk/eu;->getFormat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1}, Lnbisdk/wg;->s([B)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v1, Lnbisdk/wg;->yU:[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Lnbisdk/np; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11

    goto :goto_6

    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_9
    :try_start_b
    iget-boolean v5, p0, Lnbisdk/wg;->eJ:Z

    if-nez v5, :cond_c

    new-instance v5, Lcom/navbuilder/nb/NBException;

    invoke-virtual {v1}, Lnbisdk/np;->kW()I

    move-result v6

    invoke-static {v6}, Lcom/navbuilder/nb/NBException;->translateHttpStatusErrorCode(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-direct {v5, v6, v7, v8}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-interface {v0, v6, v5}, Lnbisdk/zh;->a(Lnbisdk/eu;Ljava/lang/Exception;)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lnbisdk/ck;->a(Lnbisdk/eu;IB)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_c
    if-eqz v4, :cond_d

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_d
    :goto_a
    if-eqz v2, :cond_e

    :try_start_d
    invoke-interface {v2}, Lnbisdk/fu;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_e
    :goto_b
    iput-object v3, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_c
    :try_start_e
    iget-boolean v5, p0, Lnbisdk/wg;->eJ:Z

    if-nez v5, :cond_10

    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-interface {v0, v5, v1}, Lnbisdk/zh;->a(Lnbisdk/eu;Ljava/lang/Exception;)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lnbisdk/ck;->a(Lnbisdk/eu;IB)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_10
    if-eqz v4, :cond_11

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_11
    :goto_d
    if-eqz v2, :cond_12

    :try_start_10
    invoke-interface {v2}, Lnbisdk/fu;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_12
    :goto_e
    iput-object v3, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_f
    :try_start_11
    iget-boolean v5, p0, Lnbisdk/wg;->eJ:Z

    if-nez v5, :cond_14

    iget-object v5, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    invoke-interface {v0, v5, v1}, Lnbisdk/zh;->a(Lnbisdk/eu;Ljava/lang/Exception;)V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lnbisdk/ck;->a(Lnbisdk/eu;IB)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_14
    if-eqz v4, :cond_15

    :try_start_12
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    :cond_15
    :goto_10
    if-eqz v2, :cond_16

    :try_start_13
    invoke-interface {v2}, Lnbisdk/fu;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    :cond_16
    :goto_11
    iput-object v3, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_12
    if-eqz v4, :cond_17

    :try_start_14
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    :cond_17
    :goto_13
    if-eqz v2, :cond_18

    :try_start_15
    invoke-interface {v2}, Lnbisdk/fu;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    :cond_18
    :goto_14
    iput-object v3, p0, Lnbisdk/wg;->Bs:Lnbisdk/eu;

    throw v0

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_7

    :catch_7
    move-exception v0

    goto/16 :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_a

    :catch_9
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_d
    move-exception v0

    goto :goto_11

    :catch_e
    move-exception v1

    goto :goto_13

    :catch_f
    move-exception v1

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_12

    :catchall_2
    move-exception v0

    goto :goto_12

    :catch_10
    move-exception v1

    move-object v4, v3

    goto :goto_f

    :catch_11
    move-exception v1

    goto :goto_f

    :catch_12
    move-exception v1

    move-object v4, v3

    goto/16 :goto_c

    :catch_13
    move-exception v1

    goto/16 :goto_c

    :catch_14
    move-exception v1

    move-object v4, v3

    goto/16 :goto_9

    :catch_15
    move-exception v1

    goto/16 :goto_9
.end method
