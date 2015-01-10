.class public final Lnbisdk/vi;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private ce:Ljava/lang/String;

.field private cf:Ljava/lang/String;

.field private cg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnbisdk/ql;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vi;->L:Ljava/lang/String;

    const-string v0, "portrait-id"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "type"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vi;->ce:Ljava/lang/String;

    const-string v0, "dataset-id"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vi;->cf:Ljava/lang/String;

    const-string v0, "version"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/vi;->cg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vi;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public final nR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vi;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final nS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vi;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public final nT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/vi;->cg:Ljava/lang/String;

    return-object v0
.end method
