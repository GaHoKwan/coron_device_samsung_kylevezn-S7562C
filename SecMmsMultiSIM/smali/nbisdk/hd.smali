.class public final Lnbisdk/hd;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private bx:I

.field private eM:Z

.field private lR:Lnbisdk/de;

.field private lS:Lnbisdk/br;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/hd;->ax:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/hd;->L:Ljava/lang/String;

    iput-object p3, p0, Lnbisdk/hd;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnbisdk/de;Lnbisdk/br;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lnbisdk/hd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destination cannot be null"

    invoke-static {p4, v0}, Lnbisdk/hd;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeOptions cannot be null"

    invoke-static {p5, v0}, Lnbisdk/hd;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p5, p0, Lnbisdk/hd;->lS:Lnbisdk/br;

    iput-object p4, p0, Lnbisdk/hd;->lR:Lnbisdk/de;

    const/4 v0, 0x2

    iput v0, p0, Lnbisdk/hd;->bx:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lnbisdk/hd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p4, p0, Lnbisdk/hd;->eM:Z

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/hd;->bx:I

    return-void
.end method

.method static a(Ljava/io/DataOutputStream;Lnbisdk/hd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p1, Lnbisdk/hd;->bx:I

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p1, Lnbisdk/hd;->ax:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p1, Lnbisdk/hd;->L:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p1, Lnbisdk/hd;->M:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v1, p1, Lnbisdk/hd;->eM:Z

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p1, Lnbisdk/hd;->lR:Lnbisdk/de;

    invoke-static {p0, v1}, Lnbisdk/gt;->a(Ljava/io/DataOutputStream;Lnbisdk/de;)V

    iget-object v1, p1, Lnbisdk/hd;->lS:Lnbisdk/br;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lnbisdk/br;->a(Ljava/io/DataOutputStream;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static k(Ljava/io/DataInputStream;)Lnbisdk/hd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lnbisdk/hd;

    invoke-direct {v1}, Lnbisdk/hd;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  NavInvocationEvent only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v1, Lnbisdk/hd;->bx:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/hd;->ax:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/hd;->L:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/hd;->M:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, v1, Lnbisdk/hd;->eM:Z

    invoke-static {p0}, Lnbisdk/gt;->h(Ljava/io/DataInputStream;)Lnbisdk/de;

    move-result-object v0

    iput-object v0, v1, Lnbisdk/hd;->lR:Lnbisdk/de;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lnbisdk/br;->c(Ljava/io/DataInputStream;)Lnbisdk/br;

    move-result-object v0

    :cond_1
    iput-object v0, v1, Lnbisdk/hd;->lS:Lnbisdk/br;

    return-object v1
.end method


# virtual methods
.method public final getCarrier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/hd;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lnbisdk/hd;->bx:I

    return v0
.end method

.method public final hf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/hd;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final hg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/hd;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final hh()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/hd;->eM:Z

    return v0
.end method

.method public final j()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/hd;->lR:Lnbisdk/de;

    return-object v0
.end method

.method public final l()Lnbisdk/br;
    .locals 1

    iget-object v0, p0, Lnbisdk/hd;->lS:Lnbisdk/br;

    return-object v0
.end method
