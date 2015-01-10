.class public final Lnbisdk/jv;
.super Ljava/lang/Object;


# instance fields
.field private ax:Ljava/lang/String;

.field private ph:Lnbisdk/qn;

.field private pi:Lnbisdk/ye;

.field private pj:Lnbisdk/wb;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnbisdk/xz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/jv;->ax:Ljava/lang/String;

    const-string v0, "coupon data cannot be null"

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lnbisdk/qn;

    invoke-direct {v0, p2}, Lnbisdk/qn;-><init>(Lnbisdk/xz;)V

    iput-object v0, p0, Lnbisdk/jv;->ph:Lnbisdk/qn;

    return-void
.end method

.method static a(Ljava/io/DataOutputStream;Lnbisdk/jv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p1, Lnbisdk/jv;->ax:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p1, Lnbisdk/jv;->ph:Lnbisdk/qn;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p1, Lnbisdk/jv;->ph:Lnbisdk/qn;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnbisdk/jv;->ph:Lnbisdk/qn;

    invoke-virtual {v0, p0}, Lnbisdk/qn;->b(Ljava/io/DataOutputStream;)V

    :cond_0
    iget-object v0, p1, Lnbisdk/jv;->pi:Lnbisdk/ye;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p1, Lnbisdk/jv;->pi:Lnbisdk/ye;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lnbisdk/jv;->pi:Lnbisdk/ye;

    invoke-virtual {v0, p0}, Lnbisdk/ye;->b(Ljava/io/DataOutputStream;)V

    :cond_1
    iget-object v0, p1, Lnbisdk/jv;->pj:Lnbisdk/wb;

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p1, Lnbisdk/jv;->pj:Lnbisdk/wb;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lnbisdk/jv;->pj:Lnbisdk/wb;

    invoke-virtual {v0, p0}, Lnbisdk/wb;->b(Ljava/io/DataOutputStream;)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method static p(Ljava/io/DataInputStream;)Lnbisdk/jv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/jv;

    invoke-direct {v0}, Lnbisdk/jv;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  CouponActionEvent only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/jv;->ax:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lnbisdk/qn;->s(Ljava/io/DataInputStream;)Lnbisdk/qn;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/jv;->ph:Lnbisdk/qn;

    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lnbisdk/ye;->z(Ljava/io/DataInputStream;)Lnbisdk/ye;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/jv;->pi:Lnbisdk/ye;

    :cond_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lnbisdk/wb;->y(Ljava/io/DataInputStream;)Lnbisdk/wb;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/jv;->pj:Lnbisdk/wb;

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final b(Lnbisdk/jb;)V
    .locals 1

    invoke-static {p1}, Lnbisdk/ye;->c(Lnbisdk/jb;)Lnbisdk/ye;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/jv;->pi:Lnbisdk/ye;

    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/jv;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final iM()Lnbisdk/qn;
    .locals 1

    iget-object v0, p0, Lnbisdk/jv;->ph:Lnbisdk/qn;

    return-object v0
.end method

.method public final iN()Lnbisdk/ye;
    .locals 1

    iget-object v0, p0, Lnbisdk/jv;->pi:Lnbisdk/ye;

    return-object v0
.end method

.method public final iO()Lnbisdk/wb;
    .locals 1

    iget-object v0, p0, Lnbisdk/jv;->pj:Lnbisdk/wb;

    return-object v0
.end method
