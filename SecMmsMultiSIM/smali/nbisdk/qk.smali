.class public final Lnbisdk/qk;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private V:I

.field private Y:Ljava/lang/String;

.field private bj:I

.field private cB:I

.field private cU:I

.field private ce:Ljava/lang/String;

.field private cj:Ljava/lang/String;

.field private ck:Ljava/lang/String;

.field private jy:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mercator"

    iput-object v0, p0, Lnbisdk/qk;->ce:Ljava/lang/String;

    const/16 v0, 0x100

    iput v0, p0, Lnbisdk/qk;->cU:I

    iput v1, p0, Lnbisdk/qk;->bj:I

    const/16 v0, 0x13

    iput v0, p0, Lnbisdk/qk;->V:I

    iput v1, p0, Lnbisdk/qk;->cB:I

    const-string v0, "160"

    iput-object v0, p0, Lnbisdk/qk;->cj:Ljava/lang/String;

    const-string v0, "en-US"

    iput-object v0, p0, Lnbisdk/qk;->ck:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/qk;->L:Ljava/lang/String;

    iput-object p4, p0, Lnbisdk/qk;->M:Ljava/lang/String;

    iput-object p5, p0, Lnbisdk/qk;->ce:Ljava/lang/String;

    iput-boolean p6, p0, Lnbisdk/qk;->jy:Z

    iput-object p3, p0, Lnbisdk/qk;->Y:Ljava/lang/String;

    const-string v0, "map"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "road"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "base_map"

    iput-object v0, p0, Lnbisdk/qk;->N:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lnbisdk/qk;->N:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lnbisdk/qk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p7, p0, Lnbisdk/qk;->bj:I

    iput p8, p0, Lnbisdk/qk;->V:I

    iput p9, p0, Lnbisdk/qk;->cB:I

    iput-object p10, p0, Lnbisdk/qk;->cj:Ljava/lang/String;

    iput-object p11, p0, Lnbisdk/qk;->ck:Ljava/lang/String;

    iput p12, p0, Lnbisdk/qk;->cU:I

    return-void
.end method


# virtual methods
.method public final cE()I
    .locals 1

    iget v0, p0, Lnbisdk/qk;->cU:I

    return v0
.end method

.method public final getMaxZoom()I
    .locals 1

    iget v0, p0, Lnbisdk/qk;->V:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qk;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qk;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final gp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qk;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final lZ()I
    .locals 1

    iget v0, p0, Lnbisdk/qk;->bj:I

    return v0
.end method

.method public final ma()I
    .locals 1

    iget v0, p0, Lnbisdk/qk;->cB:I

    return v0
.end method

.method public final mb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qk;->cj:Ljava/lang/String;

    return-object v0
.end method

.method public final mc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qk;->ck:Ljava/lang/String;

    return-object v0
.end method

.method public final md()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/qk;->jy:Z

    return v0
.end method

.method public final me()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qk;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final mf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qk;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/qk;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/qk;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "generation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/qk;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
