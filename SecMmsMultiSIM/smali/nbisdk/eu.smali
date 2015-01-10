.class public final Lnbisdk/eu;
.super Ljava/lang/Object;


# static fields
.field private static ia:Lnbisdk/za;


# instance fields
.field private M:Ljava/lang/String;

.field private X:[B

.field private aN:Ljava/lang/String;

.field private bE:I

.field private bj:I

.field private cB:I

.field private cU:I

.field private ch:Ljava/lang/String;

.field private cj:Ljava/lang/String;

.field private cl:Ljava/lang/String;

.field private hR:Ljava/lang/String;

.field private hS:Ljava/lang/String;

.field private hT:F

.field private hU:Z

.field private hV:Lnbisdk/cr;

.field private hW:Lnbisdk/qk;

.field private hX:I

.field private hY:Ljava/lang/String;

.field private hZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnbisdk/za;->pg()Lnbisdk/za;

    move-result-object v0

    sput-object v0, Lnbisdk/eu;->ia:Lnbisdk/za;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;FILjava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lnbisdk/eu;-><init>(IIILjava/lang/String;FILjava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;FILjava/lang/String;Ljava/lang/String;[BZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnbisdk/eu;->cl:Ljava/lang/String;

    const-string v0, "en-us"

    iput-object v0, p0, Lnbisdk/eu;->hR:Ljava/lang/String;

    const-string v0, "png"

    iput-object v0, p0, Lnbisdk/eu;->aN:Ljava/lang/String;

    iput-boolean v2, p0, Lnbisdk/eu;->hZ:Z

    if-eqz p4, :cond_0

    if-eqz p7, :cond_0

    if-nez p8, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "png"

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jpg"

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "gif"

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "96"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "192"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid resolution"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lnbisdk/eu;->bE:I

    iput p2, p0, Lnbisdk/eu;->cU:I

    iput p3, p0, Lnbisdk/eu;->bj:I

    iput-object p4, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    iput p5, p0, Lnbisdk/eu;->hT:F

    iput p6, p0, Lnbisdk/eu;->cB:I

    iput-object p7, p0, Lnbisdk/eu;->cj:Ljava/lang/String;

    iput-object p8, p0, Lnbisdk/eu;->aN:Ljava/lang/String;

    iput-object p9, p0, Lnbisdk/eu;->X:[B

    iput-boolean p10, p0, Lnbisdk/eu;->hU:Z

    iput-object v1, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    iput v2, p0, Lnbisdk/eu;->hX:I

    iput-object v1, p0, Lnbisdk/eu;->hY:Ljava/lang/String;

    return-void
.end method

.method public static Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "auto_pin"

    aput-object v2, v3, v0

    const/4 v2, 0x1

    const-string v4, "custom_base_map"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "custom_overlay_map"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "base_map"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "route"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "satellite"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "hybrid"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "traffic"

    aput-object v4, v3, v2

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_2

    aget-object v2, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static fy()V
    .locals 1

    sget-object v0, Lnbisdk/eu;->ia:Lnbisdk/za;

    invoke-virtual {v0}, Lnbisdk/za;->R()V

    return-void
.end method


# virtual methods
.method public final X(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/eu;->hS:Ljava/lang/String;

    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/eu;->hY:Ljava/lang/String;

    return-void
.end method

.method public final a(Lnbisdk/cr;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/eu;->hV:Lnbisdk/cr;

    return-void
.end method

.method public final aS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->hR:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lnbisdk/qk;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    return-void
.end method

.method public final dI()Lnbisdk/qk;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lnbisdk/eu;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lnbisdk/eu;

    iget v2, p0, Lnbisdk/eu;->bE:I

    iget v3, p1, Lnbisdk/eu;->bE:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lnbisdk/eu;->cU:I

    iget v3, p1, Lnbisdk/eu;->cU:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lnbisdk/eu;->bj:I

    iget v3, p1, Lnbisdk/eu;->bj:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    iget-object v3, p1, Lnbisdk/eu;->ch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lnbisdk/eu;->cB:I

    invoke-virtual {p1}, Lnbisdk/eu;->getSize()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lnbisdk/eu;->cj:Ljava/lang/String;

    iget-object v3, p1, Lnbisdk/eu;->cj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnbisdk/eu;->aN:Ljava/lang/String;

    iget-object v3, p1, Lnbisdk/eu;->aN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnbisdk/eu;->hV:Lnbisdk/cr;

    iget-object v3, p1, Lnbisdk/eu;->hV:Lnbisdk/cr;

    if-ne v2, v3, :cond_4

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    invoke-virtual {v0}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lnbisdk/eu;->hW:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final fk()I
    .locals 1

    iget v0, p0, Lnbisdk/eu;->bj:I

    return v0
.end method

.method public final fl()F
    .locals 1

    iget v0, p0, Lnbisdk/eu;->hT:F

    return v0
.end method

.method public final fm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->cj:Ljava/lang/String;

    return-object v0
.end method

.method public final fn()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->X:[B

    return-object v0
.end method

.method public final fo()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/eu;->hU:Z

    return v0
.end method

.method public final fp()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final fq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->hS:Ljava/lang/String;

    return-object v0
.end method

.method public final fr()Lnbisdk/cr;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->hV:Lnbisdk/cr;

    return-object v0
.end method

.method public final fs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->hY:Ljava/lang/String;

    return-object v0
.end method

.method public final ft()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/eu;->hZ:Z

    return-void
.end method

.method public final fu()I
    .locals 1

    iget v0, p0, Lnbisdk/eu;->hX:I

    return v0
.end method

.method public final fv()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final fw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final fx()Ljava/lang/String;
    .locals 10

    const/4 v1, 0x1

    iget-object v0, p0, Lnbisdk/eu;->M:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    sget-object v2, Lnbisdk/eu;->ia:Lnbisdk/za;

    iget-object v3, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lnbisdk/qk;->mf()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "$q"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    const-string v4, "$q"

    iget v5, p0, Lnbisdk/eu;->bE:I

    iget v6, p0, Lnbisdk/eu;->cU:I

    iget v0, p0, Lnbisdk/eu;->bj:I

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v0

    :goto_0
    if-lez v2, :cond_2

    const/4 v0, 0x0

    add-int/lit8 v8, v2, -0x1

    shl-int v8, v1, v8

    and-int v9, v5, v8

    if-eqz v9, :cond_0

    move v0, v1

    :cond_0
    and-int/2addr v8, v6

    if-eqz v8, :cond_1

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lnbisdk/ju;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "$language"

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->nb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ju;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    const-string v2, "route"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnbisdk/eu;->X:[B

    if-eqz v1, :cond_3

    const-string v1, "$rid1"

    iget-object v2, p0, Lnbisdk/eu;->X:[B

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ju;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$rc1"

    iget-object v2, p0, Lnbisdk/eu;->hS:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnbisdk/ju;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lnbisdk/eu;->bE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/eu;->cU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/eu;->bj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/eu;->cj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lnbisdk/eu;->cB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/eu;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    if-eqz v1, :cond_4

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    const-string v2, "route"

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lnbisdk/eu;->X:[B

    if-eqz v1, :cond_5

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnbisdk/eu;->X:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lnbisdk/eu;->M:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lnbisdk/eu;->M:Ljava/lang/String;

    return-object v0

    :cond_8
    const-string v0, "$x"

    iget v1, p0, Lnbisdk/eu;->bE:I

    invoke-static {v3, v0, v1}, Lnbisdk/ju;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$y"

    iget v2, p0, Lnbisdk/eu;->cU:I

    invoke-static {v0, v1, v2}, Lnbisdk/ju;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$z"

    iget v2, p0, Lnbisdk/eu;->bj:I

    invoke-static {v0, v1, v2}, Lnbisdk/ju;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final fz()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lnbisdk/eu;->bj:I

    move v2, v0

    :goto_0
    if-lez v2, :cond_2

    const/4 v0, 0x0

    add-int/lit8 v4, v2, -0x1

    shl-int v4, v1, v4

    iget v5, p0, Lnbisdk/eu;->bE:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    iget v5, p0, Lnbisdk/eu;->cU:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->aN:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-boolean v0, p0, Lnbisdk/eu;->hZ:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnbisdk/eu;->cB:I

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    return-object v0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Lnbisdk/eu;->bE:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Lnbisdk/eu;->cU:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnbisdk/eu;->bj:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbisdk/eu;->bE:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbisdk/eu;->cU:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnbisdk/eu;->cB:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnbisdk/eu;->ch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnbisdk/eu;->cj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnbisdk/eu;->aN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnbisdk/eu;->hW:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/eu;->hR:Ljava/lang/String;

    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lnbisdk/eu;->hX:I

    return-void
.end method
