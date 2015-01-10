.class final Lnbisdk/tr$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field O:Z

.field aB:Ljava/util/Vector;

.field private aG:J

.field aH:Z

.field private cK:J

.field private synthetic yB:Lnbisdk/tr;


# direct methods
.method constructor <init>(Lnbisdk/tr;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lnbisdk/tr$a;->b()V

    :try_start_0
    iget-object v2, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v2}, Lnbisdk/tr;->a(Lnbisdk/tr;)Lnbisdk/jf;
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    iget-object v3, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v3}, Lnbisdk/tr;->b(Lnbisdk/tr;)J

    move-result-wide v3

    iput-wide v3, p0, Lnbisdk/tr$a;->cK:J

    iget-object v3, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnbisdk/tr;->a(Lnbisdk/tr;Z)Z

    invoke-virtual {v2}, Lnbisdk/jf;->am()I

    move-result v3

    if-gez v3, :cond_1

    new-instance v0, Lnbisdk/lw;

    const-string v1, "error while reading record"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Lnbisdk/jf;->a()V

    throw v0
    :try_end_2
    .catch Lnbisdk/lw; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lnbisdk/tr$a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v3, :cond_2

    :try_start_3
    invoke-virtual {v2, v3}, Lnbisdk/jf;->aA(I)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lnbisdk/tr$a;->n([B)V

    :cond_2
    iget-object v4, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v4}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iget-wide v4, p0, Lnbisdk/tr$a;->cK:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_8

    :cond_4
    if-gt v3, v1, :cond_5

    invoke-direct {p0}, Lnbisdk/tr$a;->b()V

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnbisdk/tr$a;->m(ZZ)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->trimToSize()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/tr$a;->O:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Lnbisdk/jf;->a()V

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->c(Lnbisdk/tr;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->d(Lnbisdk/tr;)Lnbisdk/jf;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->d(Lnbisdk/tr;)Lnbisdk/jf;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/jf;->a()V

    :cond_7
    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->e(Lnbisdk/tr;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/jf;->au(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->a(Lnbisdk/tr;)Lnbisdk/jf;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/tr$a;->a(Lnbisdk/jf;)V
    :try_end_4
    .catch Lnbisdk/lw; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lnbisdk/tr$a;->b()V

    goto :goto_0

    :cond_8
    if-nez v3, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_5
    invoke-direct {p0, v0, v1}, Lnbisdk/tr$a;->m(ZZ)V

    goto :goto_1

    :cond_9
    if-ne v3, v1, :cond_b

    iget-wide v0, p0, Lnbisdk/tr$a;->cK:J

    iget-wide v3, p0, Lnbisdk/tr$a;->aG:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnbisdk/tr$a;->m(ZZ)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnbisdk/tr$a;->m(ZZ)V

    goto :goto_1

    :cond_b
    if-le v3, v1, :cond_6

    iget-wide v0, p0, Lnbisdk/tr$a;->cK:J

    iget-wide v3, p0, Lnbisdk/tr$a;->aG:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnbisdk/tr$a;->m(ZZ)V

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnbisdk/tr$a;->m(ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private a(Lnbisdk/jf;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/lw;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v1}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lnbisdk/tr$a;->cK:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    move v1, v0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v0

    iget v0, v0, Lnbisdk/xr;->ay:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v0

    iget-object v0, v0, Lnbisdk/xr;->Dr:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v0

    iget-object v0, v0, Lnbisdk/xr;->Dr:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_2
    iget-object v5, p0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    new-instance v6, Lnbisdk/ub;

    add-int/lit8 v4, v2, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v8}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v8

    iget-object v8, v8, Lnbisdk/xr;->kC:[I

    aget v8, v8, v1

    invoke-direct {v6, v0, v2, v7, v8}, Lnbisdk/ub;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v0

    iget-object v0, v0, Lnbisdk/xr;->Dq:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/tr$a;->aH:Z

    iget-wide v0, p0, Lnbisdk/tr$a;->cK:J

    iput-wide v0, p0, Lnbisdk/tr$a;->aG:J
    :try_end_0
    .catch Lnbisdk/dv; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lnbisdk/tr$a;->mO()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnbisdk/dv; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/4 v1, 0x0

    :try_start_2
    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lnbisdk/jf;->c([BII)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/tr$a;->O:Z
    :try_end_2
    .catch Lnbisdk/dv; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4000

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    :cond_4
    invoke-direct {p0}, Lnbisdk/tr$a;->b()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lnbisdk/dv;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/dv;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lnbisdk/dv; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private b()V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/tr$a;->aH:Z

    iput-wide v1, p0, Lnbisdk/tr$a;->aG:J

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    iput-wide v1, p0, Lnbisdk/tr$a;->cK:J

    return-void
.end method

.method private m(ZZ)V
    .locals 2

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0, p2}, Lnbisdk/tr;->a(Lnbisdk/tr;Z)Z

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tr$a;->yB:Lnbisdk/tr;

    invoke-static {v0}, Lnbisdk/tr;->f(Lnbisdk/tr;)Lnbisdk/xr;

    move-result-object v1

    iget-boolean v0, v1, Lnbisdk/xr;->mJ:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lnbisdk/xr;->jy:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mO()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/tr$a;->aH:Z

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-wide v3, p0, Lnbisdk/tr$a;->aG:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ub;

    iget-object v4, v0, Lnbisdk/ub;->ax:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v4, v0, Lnbisdk/ub;->cJ:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, v0, Lnbisdk/ub;->ay:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, v0, Lnbisdk/ub;->bx:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    throw v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method private n([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lnbisdk/lw;

    const-string v1, "error while reading record"

    invoke-direct {v0, v1}, Lnbisdk/lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-direct {p0, v0}, Lnbisdk/tr$a;->t(Ljava/io/DataInputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    throw v1
.end method

.method private t(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/tr$a;->aH:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/tr$a;->aG:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lnbisdk/tr$a;->aB:Ljava/util/Vector;

    new-instance v3, Lnbisdk/ub;

    invoke-direct {v3, p1}, Lnbisdk/ub;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
