.class public final Lnbisdk/tu;
.super Ljava/lang/Object;


# instance fields
.field private yM:Lnbisdk/yn;

.field private yN:Lnbisdk/xh;

.field private yO:Lnbisdk/zg;

.field private yP:Lnbisdk/qj;


# direct methods
.method public constructor <init>(Lnbisdk/yn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/tu;->yM:Lnbisdk/yn;

    new-instance v0, Lnbisdk/xh;

    invoke-direct {v0}, Lnbisdk/xh;-><init>()V

    iput-object v0, p0, Lnbisdk/tu;->yN:Lnbisdk/xh;

    new-instance v0, Lnbisdk/zg;

    invoke-direct {v0}, Lnbisdk/zg;-><init>()V

    iput-object v0, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    iget-object v0, p0, Lnbisdk/tu;->yM:Lnbisdk/yn;

    const-string v1, "obsecurity"

    invoke-virtual {v0, v1}, Lnbisdk/yn;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/wu;

    invoke-direct {v0}, Lnbisdk/wu;-><init>()V

    iput-object v0, p0, Lnbisdk/tu;->yP:Lnbisdk/qj;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lnbisdk/qj;

    invoke-direct {v0}, Lnbisdk/qj;-><init>()V

    iput-object v0, p0, Lnbisdk/tu;->yP:Lnbisdk/qj;

    goto :goto_0
.end method

.method private a(Lnbisdk/ql;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/tu;->yM:Lnbisdk/yn;

    invoke-virtual {v0, p1}, Lnbisdk/yn;->x(Lnbisdk/ql;)Lnbisdk/yv;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Lnbisdk/wh;

    invoke-direct {v0, p1}, Lnbisdk/wh;-><init>(Lnbisdk/ql;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lnbisdk/tu;->yN:Lnbisdk/xh;

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, p2, v0}, Lnbisdk/xh;->m(ZZ)V

    iget-object v0, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    invoke-virtual {v0, v3}, Lnbisdk/zg;->a(Lnbisdk/yv;)V

    iget-object v0, v3, Lnbisdk/yv;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lnbisdk/wh;

    invoke-direct {v0, v3}, Lnbisdk/wh;-><init>(Lnbisdk/yv;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lnbisdk/tu;->yP:Lnbisdk/qj;

    invoke-virtual {v5, v0}, Lnbisdk/qj;->n([B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_3
    invoke-direct {p0, v0, v3}, Lnbisdk/tu;->a(Lnbisdk/ql;Z)V

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    return-void
.end method


# virtual methods
.method public final P()V
    .locals 1

    iget-object v0, p0, Lnbisdk/tu;->yN:Lnbisdk/xh;

    invoke-virtual {v0}, Lnbisdk/wo;->b()V

    iget-object v0, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    invoke-virtual {v0}, Lnbisdk/wo;->b()V

    iget-object v0, p0, Lnbisdk/tu;->yP:Lnbisdk/qj;

    invoke-virtual {v0}, Lnbisdk/wo;->b()V

    return-void
.end method

.method public final S()I
    .locals 4

    iget-object v0, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    iget-wide v0, v0, Lnbisdk/zg;->aG:J

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lnbisdk/tu;->yN:Lnbisdk/xh;

    invoke-virtual {v1}, Lnbisdk/wo;->S()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    invoke-virtual {v1}, Lnbisdk/wo;->S()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/tu;->yP:Lnbisdk/qj;

    invoke-virtual {v1}, Lnbisdk/wo;->S()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    iget-wide v0, v0, Lnbisdk/zg;->aG:J

    invoke-static {v0, v1}, Lnbisdk/jd;->h(J)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public final b(Lnbisdk/ql;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnbisdk/tu;->a(Lnbisdk/ql;Z)V

    return-void
.end method

.method public final e([BI)V
    .locals 3

    new-instance v0, Lnbisdk/xs;

    invoke-direct {v0, p1, p2}, Lnbisdk/xs;-><init>([BI)V

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Lnbisdk/tu;->S()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    iget-wide v1, v1, Lnbisdk/zg;->aG:J

    invoke-static {v1, v2}, Lnbisdk/jd;->h(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/xs;->n([B)V

    iget-object v1, p0, Lnbisdk/tu;->yN:Lnbisdk/xh;

    invoke-virtual {v1}, Lnbisdk/wo;->ot()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/xs;->a(Ljava/io/ByteArrayOutputStream;)V

    iget-object v1, p0, Lnbisdk/tu;->yO:Lnbisdk/zg;

    invoke-virtual {v1}, Lnbisdk/wo;->ot()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/xs;->a(Ljava/io/ByteArrayOutputStream;)V

    iget-object v1, p0, Lnbisdk/tu;->yP:Lnbisdk/qj;

    invoke-virtual {v1}, Lnbisdk/wo;->ot()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/xs;->a(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
