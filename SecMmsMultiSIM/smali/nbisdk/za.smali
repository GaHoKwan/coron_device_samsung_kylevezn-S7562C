.class public final Lnbisdk/za;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/navbuilder/nb/a;


# static fields
.field private static EQ:Lnbisdk/za;


# instance fields
.field private ER:Lnbisdk/qk;

.field private ES:Lnbisdk/qk;

.field private ET:Lnbisdk/qk;

.field private EU:Lnbisdk/qk;

.field private EV:Lnbisdk/qk;

.field private EW:Lnbisdk/ir;

.field private hR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnbisdk/za;

    invoke-direct {v0}, Lnbisdk/za;-><init>()V

    sput-object v0, Lnbisdk/za;->EQ:Lnbisdk/za;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    sget-object v1, Lnbisdk/za;->EQ:Lnbisdk/za;

    invoke-virtual {v0, v1}, Lnbisdk/tt;->a(Lcom/navbuilder/nb/a;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/za;->hR:Ljava/lang/String;

    const-wide/16 v0, 0x100

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-direct {p0}, Lnbisdk/za;->gn()V

    return-void
.end method

.method private A(Ljava/io/DataInputStream;)Lnbisdk/qk;
    .locals 14

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lnbisdk/qk;

    invoke-direct/range {v0 .. v12}, Lnbisdk/qk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    const-string v2, "IOException when parsing map source information from store"

    invoke-virtual {v1, v2}, Lnbisdk/ir;->severe(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->e(Ljava/lang/Throwable;)V

    const-string v0, "map-info"

    invoke-static {v0}, Lnbisdk/jf;->au(Ljava/lang/String;)V

    move-object v0, v13

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lnbisdk/qk;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnbisdk/qk;->me()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnbisdk/qk;->gp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnbisdk/qk;->md()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p2}, Lnbisdk/qk;->lZ()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lnbisdk/qk;->getMaxZoom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lnbisdk/qk;->ma()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lnbisdk/qk;->mc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnbisdk/qk;->mb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnbisdk/qk;->cE()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lnbisdk/qk;->mf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v3, v1}, Lnbisdk/ir;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private gn()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "map-info"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnbisdk/jf;->b(Ljava/lang/String;Z)Lnbisdk/jf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lnbisdk/jf;->b(Lnbisdk/fz;)Lnbisdk/ch;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lnbisdk/ch;->cK()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Lnbisdk/ch;->cJ()I

    move-result v0

    invoke-virtual {v1, v0}, Lnbisdk/jf;->aA(I)[B

    move-result-object v0

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnbisdk/lw; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v4, "at"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/za;->hR:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lnbisdk/lw; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v3, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v3, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lnbisdk/lw; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_5
    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    const-string v2, "Exception thrown when parsing map-info store"

    invoke-virtual {v1, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Lnbisdk/jf;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_7
    const-string v4, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lnbisdk/za;->A(Ljava/io/DataInputStream;)Lnbisdk/qk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/za;->ES:Lnbisdk/qk;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_8
    iget-object v4, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v4, v0}, Lnbisdk/ir;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lnbisdk/lw; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_a
    iget-object v3, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v3, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lnbisdk/lw; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_b
    invoke-virtual {v1}, Lnbisdk/jf;->a()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_3
    :goto_5
    throw v0

    :cond_4
    :try_start_c
    const-string v4, "ss"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lnbisdk/za;->A(Ljava/io/DataInputStream;)Lnbisdk/qk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/za;->ET:Lnbisdk/qk;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lnbisdk/lw; {:try_start_d .. :try_end_d} :catch_1

    :goto_6
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lnbisdk/lw; {:try_start_e .. :try_end_e} :catch_1

    :cond_5
    :try_start_f
    const-string v4, "hs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lnbisdk/za;->A(Ljava/io/DataInputStream;)Lnbisdk/qk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/za;->EU:Lnbisdk/qk;

    goto :goto_1

    :cond_6
    const-string v4, "ts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Lnbisdk/za;->A(Ljava/io/DataInputStream;)Lnbisdk/qk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/za;->EV:Lnbisdk/qk;

    goto :goto_1

    :cond_7
    const-string v4, "rs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lnbisdk/za;->A(Ljava/io/DataInputStream;)Lnbisdk/qk;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/za;->ER:Lnbisdk/qk;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    :catch_4
    move-exception v2

    :try_start_10
    iget-object v3, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v3, v2}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lnbisdk/lw; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_1

    :try_start_11
    invoke-virtual {v1}, Lnbisdk/jf;->a()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception v0

    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_7
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_8
    move-exception v1

    goto/16 :goto_2
.end method

.method public static pg()Lnbisdk/za;
    .locals 1

    sget-object v0, Lnbisdk/za;->EQ:Lnbisdk/za;

    return-object v0
.end method

