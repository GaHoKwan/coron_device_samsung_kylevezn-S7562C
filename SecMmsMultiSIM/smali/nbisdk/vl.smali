.class public final Lnbisdk/vl;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private eM:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "T"

    iput-object v0, p0, Lnbisdk/vl;->M:Ljava/lang/String;

    iput-object p1, p0, Lnbisdk/vl;->N:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/vl;->ax:Ljava/lang/String;

    return-void
.end method

.method public static x(Ljava/io/DataInputStream;)Lnbisdk/vl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  Pair only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/vl;

    invoke-direct {v0, v2, v2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vl;->N:Ljava/lang/String;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vl;->ax:Ljava/lang/String;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vl;->L:Ljava/lang/String;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/vl;->M:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lnbisdk/vl;->eM:Z

    return-object v0
.end method


# virtual methods
.method public final X(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/vl;->eM:Z

    return-void
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/vl;->N:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/vl;->ax:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/vl;->L:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/vl;->M:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnbisdk/vl;->eM:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public final bs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/vl;->L:Ljava/lang/String;

    return-void
.end method

.method public final bt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/vl;->M:Ljava/lang/String;

    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vl;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vl;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vl;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final nV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vl;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final nW()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/vl;->eM:Z

    return v0
.end method
