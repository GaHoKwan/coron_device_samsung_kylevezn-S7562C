.class public final Lnbisdk/jx;
.super Ljava/lang/Object;


# instance fields
.field private bx:I

.field private px:Lnbisdk/nu;

.field private py:Lnbisdk/fz;


# direct methods
.method private constructor <init>(Lnbisdk/nu;Lnbisdk/fz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    iput-object p2, p0, Lnbisdk/jx;->py:Lnbisdk/fz;

    invoke-virtual {p1}, Lnbisdk/nu;->size()I

    move-result v0

    iput v0, p0, Lnbisdk/jx;->bx:I

    return-void
.end method

.method public static a(Ljava/util/Vector;Lnbisdk/fz;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lnbisdk/jx;

    new-instance v0, Lnbisdk/nu;

    invoke-direct {v0, p0}, Lnbisdk/nu;-><init>(Ljava/util/Vector;)V

    invoke-direct {v1, v0, p1}, Lnbisdk/jx;-><init>(Lnbisdk/nu;Lnbisdk/fz;)V

    iget v0, v1, Lnbisdk/jx;->bx:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {v1, v0}, Lnbisdk/jx;->k(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, v1, Lnbisdk/jx;->bx:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget v0, v1, Lnbisdk/jx;->bx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lnbisdk/jx;->bx:I

    iget v0, v1, Lnbisdk/jx;->bx:I

    invoke-direct {v1, v3, v0}, Lnbisdk/jx;->k(II)V

    invoke-direct {v1, v3}, Lnbisdk/jx;->k(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private k(I)V
    .locals 5

    const/4 v4, 0x1

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lnbisdk/jx;->bx:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lnbisdk/jx;->bx:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lnbisdk/jx;->py:Lnbisdk/fz;

    iget-object v2, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    invoke-virtual {v3, v0}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnbisdk/fz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lnbisdk/jx;->py:Lnbisdk/fz;

    iget-object v2, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    invoke-virtual {v2, p1}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    invoke-virtual {v3, v1}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lnbisdk/fz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Lnbisdk/jx;->k(II)V

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private k(II)V
    .locals 3

    iget-object v0, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    invoke-virtual {v0, p1}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    iget-object v2, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    invoke-virtual {v2, p2}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lnbisdk/nu;->a(Ljava/lang/Object;I)V

    iget-object v1, p0, Lnbisdk/jx;->px:Lnbisdk/nu;

    invoke-virtual {v1, v0, p2}, Lnbisdk/nu;->a(Ljava/lang/Object;I)V

    return-void
.end method