.method private ph()[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "at"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, p0, Lnbisdk/za;->hR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v3, v1}, Lnbisdk/ir;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final R()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "map-info"

    invoke-static {v3}, Lnbisdk/jf;->au(Ljava/lang/String;)V

    iget-object v3, p0, Lnbisdk/za;->ES:Lnbisdk/qk;

    if-nez v3, :cond_1

    iget-object v3, p0, Lnbisdk/za;->ET:Lnbisdk/qk;

    if-nez v3, :cond_1

    iget-object v3, p0, Lnbisdk/za;->EU:Lnbisdk/qk;

    if-nez v3, :cond_1

    iget-object v3, p0, Lnbisdk/za;->ER:Lnbisdk/qk;

    if-nez v3, :cond_1

    iget-object v3, p0, Lnbisdk/za;->EV:Lnbisdk/qk;

    if-nez v3, :cond_1

    iget-object v3, p0, Lnbisdk/za;->hR:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_0
    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const-string v1, "map-info"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnbisdk/jf;->b(Ljava/lang/String;Z)Lnbisdk/jf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-direct {p0}, Lnbisdk/za;->ph()[B

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/jf;->c([BII)I

    :cond_3
    const-string v1, "ms"

    iget-object v2, p0, Lnbisdk/za;->ES:Lnbisdk/qk;

    invoke-direct {p0, v1, v2}, Lnbisdk/za;->b(Ljava/lang/String;Lnbisdk/qk;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/jf;->c([BII)I

    :cond_4
    const-string v1, "ss"

    iget-object v2, p0, Lnbisdk/za;->ET:Lnbisdk/qk;

    invoke-direct {p0, v1, v2}, Lnbisdk/za;->b(Ljava/lang/String;Lnbisdk/qk;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/jf;->c([BII)I

    :cond_5
    const-string v1, "hs"

    iget-object v2, p0, Lnbisdk/za;->EU:Lnbisdk/qk;

    invoke-direct {p0, v1, v2}, Lnbisdk/za;->b(Ljava/lang/String;Lnbisdk/qk;)[B

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/jf;->c([BII)I

    :cond_6
    iget-object v1, p0, Lnbisdk/za;->EV:Lnbisdk/qk;

    if-eqz v1, :cond_7

    const-string v1, "ts"

    iget-object v2, p0, Lnbisdk/za;->EV:Lnbisdk/qk;

    invoke-direct {p0, v1, v2}, Lnbisdk/za;->b(Ljava/lang/String;Lnbisdk/qk;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/jf;->c([BII)I

    :cond_7
    iget-object v1, p0, Lnbisdk/za;->ER:Lnbisdk/qk;

    if-eqz v1, :cond_8

    const-string v1, "rs"

    iget-object v2, p0, Lnbisdk/za;->ER:Lnbisdk/qk;

    invoke-direct {p0, v1, v2}, Lnbisdk/za;->b(Ljava/lang/String;Lnbisdk/qk;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/jf;->c([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lnbisdk/lw; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lnbisdk/jf;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    const-string v2, "Exception thrown when saving map-info store"

    invoke-virtual {v1, v2}, Lnbisdk/ir;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lnbisdk/jf;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_9

    :try_start_5
    invoke-virtual {v1}, Lnbisdk/jf;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->d(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method public final a(S)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lnbisdk/za;->ES:Lnbisdk/qk;

    iput-object v1, p0, Lnbisdk/za;->ET:Lnbisdk/qk;

    iput-object v1, p0, Lnbisdk/za;->EU:Lnbisdk/qk;

    iput-object v1, p0, Lnbisdk/za;->ER:Lnbisdk/qk;

    iput-object v1, p0, Lnbisdk/za;->EV:Lnbisdk/qk;

    iput-object v1, p0, Lnbisdk/za;->hR:Ljava/lang/String;

    :try_start_0
    const-string v0, "map-info"

    invoke-static {v0}, Lnbisdk/jf;->au(Ljava/lang/String;)V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    const-string v1, "Exception when deleting map information store"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/za;->R()V

    goto :goto_0
.end method

.method public final au(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update map token: old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/za;->hR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    iput-object p1, p0, Lnbisdk/za;->hR:Ljava/lang/String;

    return-void
.end method

.method public final bS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/za;->hR:Ljava/lang/String;

    return-object v0
.end method

.method public final by(Ljava/lang/String;)Lnbisdk/qk;
    .locals 3

    const-string v0, "base_map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/za;->ES:Lnbisdk/qk;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "satellite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/za;->ET:Lnbisdk/qk;

    goto :goto_0

    :cond_1
    const-string v0, "hybrid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/za;->EU:Lnbisdk/qk;

    goto :goto_0

    :cond_2
    const-string v0, "traffic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/za;->EV:Lnbisdk/qk;

    goto :goto_0

    :cond_3
    const-string v0, "route"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/za;->ER:Lnbisdk/qk;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown map tile source type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->aq(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Lnbisdk/qk;)V
    .locals 3

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base_map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnbisdk/za;->ES:Lnbisdk/qk;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "satellite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lnbisdk/za;->ET:Lnbisdk/qk;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hybrid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lnbisdk/za;->EU:Lnbisdk/qk;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "traffic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lnbisdk/za;->EV:Lnbisdk/qk;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lnbisdk/za;->ER:Lnbisdk/qk;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnbisdk/za;->EW:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown map tile source type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->aq(Ljava/lang/String;)V

    goto :goto_0
.end method
