.class public final Lnbisdk/yr;
.super Ljava/lang/Object;


# instance fields
.field private Ex:Lnbisdk/nu;

.field private Ey:Lnbisdk/fz;


# direct methods
.method private constructor <init>(Lnbisdk/nu;Lnbisdk/fz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    iput-object p2, p0, Lnbisdk/yr;->Ey:Lnbisdk/fz;

    return-void
.end method

.method public static a(Ljava/util/Vector;Lnbisdk/fz;)V
    .locals 3

    new-instance v0, Lnbisdk/yr;

    new-instance v1, Lnbisdk/nu;

    invoke-direct {v1, p0}, Lnbisdk/nu;-><init>(Ljava/util/Vector;)V

    invoke-direct {v0, v1, p1}, Lnbisdk/yr;-><init>(Lnbisdk/nu;Lnbisdk/fz;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lnbisdk/yr;->k(II)V

    return-void
.end method

.method private k(II)V
    .locals 9

    const/4 v0, 0x0

    if-ge p1, p2, :cond_2

    add-int v1, p1, p2

    div-int/lit8 v6, v1, 0x2

    invoke-direct {p0, p1, v6}, Lnbisdk/yr;->k(II)V

    add-int/lit8 v1, v6, 0x1

    invoke-direct {p0, v1, p2}, Lnbisdk/yr;->k(II)V

    add-int/lit8 v3, v6, 0x1

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    move v1, v0

    move v2, p1

    :goto_0
    if-gt v2, v6, :cond_4

    if-gt v3, p2, :cond_4

    iget-object v4, p0, Lnbisdk/yr;->Ey:Lnbisdk/fz;

    iget-object v5, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    invoke-virtual {v5, v2}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    invoke-virtual {v8, v3}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Lnbisdk/fz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v4, v1, 0x1

    iget-object v8, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v8, v2}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v7, v1

    move v1, v4

    move v2, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    iget-object v8, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v8, v3}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v1

    move v1, v4

    move v3, v5

    goto :goto_0

    :goto_1
    if-gt v4, p2, :cond_3

    add-int/lit8 v3, v1, 0x1

    iget-object v8, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v8, v4}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v1

    move v1, v3

    move v4, v5

    goto :goto_1

    :goto_2
    if-gt v3, v6, :cond_1

    add-int/lit8 v2, v1, 0x1

    iget-object v5, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5, v3}, Lnbisdk/nu;->aW(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v1

    move v1, v2

    move v3, v4

    goto :goto_2

    :cond_1
    :goto_3
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lnbisdk/yr;->Ex:Lnbisdk/nu;

    aget-object v2, v7, v0

    add-int v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lnbisdk/nu;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_1
.end method
