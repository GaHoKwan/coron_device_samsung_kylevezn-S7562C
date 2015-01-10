.class public Lnbisdk/fk;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private jc:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/fk;->ax:Ljava/lang/String;

    iput-object p2, p0, Lnbisdk/fk;->L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/fk;->jc:[B

    return-void
.end method

.method public static a(Lcom/nbi/common/NBIContext;Ljava/lang/String;)[Lnbisdk/lm;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directions-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".tps"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "images.tps"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "images.tps"

    aput-object v3, v2, v0

    array-length v0, v2

    new-array v3, v0, [Lnbisdk/vd;

    array-length v0, v2

    new-array v4, v0, [Lnbisdk/dm;

    move v0, v1

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    new-instance v5, Lnbisdk/vd;

    const-string v6, "data.tpl"

    aget-object v7, v2, v0

    invoke-direct {v5, p0, v6, v7}, Lnbisdk/vd;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v0

    new-instance v5, Lnbisdk/dm;

    aget-object v6, v3, v0

    aget-object v7, v3, v0

    invoke-virtual {v7}, Lnbisdk/vd;->nO()Ljava/io/InputStream;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v8}, Lnbisdk/vd;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lnbisdk/dm;-><init>(Lnbisdk/al;Ljava/io/InputStream;Ljava/lang/String;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    new-instance v2, Lnbisdk/bm;

    invoke-direct {v2, v0}, Lnbisdk/bm;-><init>(Lcom/navbuilder/nb/e;)V

    invoke-virtual {v2, v4}, Lnbisdk/bm;->a([Lnbisdk/dm;)[Lnbisdk/lm;

    move-result-object v0

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_1

    aget-object v2, v3, v1

    invoke-virtual {v2}, Lnbisdk/vd;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public fZ()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/fk;->ax:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ga()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/fk;->jc:[B

    return-object v0
.end method

.method public gb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/fk;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public gc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/fk;->L:Ljava/lang/String;

    return-object v0
.end method
