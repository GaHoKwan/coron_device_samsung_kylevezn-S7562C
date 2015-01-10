.class public Lnbisdk/hf;
.super Ljava/lang/Object;


# instance fields
.field private dW:I

.field private lU:I

.field private lV:I

.field private lW:I

.field private lX:I

.field private lY:I

.field private lZ:I

.field private ma:I

.field private mb:Z

.field private mc:Ljava/lang/String;

.field private md:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnbisdk/iy;",
            ">;"
        }
    .end annotation
.end field

.field private me:Z

.field private mf:Lnbisdk/au;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/au;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/hf;->me:Z

    invoke-virtual {p0}, Lnbisdk/hf;->hj()V

    iput-object p1, p0, Lnbisdk/hf;->mf:Lnbisdk/au;

    return-void
.end method

.method public static a(Lnbisdk/ze;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    int-to-byte v2, p2

    aput-byte v2, v1, v0

    ushr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    return-void
.end method

.method public static b(IIII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lnbisdk/ql;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0, p1}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v1, Lnbisdk/xe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "int attribute has incorrect length, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/xe;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lnbisdk/hf;->h([B)I

    move-result v0

    return v0
.end method

.method private static h([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public final A(Z)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/hf;->mf:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jM()Lnbisdk/hu;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    instance-of v2, v0, Lnbisdk/ct;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    instance-of v2, v0, Lnbisdk/gq;

    if-nez v2, :cond_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, v0, Lnbisdk/gq;

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v0}, Lnbisdk/au$d;->cy()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnbisdk/hf;->mf:Lnbisdk/au;

    invoke-virtual {v2}, Lnbisdk/au;->jF()Lnbisdk/ct;

    move-result-object v2

    if-ne v2, v0, :cond_0

    :cond_3
    invoke-virtual {v0}, Lnbisdk/au$d;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/hf;->mb:Z

    return-void
.end method

.method public final ap(I)V
    .locals 0

    iput p1, p0, Lnbisdk/hf;->lY:I

    return-void
.end method

.method public final aq(I)V
    .locals 0

    iput p1, p0, Lnbisdk/hf;->lZ:I

    return-void
.end method

.method public final b(Lnbisdk/ct;Lnbisdk/iy;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/hf;->me:Z

    return-void
.end method

.method public final b(Lnbisdk/hf;)V
    .locals 1

    iget-object v0, p1, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    iget-boolean v0, p1, Lnbisdk/hf;->me:Z

    iput-boolean v0, p0, Lnbisdk/hf;->me:Z

    return-void
.end method

.method public final c(Lnbisdk/ct;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lcom/nbi/map/data/Rectangle;)Z
    .locals 4

    iget v0, p0, Lnbisdk/hf;->lV:I

    iget v1, p0, Lnbisdk/hf;->dW:I

    mul-int/2addr v0, v1

    iget v1, p0, Lnbisdk/hf;->lW:I

    iget v2, p0, Lnbisdk/hf;->dW:I

    mul-int/2addr v1, v2

    iget v2, p0, Lnbisdk/hf;->dW:I

    iget v3, p0, Lnbisdk/hf;->dW:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/nbi/map/data/Rectangle;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lnbisdk/hf;->lV:I

    iget v1, p0, Lnbisdk/hf;->dW:I

    mul-int/2addr v0, v1

    iget v1, p0, Lnbisdk/hf;->lW:I

    iget v2, p0, Lnbisdk/hf;->dW:I

    mul-int/2addr v1, v2

    iget v2, p0, Lnbisdk/hf;->dW:I

    iget v3, p0, Lnbisdk/hf;->dW:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/nbi/map/data/Rectangle;->contains(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cE()I
    .locals 1

    iget v0, p0, Lnbisdk/hf;->dW:I

    return v0
.end method

.method public final d(Lnbisdk/ct;)Lnbisdk/iy;
    .locals 2

    iget-object v0, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/iy;

    return-object v0
.end method

.method public final e(Lnbisdk/ct;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/iy;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lnbisdk/ct;->do()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnbisdk/au$d;->jq()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lnbisdk/hf;->ma:I

    return v0
.end method

.method public final hj()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-boolean v1, p0, Lnbisdk/hf;->mb:Z

    iput v0, p0, Lnbisdk/hf;->lX:I

    iput v0, p0, Lnbisdk/hf;->lW:I

    iput v0, p0, Lnbisdk/hf;->lV:I

    iput v0, p0, Lnbisdk/hf;->lZ:I

    iput v0, p0, Lnbisdk/hf;->lY:I

    iput v0, p0, Lnbisdk/hf;->dW:I

    iput v0, p0, Lnbisdk/hf;->lU:I

    iput-boolean v1, p0, Lnbisdk/hf;->me:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    return-void
.end method

.method public final hk()I
    .locals 1

    iget v0, p0, Lnbisdk/hf;->lV:I

    return v0
.end method

.method public final hl()I
    .locals 1

    iget v0, p0, Lnbisdk/hf;->lW:I

    return v0
.end method

.method public final hm()I
    .locals 1

    iget v0, p0, Lnbisdk/hf;->lX:I

    return v0
.end method

.method public final hn()I
    .locals 1

    iget v0, p0, Lnbisdk/hf;->lY:I

    return v0
.end method

.method public final ho()I
    .locals 1

    iget v0, p0, Lnbisdk/hf;->lZ:I

    return v0
.end method

.method public final hp()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lnbisdk/hf;->lV:I

    iget v1, p0, Lnbisdk/hf;->lW:I

    iget v2, p0, Lnbisdk/hf;->lX:I

    iget v3, p0, Lnbisdk/hf;->dW:I

    invoke-static {v0, v1, v2, v3}, Lnbisdk/hf;->b(IIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    return-object v0
.end method

.method public final hq()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    return-void
.end method

.method public final hr()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lnbisdk/hf;->me:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lnbisdk/hf;->md:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hs()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/hf;->mb:Z

    return v0
.end method

.method public final q(I)V
    .locals 1

    iput p1, p0, Lnbisdk/hf;->dW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lnbisdk/hf;->lU:I

    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    iput p1, p0, Lnbisdk/hf;->ma:I

    return-void
.end method

.method public final setTx(I)V
    .locals 1

    iput p1, p0, Lnbisdk/hf;->lV:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    return-void
.end method

.method public final setTy(I)V
    .locals 1

    iput p1, p0, Lnbisdk/hf;->lW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    return-void
.end method

.method public final setTz(I)V
    .locals 1

    iput p1, p0, Lnbisdk/hf;->lX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/hf;->mc:Ljava/lang/String;

    return-void
.end method

.method public final z(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/hf;->me:Z

    return-void
.end method
