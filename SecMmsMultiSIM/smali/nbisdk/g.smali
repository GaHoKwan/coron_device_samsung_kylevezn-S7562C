.class public Lnbisdk/g;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lnbisdk/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/g;->O:Z

    iput-object p1, p0, Lnbisdk/g;->N:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/g;->L:Ljava/lang/String;

    return-void
.end method

.method public static a(Lnbisdk/ql;)Lnbisdk/qc;
    .locals 3

    const-string v0, "code"

    invoke-static {p0, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnbisdk/qc;

    invoke-direct {v2, v0, v1}, Lnbisdk/qc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static a(Lnbisdk/qc;)Lnbisdk/ze;
    .locals 3

    new-instance v0, Lnbisdk/ze;

    const-string v1, "category"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {p0}, Lnbisdk/qc;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p0}, Lnbisdk/qc;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/g;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/g;->P:[B

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/g;->N:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/g;->O:Z

    return v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/g;->P:[B

    return-void
.end method
